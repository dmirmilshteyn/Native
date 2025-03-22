#!/bin/bash

ClangSharpPInvokeGenerator \
  --namespace libraw \
  --output-mode CSharp \
  --libraryPath "libraw" \
  -o Generated \
  -x c \
  -f ./../../lib/libraw/libraw.h \
  -f ./../../lib/libraw/libraw_types.h \
  -f ./../../lib/libraw/libraw_const.h \
  --config preview-codegen \
  --config exclude-funcs-with-body \
  --config generate-unmanaged-constants \
  --config generate-helper-types \
  --config generate-file-scoped-namespaces \
  --config multi-file \
  --config strip-enum-member-type-name \
  --with-using *=System.Runtime.CompilerServices \
  -I ./../../lib/libraw/ \
  -I /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/c++/v1 \
  -I /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include
