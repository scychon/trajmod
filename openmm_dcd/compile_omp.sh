export GMXXTC=$HOME/program/utility/trajmod/gmx_xtc
gfortran -fopenmp -c dcdmod.f90 trajmod.f90 -lxdrfile -L $GMXXTC/lib -I $GMXXTC -fconvert=little-endian
#ifort -qopenmp -c dcdmod.f90 trajmod.f90 -lxdrfile -L $GMXXTC/lib -I $GMXXTC -CB -convert little_endian
