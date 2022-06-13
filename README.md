# mobx_firestore_flutter

Integrating MobStores With Firestore

## Setup
Android setup has been set to do the following:
- android/app/build.gradle

```groovy
// added the following
defaultConfig {
    minSdkVersion 32
    targetSdkVersion 32
}

dependencies {
    implementation "org.jetbrains.kotlin:kotlin-stdlib-jdk7:$kotlin_version"
    // added the following
    implementation "androidx.multidex:multidex:2.0.1"
}
```
Both are required for firestore
