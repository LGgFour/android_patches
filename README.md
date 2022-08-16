# android_patches

1. update your local manifest:

`<project path="external/patches" name="android_external_patches" remote="gfour" revision="android-9.0" />`

2. apply the patch(es):

~~~
cd <android src path>
git apply external/patches/<patchname>
~~~
