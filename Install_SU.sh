 #！/bin/bash

echo "++++++++++++++++++++++++++++++"
echo "          Build DIR"
echo "++++++++++++++++++++++++++++++"

mkdir SeismicUnix

cd SeismicUnix

mkdir bin

cd ..

mv src ./SeismicUnix


echo "++++++++++++++++++++++++++++++"
echo "         Change PATH"
echo "++++++++++++++++++++++++++++++"

echo "export CWPROOT=/home/su/SeismicUnix" >> ~/.bashrc
echo "export PATH=$PATH:/home/su/SeismicUnix/bin" >> ~/.bashrc


echo "++++++++++++++++++++++++++++++"
echo "        Install Package"
echo "++++++++++++++++++++++++++++++"

sudo apt-get install build-essential
sudo apt-get install libx11-dev
sudo apt-get install libxt-dev
sudo apt-get install freeglut3
sudo apt-get install freeglut3-dev
sudo apt-get install libxmu-dev
sudo apt-get install libxi-dev
sudo apt-get install gfortran


echo "++++++++++++++++++++++++++++++"
echo "          Install SU"
echo "++++++++++++++++++++++++++++++"

cd SeismicUnix/src
make install
make xtinstall


echo "++++++++++++++++++++++++++++++"
echo "          Test SU"
echo "++++++++++++++++++++++++++++++"

suplane | suximage title="Test" &



