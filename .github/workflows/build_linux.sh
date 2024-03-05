# build dependencies
cd deps
mkdir build
cd build
cmake .. -DDEP_WX_GTK3=ON
make
cd ../..

# build the thing
mkdir build
cd build
cmake .. -DSLIC3R_STATIC=1 -DSLIC3R_GTK=3 -DSLIC3R_PCH=OFF -DCMAKE_PREFIX_PATH=$(pwd)/../deps/build/destdir/usr/local
make -j4
