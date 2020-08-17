import { NativeModules } from 'react-native';
const native = NativeModules.HttpCache;

export const clearHttpCache = native.clearCache;

export const getHttpCacheSize = native.getHttpCacheSize;

export const clearImageCache = native.clearImageCache;

export const getImageCacheSize = native.getImageCacheSize;

export async function getCacheSize(){
  const arr = await Promise.all([getHttpCacheSize(), getImageCacheSize()]);
  // Get sum of all cache type.
  return arr.reduce((a,b)=>a+b, 0);
}

export async function clearCache(){
  await Promise.all([clearHttpCache(), clearImageCache()]);
}