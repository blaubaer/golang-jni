package main

//#include <jni.h>
import "C"
import (
	"fmt"
)

//export Java_Hello_add
func Java_Hello_add(env *C.JNIEnv, clazz C.jclass, x C.jlong, y C.jlong) C.jlong {
	fmt.Println("Hello from Go", env, clazz, x, y)
	return x + y
}

func main() {}
