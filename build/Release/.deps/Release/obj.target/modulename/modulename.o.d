cmd_Release/obj.target/modulename/modulename.o := g++ '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DBUILDING_NODE_EXTENSION' -I/root/.node-gyp/0.10.12/src -I/root/.node-gyp/0.10.12/deps/uv/include -I/root/.node-gyp/0.10.12/deps/v8/include -I/data/jin.shang/nodejs/02_functions/async_upload_release/include -I/usr/local/include/ImageMagick -fPIC -Wall -Wextra -Wno-unused-parameter -pthread -m64 -g -fexceptions -frtti -O2 -fno-strict-aliasing -fno-tree-vrp -fno-tree-sink -fno-rtti -fno-exceptions -MMD -MF ./Release/.deps/Release/obj.target/modulename/modulename.o.d.raw  "-fexceptions" "-frtti" -c -o Release/obj.target/modulename/modulename.o ../modulename.cpp
Release/obj.target/modulename/modulename.o: ../modulename.cpp \
  /root/.node-gyp/0.10.12/src/node.h \
  /root/.node-gyp/0.10.12/deps/uv/include/uv.h \
  /root/.node-gyp/0.10.12/deps/uv/include/uv-private/uv-unix.h \
  /root/.node-gyp/0.10.12/deps/uv/include/uv-private/ngx-queue.h \
  /root/.node-gyp/0.10.12/deps/uv/include/uv-private/uv-linux.h \
  /root/.node-gyp/0.10.12/deps/v8/include/v8.h \
  /root/.node-gyp/0.10.12/deps/v8/include/v8stdint.h \
  /root/.node-gyp/0.10.12/src/node_object_wrap.h \
  /root/.node-gyp/0.10.12/src/node.h \
  /root/.node-gyp/0.10.12/src/node_buffer.h ../hello.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/structs.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/action_upload.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/datadispense.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/runtimeconfig.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/upload/upload.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/upload/download.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/upload/bufferarray.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/structs.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/imagehandler.h \
  /usr/local/include/ImageMagick/Magick++.h \
  /usr/local/include/ImageMagick/Magick++/Include.h \
  /usr/local/include/ImageMagick/magick/magick-config.h \
  /usr/local/include/ImageMagick/magick/MagickCore.h \
  /usr/local/include/ImageMagick/magick/magick-config.h \
  /usr/local/include/ImageMagick/magick/method-attribute.h \
  /usr/local/include/ImageMagick/magick/magick-type.h \
  /usr/local/include/ImageMagick/magick/accelerate.h \
  /usr/local/include/ImageMagick/magick/morphology.h \
  /usr/local/include/ImageMagick/magick/geometry.h \
  /usr/local/include/ImageMagick/magick/animate.h \
  /usr/local/include/ImageMagick/magick/annotate.h \
  /usr/local/include/ImageMagick/magick/draw.h \
  /usr/local/include/ImageMagick/magick/image.h \
  /usr/local/include/ImageMagick/magick/color.h \
  /usr/local/include/ImageMagick/magick/pixel.h \
  /usr/local/include/ImageMagick/magick/colorspace.h \
  /usr/local/include/ImageMagick/magick/constitute.h \
  /usr/local/include/ImageMagick/magick/exception.h \
  /usr/local/include/ImageMagick/magick/semaphore.h \
  /usr/local/include/ImageMagick/magick/blob.h \
  /usr/local/include/ImageMagick/magick/stream.h \
  /usr/local/include/ImageMagick/magick/cache-view.h \
  /usr/local/include/ImageMagick/magick/composite.h \
  /usr/local/include/ImageMagick/magick/compress.h \
  /usr/local/include/ImageMagick/magick/effect.h \
  /usr/local/include/ImageMagick/magick/layer.h \
  /usr/local/include/ImageMagick/magick/locale_.h \
  /usr/local/include/ImageMagick/magick/hashmap.h \
  /usr/local/include/ImageMagick/magick/monitor.h \
  /usr/local/include/ImageMagick/magick/profile.h \
  /usr/local/include/ImageMagick/magick/string_.h \
  /usr/local/include/ImageMagick/magick/quantum.h \
  /usr/local/include/ImageMagick/magick/resample.h \
  /usr/local/include/ImageMagick/magick/cache-view.h \
  /usr/local/include/ImageMagick/magick/resize.h \
  /usr/local/include/ImageMagick/magick/timer.h \
  /usr/local/include/ImageMagick/magick/type.h \
  /usr/local/include/ImageMagick/magick/artifact.h \
  /usr/local/include/ImageMagick/magick/attribute.h \
  /usr/local/include/ImageMagick/magick/image.h \
  /usr/local/include/ImageMagick/magick/cache.h \
  /usr/local/include/ImageMagick/magick/cipher.h \
  /usr/local/include/ImageMagick/magick/client.h \
  /usr/local/include/ImageMagick/magick/coder.h \
  /usr/local/include/ImageMagick/magick/colormap.h \
  /usr/local/include/ImageMagick/magick/compare.h \
  /usr/local/include/ImageMagick/magick/configure.h \
  /usr/local/include/ImageMagick/magick/decorate.h \
  /usr/local/include/ImageMagick/magick/delegate.h \
  /usr/local/include/ImageMagick/magick/deprecate.h \
  /usr/local/include/ImageMagick/magick/quantize.h \
  /usr/local/include/ImageMagick/magick/registry.h \
  /usr/local/include/ImageMagick/magick/display.h \
  /usr/local/include/ImageMagick/magick/distort.h \
  /usr/local/include/ImageMagick/magick/enhance.h \
  /usr/local/include/ImageMagick/magick/feature.h \
  /usr/local/include/ImageMagick/magick/fourier.h \
  /usr/local/include/ImageMagick/magick/fx.h \
  /usr/local/include/ImageMagick/magick/gem.h \
  /usr/local/include/ImageMagick/magick/fx.h \
  /usr/local/include/ImageMagick/magick/random_.h \
  /usr/local/include/ImageMagick/magick/histogram.h \
  /usr/local/include/ImageMagick/magick/identify.h \
  /usr/local/include/ImageMagick/magick/image-view.h \
  /usr/local/include/ImageMagick/magick/list.h \
  /usr/local/include/ImageMagick/magick/log.h \
  /usr/local/include/ImageMagick/magick/magic.h \
  /usr/local/include/ImageMagick/magick/magick.h \
  /usr/local/include/ImageMagick/magick/matrix.h \
  /usr/local/include/ImageMagick/magick/memory_.h \
  /usr/local/include/ImageMagick/magick/module.h \
  /usr/local/include/ImageMagick/magick/version.h \
  /usr/local/include/ImageMagick/magick/mime.h \
  /usr/local/include/ImageMagick/magick/montage.h \
  /usr/local/include/ImageMagick/magick/option.h \
  /usr/local/include/ImageMagick/magick/paint.h \
  /usr/local/include/ImageMagick/magick/policy.h \
  /usr/local/include/ImageMagick/magick/prepress.h \
  /usr/local/include/ImageMagick/magick/property.h \
  /usr/local/include/ImageMagick/magick/resource_.h \
  /usr/local/include/ImageMagick/magick/segment.h \
  /usr/local/include/ImageMagick/magick/shear.h \
  /usr/local/include/ImageMagick/magick/signature.h \
  /usr/local/include/ImageMagick/magick/splay-tree.h \
  /usr/local/include/ImageMagick/magick/statistic.h \
  /usr/local/include/ImageMagick/magick/token.h \
  /usr/local/include/ImageMagick/magick/transform.h \
  /usr/local/include/ImageMagick/magick/threshold.h \
  /usr/local/include/ImageMagick/magick/utility.h \
  /usr/local/include/ImageMagick/magick/xml-tree.h \
  /usr/local/include/ImageMagick/magick/splay-tree.h \
  /usr/local/include/ImageMagick/magick/xwindow.h \
  /usr/local/include/ImageMagick/wand/MagickWand.h \
  /usr/local/include/ImageMagick/magick/magick-config.h \
  /usr/local/include/ImageMagick/wand/method-attribute.h \
  /usr/local/include/ImageMagick/wand/animate.h \
  /usr/local/include/ImageMagick/wand/compare.h \
  /usr/local/include/ImageMagick/wand/composite.h \
  /usr/local/include/ImageMagick/wand/conjure.h \
  /usr/local/include/ImageMagick/wand/convert.h \
  /usr/local/include/ImageMagick/wand/deprecate.h \
  /usr/local/include/ImageMagick/wand/drawing-wand.h \
  /usr/local/include/ImageMagick/wand/pixel-wand.h \
  /usr/local/include/ImageMagick/wand/magick-wand.h \
  /usr/local/include/ImageMagick/wand/pixel-iterator.h \
  /usr/local/include/ImageMagick/wand/display.h \
  /usr/local/include/ImageMagick/wand/identify.h \
  /usr/local/include/ImageMagick/wand/import.h \
  /usr/local/include/ImageMagick/wand/magick-property.h \
  /usr/local/include/ImageMagick/wand/magick-image.h \
  /usr/local/include/ImageMagick/wand/mogrify.h \
  /usr/local/include/ImageMagick/wand/montage.h \
  /usr/local/include/ImageMagick/wand/stream.h \
  /usr/local/include/ImageMagick/wand/wand-view.h \
  /usr/local/include/ImageMagick/Magick++/Image.h \
  /usr/local/include/ImageMagick/Magick++/Blob.h \
  /usr/local/include/ImageMagick/Magick++/Color.h \
  /usr/local/include/ImageMagick/Magick++/Drawable.h \
  /usr/local/include/ImageMagick/Magick++/Geometry.h \
  /usr/local/include/ImageMagick/Magick++/Exception.h \
  /usr/local/include/ImageMagick/Magick++/TypeMetric.h \
  /usr/local/include/ImageMagick/Magick++/Pixels.h \
  /usr/local/include/ImageMagick/Magick++/STL.h \
  /usr/local/include/ImageMagick/Magick++/CoderInfo.h \
  /usr/local/include/ImageMagick/Magick++/Montage.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/musichandler.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/attachmenthandler.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/memcache.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/base3/logging.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/base3/basictypes.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/base3/port.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/base3/build_config.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/base3/sysloging.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/base3/ptime.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/blockmanage.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/tickmanager.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/cross_domain.h \
  /data/jin.shang/nodejs/02_functions/async_upload_release/include/arch_diff/site_xiaonei.h
../modulename.cpp:
/root/.node-gyp/0.10.12/src/node.h:
/root/.node-gyp/0.10.12/deps/uv/include/uv.h:
/root/.node-gyp/0.10.12/deps/uv/include/uv-private/uv-unix.h:
/root/.node-gyp/0.10.12/deps/uv/include/uv-private/ngx-queue.h:
/root/.node-gyp/0.10.12/deps/uv/include/uv-private/uv-linux.h:
/root/.node-gyp/0.10.12/deps/v8/include/v8.h:
/root/.node-gyp/0.10.12/deps/v8/include/v8stdint.h:
/root/.node-gyp/0.10.12/src/node_object_wrap.h:
/root/.node-gyp/0.10.12/src/node.h:
/root/.node-gyp/0.10.12/src/node_buffer.h:
../hello.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/structs.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/action_upload.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/datadispense.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/runtimeconfig.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/upload/upload.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/upload/download.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/upload/bufferarray.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/structs.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/imagehandler.h:
/usr/local/include/ImageMagick/Magick++.h:
/usr/local/include/ImageMagick/Magick++/Include.h:
/usr/local/include/ImageMagick/magick/magick-config.h:
/usr/local/include/ImageMagick/magick/MagickCore.h:
/usr/local/include/ImageMagick/magick/magick-config.h:
/usr/local/include/ImageMagick/magick/method-attribute.h:
/usr/local/include/ImageMagick/magick/magick-type.h:
/usr/local/include/ImageMagick/magick/accelerate.h:
/usr/local/include/ImageMagick/magick/morphology.h:
/usr/local/include/ImageMagick/magick/geometry.h:
/usr/local/include/ImageMagick/magick/animate.h:
/usr/local/include/ImageMagick/magick/annotate.h:
/usr/local/include/ImageMagick/magick/draw.h:
/usr/local/include/ImageMagick/magick/image.h:
/usr/local/include/ImageMagick/magick/color.h:
/usr/local/include/ImageMagick/magick/pixel.h:
/usr/local/include/ImageMagick/magick/colorspace.h:
/usr/local/include/ImageMagick/magick/constitute.h:
/usr/local/include/ImageMagick/magick/exception.h:
/usr/local/include/ImageMagick/magick/semaphore.h:
/usr/local/include/ImageMagick/magick/blob.h:
/usr/local/include/ImageMagick/magick/stream.h:
/usr/local/include/ImageMagick/magick/cache-view.h:
/usr/local/include/ImageMagick/magick/composite.h:
/usr/local/include/ImageMagick/magick/compress.h:
/usr/local/include/ImageMagick/magick/effect.h:
/usr/local/include/ImageMagick/magick/layer.h:
/usr/local/include/ImageMagick/magick/locale_.h:
/usr/local/include/ImageMagick/magick/hashmap.h:
/usr/local/include/ImageMagick/magick/monitor.h:
/usr/local/include/ImageMagick/magick/profile.h:
/usr/local/include/ImageMagick/magick/string_.h:
/usr/local/include/ImageMagick/magick/quantum.h:
/usr/local/include/ImageMagick/magick/resample.h:
/usr/local/include/ImageMagick/magick/cache-view.h:
/usr/local/include/ImageMagick/magick/resize.h:
/usr/local/include/ImageMagick/magick/timer.h:
/usr/local/include/ImageMagick/magick/type.h:
/usr/local/include/ImageMagick/magick/artifact.h:
/usr/local/include/ImageMagick/magick/attribute.h:
/usr/local/include/ImageMagick/magick/image.h:
/usr/local/include/ImageMagick/magick/cache.h:
/usr/local/include/ImageMagick/magick/cipher.h:
/usr/local/include/ImageMagick/magick/client.h:
/usr/local/include/ImageMagick/magick/coder.h:
/usr/local/include/ImageMagick/magick/colormap.h:
/usr/local/include/ImageMagick/magick/compare.h:
/usr/local/include/ImageMagick/magick/configure.h:
/usr/local/include/ImageMagick/magick/decorate.h:
/usr/local/include/ImageMagick/magick/delegate.h:
/usr/local/include/ImageMagick/magick/deprecate.h:
/usr/local/include/ImageMagick/magick/quantize.h:
/usr/local/include/ImageMagick/magick/registry.h:
/usr/local/include/ImageMagick/magick/display.h:
/usr/local/include/ImageMagick/magick/distort.h:
/usr/local/include/ImageMagick/magick/enhance.h:
/usr/local/include/ImageMagick/magick/feature.h:
/usr/local/include/ImageMagick/magick/fourier.h:
/usr/local/include/ImageMagick/magick/fx.h:
/usr/local/include/ImageMagick/magick/gem.h:
/usr/local/include/ImageMagick/magick/fx.h:
/usr/local/include/ImageMagick/magick/random_.h:
/usr/local/include/ImageMagick/magick/histogram.h:
/usr/local/include/ImageMagick/magick/identify.h:
/usr/local/include/ImageMagick/magick/image-view.h:
/usr/local/include/ImageMagick/magick/list.h:
/usr/local/include/ImageMagick/magick/log.h:
/usr/local/include/ImageMagick/magick/magic.h:
/usr/local/include/ImageMagick/magick/magick.h:
/usr/local/include/ImageMagick/magick/matrix.h:
/usr/local/include/ImageMagick/magick/memory_.h:
/usr/local/include/ImageMagick/magick/module.h:
/usr/local/include/ImageMagick/magick/version.h:
/usr/local/include/ImageMagick/magick/mime.h:
/usr/local/include/ImageMagick/magick/montage.h:
/usr/local/include/ImageMagick/magick/option.h:
/usr/local/include/ImageMagick/magick/paint.h:
/usr/local/include/ImageMagick/magick/policy.h:
/usr/local/include/ImageMagick/magick/prepress.h:
/usr/local/include/ImageMagick/magick/property.h:
/usr/local/include/ImageMagick/magick/resource_.h:
/usr/local/include/ImageMagick/magick/segment.h:
/usr/local/include/ImageMagick/magick/shear.h:
/usr/local/include/ImageMagick/magick/signature.h:
/usr/local/include/ImageMagick/magick/splay-tree.h:
/usr/local/include/ImageMagick/magick/statistic.h:
/usr/local/include/ImageMagick/magick/token.h:
/usr/local/include/ImageMagick/magick/transform.h:
/usr/local/include/ImageMagick/magick/threshold.h:
/usr/local/include/ImageMagick/magick/utility.h:
/usr/local/include/ImageMagick/magick/xml-tree.h:
/usr/local/include/ImageMagick/magick/splay-tree.h:
/usr/local/include/ImageMagick/magick/xwindow.h:
/usr/local/include/ImageMagick/wand/MagickWand.h:
/usr/local/include/ImageMagick/magick/magick-config.h:
/usr/local/include/ImageMagick/wand/method-attribute.h:
/usr/local/include/ImageMagick/wand/animate.h:
/usr/local/include/ImageMagick/wand/compare.h:
/usr/local/include/ImageMagick/wand/composite.h:
/usr/local/include/ImageMagick/wand/conjure.h:
/usr/local/include/ImageMagick/wand/convert.h:
/usr/local/include/ImageMagick/wand/deprecate.h:
/usr/local/include/ImageMagick/wand/drawing-wand.h:
/usr/local/include/ImageMagick/wand/pixel-wand.h:
/usr/local/include/ImageMagick/wand/magick-wand.h:
/usr/local/include/ImageMagick/wand/pixel-iterator.h:
/usr/local/include/ImageMagick/wand/display.h:
/usr/local/include/ImageMagick/wand/identify.h:
/usr/local/include/ImageMagick/wand/import.h:
/usr/local/include/ImageMagick/wand/magick-property.h:
/usr/local/include/ImageMagick/wand/magick-image.h:
/usr/local/include/ImageMagick/wand/mogrify.h:
/usr/local/include/ImageMagick/wand/montage.h:
/usr/local/include/ImageMagick/wand/stream.h:
/usr/local/include/ImageMagick/wand/wand-view.h:
/usr/local/include/ImageMagick/Magick++/Image.h:
/usr/local/include/ImageMagick/Magick++/Blob.h:
/usr/local/include/ImageMagick/Magick++/Color.h:
/usr/local/include/ImageMagick/Magick++/Drawable.h:
/usr/local/include/ImageMagick/Magick++/Geometry.h:
/usr/local/include/ImageMagick/Magick++/Exception.h:
/usr/local/include/ImageMagick/Magick++/TypeMetric.h:
/usr/local/include/ImageMagick/Magick++/Pixels.h:
/usr/local/include/ImageMagick/Magick++/STL.h:
/usr/local/include/ImageMagick/Magick++/CoderInfo.h:
/usr/local/include/ImageMagick/Magick++/Montage.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/musichandler.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/attachmenthandler.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/memcache.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/base3/logging.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/base3/basictypes.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/base3/port.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/base3/build_config.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/base3/sysloging.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/base3/ptime.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/blockmanage.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/tickmanager.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/cross_domain.h:
/data/jin.shang/nodejs/02_functions/async_upload_release/include/arch_diff/site_xiaonei.h:
