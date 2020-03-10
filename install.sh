export TRAJMOD=$HOME/program/utility/trajmod
export CC=gcc
export FC=gfortran
export GMXXTC=$TRAJMOD/gmx_xtc
export OPENMMDCD=$TRAJMOD/openmm_dcd
cd $GMXXTC/xdrfile-1.1.1
./configure --prefix=$GMXXTC/
make
make install
cd ../
gfortran -fopenmp -c xtc-interface-wrap.f90  -lxdrfile -L $GMXXTC/lib -I $GMXXTC -fconvert=little-endian
cd $OPENMMDCD
gfortran -fopenmp -c dcdmod.f90 trajmod.f90 -lxdrfile -L $GMXXTC/lib -I $GMXXTC -fconvert=little-endian
