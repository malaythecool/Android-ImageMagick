/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class magick_Magick */

#ifndef _Included_magick_Magick
#define _Included_magick_Magick
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     magick_Magick
 * Method:    init
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_magick_Magick_init
  (JNIEnv *, jclass);

/*
 * Class:     magick_Magick
 * Method:    terminus
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_magick_Magick_terminus
  (JNIEnv *, jclass);

/*
 * Class:     magick_Magick
 * Method:    parseImageGeometry
 * Signature: (Ljava/lang/String;Lfakeawt/Rectangle;)I
 */
JNIEXPORT jint JNICALL Java_magick_Magick_parseImageGeometry
  (JNIEnv *, jclass, jstring, jobject);

/*
 * Class:     magick_Magick
 * Method:    queryFonts
 * Signature: (Ljava/lang/String;)[Ljava/lang/String;
 */
JNIEXPORT jobjectArray JNICALL Java_magick_Magick_queryFonts
  (JNIEnv *, jclass, jstring);

/*
 * Class:     magick_Magick
 * Method:    setCacheDir
 * Signature: (Ljava/lang/String;)V
 */
JNIEXPORT void JNICALL Java_magick_Magick_setCacheDir
  (JNIEnv *, jclass, jstring);

/*
 * Class:     magick_Magick
 * Method:    setAppConfigDataDir
 * Signature: (Ljava/lang/String;)V
 */
JNIEXPORT void JNICALL Java_magick_Magick_setAppConfigDataDir
  (JNIEnv *, jclass, jstring);

/*
 * Class:     magick_Magick
 * Method:    setICUDataDir
 * Signature: (Ljava/lang/String;)V
 */
JNIEXPORT void JNICALL Java_magick_Magick_setICUDataDir
  (JNIEnv *, jclass, jstring);

#ifdef __cplusplus
}
#endif
#endif
