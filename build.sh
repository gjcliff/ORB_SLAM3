echo "Configuring and building Thirdparty/DBoW2 ..."

cd Thirdparty/DBoW2
trash-put build
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Debug
make -j

cd ../../g2o

echo "Configuring and building Thirdparty/g2o ..."

trash-put build
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Debug
make -j

cd ../../Sophus

echo "Configuring and building Thirdparty/Sophus ..."

trash-put build
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Debug
make -j

cd ../../../

echo "Uncompress vocabulary ..."

cd Vocabulary
tar -xf ORBvoc.txt.tar.gz
cd ..

echo "Configuring and building ORB_SLAM3 ..."

trash-put build
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Debug
make -j20
