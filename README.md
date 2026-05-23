# 鑫达商城 - Android应用

这是一个将 lianxinda.sbs 网站打包成Android应用的项目。

## 项目信息

- **应用名称**: 鑫达商城
- **包名**: com.lianxinda.app
- **目标API**: Android 12 (API 34)
- **最低API**: Android 5.0 (API 21)
- **编程语言**: Kotlin

## 编译和生成APK

### 前置要求

- Android Studio (最新版本)
- JDK 11 或更高版本
- Android SDK API 34

### 编译步骤

1. **克隆项目**
   ```bash
   git clone https://github.com/yuan500/xinda-mall.git
   cd xinda-mall
   ```

2. **打开项目**
   - 使用 Android Studio 打开项目

3. **构建APK**

   **调试版本 (Debug APK)**:
   ```bash
   ./gradlew assembleDebug
   ```
   输出: `app/build/outputs/apk/debug/app-debug.apk`

   **发布版本 (Release APK)** - 推荐用于正式发布:
   ```bash
   ./gradlew assembleRelease
   ```
   输出: `app/build/outputs/apk/release/app-release.apk`

4. **安装APK到设备**
   ```bash
   adb install app/build/outputs/apk/debug/app-debug.apk
   ```

## 功能特性

- ✅ 使用WebView加载 https://lianxinda.sbs
- ✅ 支持JavaScript执行
- ✅ 支持DOM存储和数据库
- ✅ 返回按钮支持页面后退
- ✅ 响应式布局适配各种屏幕尺寸

## 权限说明

应用请求的权限:

- `INTERNET` - 访问网络
- `ACCESS_NETWORK_STATE` - 检查网络状态

## 故障排除

### 网页加载失败

1. 检查网络连接
2. 确保 `AndroidManifest.xml` 中有 `INTERNET` 权限
3. 确保设备的系统时间正确

### 白屏或空白页

1. 检查URL是否正确: `https://lianxinda.sbs`
2. 在 Android Studio 的 Logcat 中查看错误日志
3. 尝试清除应用数据并重新启动

## 许可证

MIT License

---

**创建于**: 2026年5月23日
**开发者**: yuan500