cmake_minimum_required(VERSION 3.8)
project(cjpeg)
set(CMAKE_CXX_STANDARD 98)

set(SOURCE_FILES src/cio.c src/cmarker.c src/fdctflt.c src/rdbmp.c src/cjpeg.c)

add_executable(cjpeg ${SOURCE_FILES})
