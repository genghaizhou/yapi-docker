#! /bin/bash
cd yapi 

git clone https://github.com/YMFE/yapi.git vendors 

zip -r vendors.zip vendors && rm -rf vendors 0