cmd_Release/obj.target/modulename.node := flock ./Release/linker.lock g++ -shared -pthread -rdynamic -m64  "-lboost_system" "-lboost_thread" "-lboost_regex"  -Wl,-soname=modulename.node -o Release/obj.target/modulename.node -Wl,--start-group Release/obj.target/modulename/modulename.o -Wl,--end-group -lboost_system -lboost_thread -lboost_regex -lfcgi -L/usr/local/lib -lcurl -L/usr/kerberos/lib64 -lidn -lssl -lcrypto -lldap -lrt -ldl -lz -lMagick++ -lMagickWand -lMagickCore -ljpeg -lbz2 -lexiv2 -lm -lpthread -lmemcached -lmemcachedutil