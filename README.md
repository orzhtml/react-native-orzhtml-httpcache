React Native http cache control for both fetch/XMLHttpRequest and ImageView

- [√] iOS
- [√] Android

## Installation

```sh
$ npm install react-native-orzhtml-httpcache --save
```

## iOS: Linking in your XCode project

- Link `react-native-orzhtml-httpcache` library from your `node_modules/react-native-orzhtml-httpcache/ios` folder like its
  [described here](http://facebook.github.io/react-native/docs/linking-libraries-ios.html).
  Don't forget to add it to "Build Phases" of project.

## Android: Linking to your gradle Project

- Add following lines into `android/settings.gradle`

```
include ':RCTHttpCache'
project(':RCTHttpCache').projectDir = new File(rootProject.projectDir, '../node_modules/react-native-orzhtml-httpcache/android')
```

- Add following lines into your `android/app/build.gradle` in section `dependencies`

```
...
dependencies {
   ...
   compile project(':RCTHttpCache')    // Add this line only.
}
```

- Add following lines into `MainApplication.java`

```java
...
import cn.orzhtml.httpcache.HttpCachePackage;
      // Add this line before public class MainApplication

public class MainApplication extends Application implements ReactApplication {

  private final ReactNativeHost mReactNativeHost = new ReactNativeHost(this) {
    @Override
    protected boolean getUseDeveloperSupport() {
      return BuildConfig.DEBUG;
    }

    @Override
    protected List<ReactPackage> getPackages() {
      return Arrays.<ReactPackage>asList(
          new HttpCachePackage(), // Add this line
          new MainReactPackage()
      );
    }
  };

  @Override
  public ReactNativeHost getReactNativeHost() {
      return mReactNativeHost;
  }
}
```

- Add these lines to 'proguard-rules.pro' if you need to minify your java code:

```
-keep class com.facebook.cache.disk.DiskStorageCache {
   private boolean maybeUpdateFileCacheSize();
}
```

## JavaScript: import all and invoke!

```js
import * as CacheManager from 'react-native-orzhtml-httpcache';

// invoke API directly when in need
CacheManager.clearCache();

```

## API Documentation

#### clearCache()

Clear cache for all type.

Return a promise which indicate the clear state.

#### getCacheSize()

Get cache size for all type.

Return a promise that contain the cache size(in bytes).

#### clearHttpCache()

Clear cache for fetch/ajax only.

Return a promise which indicate the clear state.

#### getHttpCacheSize()

Get cache size for fetch/ajax only.

Return a promise that contain the cache size(in bytes).

#### clearImageCache()

Clear cache for ImageView only.

Return a promise which indicate the clear state.

#### getImageCacheSize()

Get cache size for ImageView only.

Return a promise that contain the cache size(in bytes).

