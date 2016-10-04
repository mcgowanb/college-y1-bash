#
#Shell script to output directory and listings
#

clear
echo The user currently logged in is:
whoami
echo ================================================
echo Creating and changing into new directory called blue
mkdir blue |
cd blue
echo Current working directory is:
pwd

echo Deleting directory so this can be rerun
rmdir blue
