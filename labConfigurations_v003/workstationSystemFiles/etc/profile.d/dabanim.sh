#!/bin/bash

echo "Running dabanim.sh inside /etc/profile.d"

#########################
export DABANIM
export DABRENDERHOME=/Volumes/dabrender
export RMS_SCRIPT_PATH=${DABRENDERHOME}/usr/central/pixar

##########################
#  setting these here as OSX doesnt like having librarys managed by modules - it nags

echo "Operating System is: "${OSTYPE}" setting dynamic libraries"
case ${OSTYPE} in

linux-gnu)
    export DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:/Applications/Autodesk/maya2015/Maya.app/Contents/MacOS
    export DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:/Applications/Pixar/RenderManProServer-19.0/lib
    export DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:/Applications/Pixar/Tractor-2.0/lib
    ;;

darwin13)
    export DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:/Applications/Autodesk/maya2015/Maya.app/Contents/MacOS
    export DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:/Applications/Pixar/RenderManProServer-19.0/lib
    export DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:/Applications/Pixar/Tractor-2.0/lib
    ;;

*)
    echo "WARNING: LIBRARY_PATH not set in profile.d/dabanim.sh"
    ;;

esac


##########################
#export PATH=${PATH}:/Applications/Pixar/RenderManProServer-19.0/bin

#########################
umask 002