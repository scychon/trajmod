export CC=gcc
export FC=gfortran
export GMXXTC=$HOME/program/utility/trajmod/gmx_xtc
export OPENMMDCD=$HOME/program/utility/trajmod/openmm_dcd
cd $GMXXTC/xdrfile-1.1.1
./configure --prefix=$GMXXTC/
make
make install
cd ../
gfortran -fopenmp -c xtc-interface-wrap.f90  -lxdrfile -L $GMXXTC/lib -I $GMXXTC -fconvert=little-endian
