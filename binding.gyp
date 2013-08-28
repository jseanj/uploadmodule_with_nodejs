{
  "targets": [
    {
      "target_name": "modulename",
      "sources": [ "modulename.cpp" ],
      'cflags': [ "-g", "-fexceptions", '-frtti' ],
	    "include_dirs":[ "/data/jin.shang/nodejs/02_functions/async_upload_release/include",
	      "/usr/local/include/ImageMagick" ],
      'libraries': ['-lboost_system', '-lboost_thread', '-lboost_regex', '-lfcgi',
                      '<!@(curl-config --libs)',
                      '-lMagick++', '-lMagickWand', '-lMagickCore', '-ljpeg', 
                      '-lbz2', '-lz', '-lexiv2', '-lm', '-lpthread', '-lmemcached', '-lmemcachedutil']

    }
  ]
}
