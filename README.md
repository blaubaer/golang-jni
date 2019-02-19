# golang-jni

Testing out calling Golang code from Java using JNI - at first on Windows.

## Building

1. Open locally [`build.cmd`](build.cmd)
2. Adjust `JAVA_HOME` and `MINGW_HOME` inside accordingly to your system.
3. Run `build.cmd`

## Issues

After running everything currently I get messages like this:
```
C:\development\github.com\blaubaer\golang-jni>build
Exception in thread "main" java.lang.UnsatisfiedLinkError: C:\development\github.com\blaubaer\golang-jni\out\hello.dll: A dynamic link library (DLL) initialization routine failed
        at java.base/java.lang.ClassLoader$NativeLibrary.load0(Native Method)
        at java.base/java.lang.ClassLoader$NativeLibrary.load(ClassLoader.java:2430)
        at java.base/java.lang.ClassLoader$NativeLibrary.loadLibrary(ClassLoader.java:2487)
        at java.base/java.lang.ClassLoader.loadLibrary0(ClassLoader.java:2684)
        at java.base/java.lang.ClassLoader.loadLibrary(ClassLoader.java:2649)
        at java.base/java.lang.Runtime.loadLibrary0(Runtime.java:829)
        at java.base/java.lang.System.loadLibrary(System.java:1867)
        at Hello.<clinit>(Hello.java:3)
```