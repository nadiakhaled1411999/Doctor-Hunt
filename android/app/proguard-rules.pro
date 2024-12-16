 # Keep annotations to avoid issues with R8
 -keepattributes *Annotation*

 # Keep javax.annotation classes
 -keep class javax.annotation.** { *; }
 -dontwarn javax.annotation.**
