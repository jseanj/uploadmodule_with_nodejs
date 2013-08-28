#include <node.h>
#include <node_buffer.h>

// C standard library
#include <cstdlib>
#include <ctime>
#include <string.h>
#include "hello.h"

#include <vector>
#include <string>
#include <sstream>

#include <iostream>

#include "structs.h"
#include "action_upload.h"
#include "base3/logging.h"
#include "base3/sysloging.h"
#include "base3/ptime.h"
#include "blockmanage.h"
#include "tickmanager.h"
#include "cross_domain.h"
#include "arch_diff/site_xiaonei.h"

using namespace upload;

using namespace v8;
std::string xlarge_data;
std::string large_data;
std::string main_data;
std::string head_data;
std::string tiny_data;

std::string xlarge_path;
std::string large_path;
std::string main_path;
std::string head_path;
std::string tiny_path;

std::string pic_dir;

Handle<Value> Init(const Arguments& args) {

  HandleScope scope;
  struct timeval tv;
  gettimeofday(&tv, NULL);


  //初始化 
  int re = g_runtime_config.Load();
  logging::opensyslog("upload.async");
  gDiskCache.Init("conf/diskcache.conf");
  upload::g_blockmanager.Init("conf/blockmemcache.conf");
  upload::g_tickmanager.Init("conf/mc.conf");
  RefererMgr::Instance()->Init("conf/referer.conf");
  xce::Init();
	
  struct timeval tv_init;
  gettimeofday(&tv_init, NULL);

  LOG(INFO) << "------------------------------------------init: " << (double)((tv_init.tv_sec * 1000000 + tv_init.tv_usec) - (tv.tv_sec * 1000000 + tv.tv_usec))/1000;

    return scope.Close(String::New(""));
 
}
// This function returns a JavaScript number that is either 0 or 1.
Handle<Value> Process(const Arguments& args) {
    // At the top of every function that uses anything about v8, include a
    // definition like this. It ensures that any v8 handles you create in that
    // function are properly cleaned up. If you see memory rising in your
    // application, chances are that a scope isn't properly cleaned up.
    HandleScope scope;
struct timeval tv2;
  gettimeofday(&tv2, NULL);



    //std::string str = getstr();

	Local<Value> arg = args[0];
	if(!node::Buffer::HasInstance(arg)) { //判断是否是Buffer对象
		ThrowException(v8::Exception::TypeError(v8::String::New("Bad argument!")));  //抛出js异常 
	}
  size_t size = node::Buffer::Length(arg->ToObject());  //获取Buffer长度
	char *buf = node::Buffer::Data(arg->ToObject());      //获取Buffer内容
  //将js传过来的数据放到req中
  upload::ProccesserRequest::UploadFile file;
  file.filename = "test.jpg";
  file.data = std::string(buf, size);

  v8::String::Utf8Value pagetype(args[1]->ToString());
  v8::String::Utf8Value hostid(args[2]->ToString());
  v8::String::Utf8Value uploadid(args[3]->ToString());
  char *c_pagetype;
  char *c_hostid;
  char *c_uploadid;
  c_pagetype = *pagetype;
  c_hostid = *hostid;
  c_uploadid = *uploadid;
  //LOG(INFO) << std::string(c_pagetype, pagetype.length());
  //LOG(INFO) << std::string(c_hostid, hostid.length());
  //LOG(INFO) << std::string(c_uploadid, uploadid.length());

  ProccesserResponse resp;
  ProccesserRequest req;
  req._query["pagetype"] = std::string(c_pagetype, pagetype.length());
  req._query["hostid"] = std::string(c_hostid, hostid.length());
  req._query["uploadid"] = std::string(c_uploadid, uploadid.length());
  


  struct timeval tv_pass;
  gettimeofday(&tv_pass, NULL);


  LOG(INFO) << "------------------------------------------pass: " << (double)((tv_pass.tv_sec * 1000000 + tv_pass.tv_usec) - (tv2.tv_sec * 1000000 + tv2.tv_usec))/1000;


 struct timeval tv3;
  gettimeofday(&tv3, NULL);




  req._fileArray.push_back(file);
  //开始处理
  UploadAction uploadAction;
	
  struct timeval tve;
  gettimeofday(&tve, NULL);

  LOG(INFO) << "------------------------------------------time: " << (double)((tve.tv_sec * 1000000 + tve.tv_usec) - (tv3.tv_sec * 1000000 + tv3.tv_usec))/1000;



PTIME(pt1, "uploadAction Process", true, 5);

 
  uploadAction.Process(req, resp);

   std::vector<upload::OutFile> files = resp._files;
  std::vector<upload::OutFile>::iterator iter_outfile;
    for(iter_outfile = files.begin(); iter_outfile != files.end(); iter_outfile++){
      std::vector<upload::OutImageUrl> images_out = iter_outfile->images_;
      std::vector<upload::OutImageUrl>::iterator iter_image;
      for(iter_image = images_out.begin(); iter_image != images_out.end(); iter_image++){

        if(iter_image->nameprefix_ == "xlarge") {
          xlarge_data = iter_image->data_;
          //xlarge_path = iter_image->url_.substr(26);
          xlarge_path = iter_image->url_;
        }
        if(iter_image->nameprefix_ == "large") {
          large_data = iter_image->data_;
          //large_path = iter_image->url_.substr(26);
          large_path = iter_image->url_;
        }
        if(iter_image->nameprefix_ == "main") {
          main_data = iter_image->data_;
          //main_path = iter_image->url_.substr(26);
          main_path = iter_image->url_;
          pic_dir = iter_image->url_.substr(0, 26);
        }
        if(iter_image->nameprefix_ == "head") {
          head_data = iter_image->data_;
          //head_path = iter_image->url_.substr(26);
          head_path = iter_image->url_;
        }
        if(iter_image->nameprefix_ == "tiny") {
          tiny_data = iter_image->data_;
          //tiny_path = iter_image->url_.substr(26);
          tiny_path = iter_image->url_;
        }
      }    
      //images.clear();
    }    
  
PTIME(pt2, "uploadAction Stop", true, 5);
  uploadAction.Stop();

	
	node::Buffer *slowBuffer = node::Buffer::New(size);
	memcpy(node::Buffer::Data(slowBuffer), buf, size);
	v8::Local<v8::Object> globalObj = v8::Context::GetCurrent()->Global();
	v8::Local<v8::Function> bufferConstructor = v8::Local<v8::Function>::Cast(globalObj->Get(v8::String::New("Buffer")));
	v8::Handle<v8::Value> constructorArgs[3] = { slowBuffer->handle_, v8::Integer::New(size), v8::Integer::New(0) };
	v8::Local<v8::Object> actualBuffer = bufferConstructor->NewInstance(3, constructorArgs);

PTIME(pt3, "scope Close", true, 5);
    // When returning a value from a function, make sure to wrap it in
    // scope.Close(). This ensures that the handle stays valid after the current
    // scope (declared with the previous statement) is cleaned up.
    return scope.Close(
        // Creating a new JavaScript integer is as simple as passing a C int
        // (technically a int32_t) to this function.
        //Integer::New(rand() % 2)
        //Integer::New(args.Length())
		actualBuffer
		//node::Buffer::New(String::New(buf, size))
		//String::New(buf, size)
    //node::Buffer::New(buf, size)
		//String::New(str.c_str())
    );
}

Handle<Value> Large(const Arguments& args) {
    HandleScope scope;
    if(large_data.empty()) return scope.Close(String::New(""));
	int length = large_data.length();
	node::Buffer *slowBuffer = node::Buffer::New(length);
	memcpy(node::Buffer::Data(slowBuffer), large_data.c_str(), length);
	v8::Local<v8::Object> globalObj = v8::Context::GetCurrent()->Global();
	v8::Local<v8::Function> bufferConstructor = v8::Local<v8::Function>::Cast(globalObj->Get(v8::String::New("Buffer")));
	v8::Handle<v8::Value> constructorArgs[3] = { slowBuffer->handle_, v8::Integer::New(length), v8::Integer::New(0) };
	v8::Local<v8::Object> actualBuffer = bufferConstructor->NewInstance(3, constructorArgs);
	return scope.Close(actualBuffer);

    //return scope.Close(node::Buffer::New(String::New(large_data.c_str(), large_data.length())));
}
Handle<Value> Xlarge(const Arguments& args) {
    HandleScope scope;
    if(xlarge_data.empty()) return scope.Close(String::New(""));
	int length = xlarge_data.length();
	node::Buffer *slowBuffer = node::Buffer::New(length);
	memcpy(node::Buffer::Data(slowBuffer), xlarge_data.c_str(), length);
	v8::Local<v8::Object> globalObj = v8::Context::GetCurrent()->Global();
	v8::Local<v8::Function> bufferConstructor = v8::Local<v8::Function>::Cast(globalObj->Get(v8::String::New("Buffer")));
	v8::Handle<v8::Value> constructorArgs[3] = { slowBuffer->handle_, v8::Integer::New(length), v8::Integer::New(0) };
	v8::Local<v8::Object> actualBuffer = bufferConstructor->NewInstance(3, constructorArgs);
	return scope.Close(actualBuffer);


}
Handle<Value> Head(const Arguments& args) {
    HandleScope scope;
    if(head_data.empty()) return scope.Close(String::New(""));
    //return scope.Close(String::New(head_data.c_str()));
	int length = head_data.length();
	node::Buffer *slowBuffer = node::Buffer::New(length);
	memcpy(node::Buffer::Data(slowBuffer), head_data.c_str(), length);
	v8::Local<v8::Object> globalObj = v8::Context::GetCurrent()->Global();
	v8::Local<v8::Function> bufferConstructor = v8::Local<v8::Function>::Cast(globalObj->Get(v8::String::New("Buffer")));
	v8::Handle<v8::Value> constructorArgs[3] = { slowBuffer->handle_, v8::Integer::New(length), v8::Integer::New(0) };
	v8::Local<v8::Object> actualBuffer = bufferConstructor->NewInstance(3, constructorArgs);
	return scope.Close(actualBuffer);


}
Handle<Value> Main(const Arguments& args) {
    HandleScope scope;
    if(main_data.empty()) return scope.Close(String::New(""));
    //return scope.Close(String::New(main_data.c_str()));
	int length = main_data.length();
	node::Buffer *slowBuffer = node::Buffer::New(length);
	memcpy(node::Buffer::Data(slowBuffer), main_data.c_str(), length);
	v8::Local<v8::Object> globalObj = v8::Context::GetCurrent()->Global();
	v8::Local<v8::Function> bufferConstructor = v8::Local<v8::Function>::Cast(globalObj->Get(v8::String::New("Buffer")));
	v8::Handle<v8::Value> constructorArgs[3] = { slowBuffer->handle_, v8::Integer::New(length), v8::Integer::New(0) };
	v8::Local<v8::Object> actualBuffer = bufferConstructor->NewInstance(3, constructorArgs);
	return scope.Close(actualBuffer);


}
Handle<Value> Tiny(const Arguments& args) {
    HandleScope scope;
    if(tiny_data.empty()) return scope.Close(String::New(""));

	int length = tiny_data.length();
	node::Buffer *slowBuffer = node::Buffer::New(length);
	memcpy(node::Buffer::Data(slowBuffer), tiny_data.c_str(), length);
	v8::Local<v8::Object> globalObj = v8::Context::GetCurrent()->Global();
	v8::Local<v8::Function> bufferConstructor = v8::Local<v8::Function>::Cast(globalObj->Get(v8::String::New("Buffer")));
	v8::Handle<v8::Value> constructorArgs[3] = { slowBuffer->handle_, v8::Integer::New(length), v8::Integer::New(0) };
	v8::Local<v8::Object> actualBuffer = bufferConstructor->NewInstance(3, constructorArgs);
	return scope.Close(actualBuffer);


}

Handle<Value> TinyPath(const Arguments& args) {
    HandleScope scope;
	return scope.Close(String::New(tiny_path.c_str()));
}
Handle<Value> LargePath(const Arguments& args) {
    HandleScope scope;
	return scope.Close(String::New(large_path.c_str()));
}
Handle<Value> XlargePath(const Arguments& args) {
    HandleScope scope;
	return scope.Close(String::New(xlarge_path.c_str()));
}
Handle<Value> HeadPath(const Arguments& args) {
    HandleScope scope;
	return scope.Close(String::New(head_path.c_str()));
}
Handle<Value> MainPath(const Arguments& args) {
    HandleScope scope;
	return scope.Close(String::New(main_path.c_str()));
}
Handle<Value> PicDir(const Arguments& args) {
    HandleScope scope;
	return scope.Close(String::New(pic_dir.c_str()));
}






void RegisterModule(Handle<Object> target) {
    srand(time(NULL));

    // target is the module object you see when require()ing the .node file.
    target->Set(String::NewSymbol("init"),FunctionTemplate::New(Init)->GetFunction());
    target->Set(String::NewSymbol("process"),FunctionTemplate::New(Process)->GetFunction());
    target->Set(String::NewSymbol("large"),FunctionTemplate::New(Large)->GetFunction());
    target->Set(String::NewSymbol("head"),FunctionTemplate::New(Head)->GetFunction());
    target->Set(String::NewSymbol("xlarge"),FunctionTemplate::New(Xlarge)->GetFunction());
    target->Set(String::NewSymbol("main"),FunctionTemplate::New(Main)->GetFunction());
    target->Set(String::NewSymbol("tiny"),FunctionTemplate::New(Tiny)->GetFunction());

    target->Set(String::NewSymbol("large_path"),FunctionTemplate::New(LargePath)->GetFunction());
    target->Set(String::NewSymbol("head_path"),FunctionTemplate::New(HeadPath)->GetFunction());
    target->Set(String::NewSymbol("xlarge_path"),FunctionTemplate::New(XlargePath)->GetFunction());
    target->Set(String::NewSymbol("main_path"),FunctionTemplate::New(MainPath)->GetFunction());
    target->Set(String::NewSymbol("tiny_path"),FunctionTemplate::New(TinyPath)->GetFunction());

    target->Set(String::NewSymbol("pic_dir"),FunctionTemplate::New(PicDir)->GetFunction());
}

NODE_MODULE(modulename, RegisterModule);
