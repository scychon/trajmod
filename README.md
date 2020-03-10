XTC and DCD Trajectory Wrapper in Fortran
=====================

This git repository contains a fortran wrapper to read xtc and dcd files.
This module creates libraries to be used with [trj_analys](https://github.com/scychon/trj_analysis.git) repository to analize MD trajectories.

Building The Analysis Tools
===================

To build this project, simply follow these steps:

1. Clone or download this repository to a directory you want to build it.

2. Change the first line of install.sh file to reflect trajmod module directory (current directory)

    export TRAJMOD=YOUR_TRAJMOD_DIRECTORY


4. Run 'bash install.sh' to compile entire toolkit.

5. Follow the instructions on [trj_analys](https://github.com/scychon/trj_analysis.git) repository to install it to analize MD trajectories.

