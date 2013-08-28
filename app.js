/** 
 * * Module dependencies.
 * */
var express = require('express'),
	routes = require('./routes'), 
	user = require('./routes/user'), 
	http = require('http'),
	path = require('path');
	var fs = require('fs');
	var app = express();
  var log4js = require('log4js');

log4js.configure({
 appenders: [
   { type: 'console' },
   { type: 'file', filename: 'cheese.log', category: 'cheese' }
  ]
});

var logger = log4js.getLogger('cheese');
logger.setLevel('INFO');

app.configure(function() {
  app.use(log4js.connectLogger(logger, { level: log4js.levels.INFO }));
});

	var modulename = require('./build/Release/modulename');
	// all environments
	app.set('port', process.env.PORT || 3000);
	app.set('views', __dirname + '/views');
	app.set('view engine', 'ejs');
	app.use(express.favicon());
	app.use(express.logger('dev'));
	//app.use(express.bodyParser({uploadDir:'./uploads'}));
	app.use(express.bodyParser());
	app.use(express.methodOverride());
	app.use(app.router);
	app.use(express.static(path.join(__dirname, 'public')));
	// development only,
	if ('development' == app.get('env')) {  
		app.use(express.errorHandler());
	}
	app.get('/', routes.index);
	app.get('/users', user.list);
	app.get('/user/:id', function(req, res) {
		    res.send('user ' + req.params.id);
	});

  modulename.init();
function theEnd(res) {

  console.timeEnd('dump');
  console.timeEnd('all-time');
  res.send('File uploaded');
  logger.info(new Date().toLocaleString());
  var a = new Date();   
  var y = a.getYear()+"-";   
  var m = a.getMonth()+"-";   
  var d = a.getDay()+"-";   
  var h = a.getHours()+"-";   
  var x = a.getMinutes()+"-";   
  var s = a.getSeconds()+"-";   
  var ms=a.getMilliseconds();   
  logger.info("end: " + x + s + ms);
}

	app.post('/file-upload', function(req, res) {
  var a = new   Date();
  var x = a.getMinutes()+"-";
  var s = a.getSeconds()+"-";
  var ms = a.getMilliseconds();

var pagetype = req.query.pagetype;
var hostid = req.query.hostid;
var uploadid = req.query.uploadid;
var tick = req.query.tick;

logger.info("pagetype: " + pagetype);
  logger.info("start: " + x   +   s   +   ms);

  logger.info(new Date().toLocaleString());
    //console.time('process');
    console.time('all-time');
    	// get the temporary location of the file
		var tmp_path = req.files.picture.path;
    var count = 1;
		//var arr = new Array(tmp_path.substr(5),'jpg');
		fs.readFile(tmp_path, function(err, data) {
			if (err) {
				console.error(err);
			} else {
				//logger.info(data);
				//here is process
				var image_buf = new Buffer(data);
    console.time('process');
        modulename.process(image_buf, pagetype, hostid, uploadid);
        console.timeEnd('process');
        console.time('dump');
        var large_image = modulename.large();
        var xlarge_image = modulename.xlarge();
        var head_image = modulename.head();
        var main_image = modulename.main();
        var tiny_image = modulename.tiny();

    var large_base64Image = large_image.toString('base64');
    var large_decodedImage = new Buffer(large_base64Image, 'base64');
    var xlarge_base64Image = xlarge_image.toString('base64');
    var xlarge_decodedImage = new Buffer(xlarge_base64Image, 'base64');
    var head_base64Image = head_image.toString('base64');
    var head_decodedImage = new Buffer(head_base64Image, 'base64');
    var main_base64Image = main_image.toString('base64');
    var main_decodedImage = new Buffer(main_base64Image, 'base64');
    var tiny_base64Image = tiny_image.toString('base64');
    var tiny_decodedImage = new Buffer(tiny_base64Image, 'base64');


logger.info("hahah");
console.time("mkdir");
var dir = "/bigpool/" + modulename.pic_dir();
dir = path.normalize(dir);
var array = dir.split(path.sep);
for (var i = 0, cur; i < array.length; i++) {
  if(i === 0) {
    cur = array[i];
  } else {
    cur += (path.sep + array[i]);
  }
  try {
    fs.mkdirSync(cur, "0755");
  } catch(e) {}
}
console.timeEnd("mkdir");
        
        //var base64Image = new Buffer(data, 'binary').toString('base64');
        //var decodedImage = new Buffer(base64Image, 'base64').toString('binary');
    //测试
/**
    var base64Image = origin_image.toString('base64');
    var decodedImage = new Buffer(base64Image, 'base64');
        fs.writeFile('image_decoded.jpg', decodedImage, function(err) {});
**/
    //测试结束

        //logger.info(large_image);
fs.writeFile('/bigpool/' +modulename.large_path(), large_decodedImage, function (err) {
					if (err) return logger.info(err);
					logger.info('large is finished: ' + count);
          if (count == 5) {
            theEnd(res);
          } else
            count++;
				});
fs.writeFile('/bigpool/' + modulename.xlarge_path(), xlarge_decodedImage, function (err) {
					if (err) return logger.info(err);
					logger.info('xlarge is finished: ' + count);
					if (count == 5) {
            theEnd(res);
          } else
            count++;
				});
fs.writeFile('/bigpool/'+modulename.main_path(), main_decodedImage, function (err) {
					if (err) return logger.info(err);
					logger.info('main is finished: ' + count);
					if (count == 5) {
            theEnd(res);
          } else
            count++;
				});
fs.writeFile('/bigpool/' + modulename.head_path(), head_decodedImage, function (err) {
					if (err) return logger.info(err);
					logger.info('head is finished: ' + count);
					if (count == 5) {
            theEnd(res);
          } else
            count++;
				});
fs.writeFile('/bigpool/' + modulename.tiny_path(), tiny_decodedImage, function (err) {
					if (err) return logger.info(err);
					logger.info('tiny is finished: ' + count);
					if (count == 5) {
            theEnd(res);
          } else
            count++;
				});
				logger.info('write ing...');
			}
		});
		logger.info('read ing...');
/**
    	// set where the file should actually exists - in this case it is in the "images" directory
    	var target_path = './uploads' + req.files.picture.name;
    	// move the file from the temporary location to the intended location
    	fs.rename(tmp_path, target_path, function(err) {
        	if (err) 
				throw err;
        	// delete the temporary file, so that the explicitly set temporary upload dir does not get filled with unwanted files
        	fs.unlink(tmp_path, function() {
            	if (err) 
					throw err;
            	res.send('File uploaded to: ' + target_path + ' - ' + req.files.picture.size + ' bytes');
        	});
		});
**/
	});

  app.post('/upload', function(req, res){
    //接收前台POST过来的base64
    var imgData = req.body.imgData;
    //过滤data:URL
    //var base64Data = imgData.replace(/^data:image\/\w+;base64,/, "");
    var dataBuffer = new Buffer(imgData, 'base64').toString('binary');
    fs.writeFile("out.jpg", dataBuffer, function(err) {
        if(err){
          res.send(err);
        }else{
          res.send("保存成功！");
        }
    });
  }); 

	//app.post('/file-upload', function(req, res, next) {
	//	logger.info(req.body);
	//	logger.info(req.files);
	//});
	http.createServer(app).listen(app.get('port'), function(){  
		logger.info('Express server listening on port ' + app.get('port'));
	});
