# android_patches


## android_art

~~~
wget https://github.com/LGgFour/android_patches/raw/lineage-17.1/android_art.patch 
cd art/
patch -p1 < ../android_art.patch
~~~

## platform_bionic

~~~
wget https://github.com/LGgFour/android_patches/raw/lineage-17.1/platform_bionic.patch
cd bionic
patch -p1 < platform_bionic.patch
~~~
