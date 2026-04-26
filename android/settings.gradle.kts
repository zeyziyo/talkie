pluginManagement {
    val flutterSdkPath = run {
        val properties = java.util.Properties()
        val localPropertiesFile = file("local.properties")
        
        // CI/CD 환경에서 FLUTTER_ROOT 우선 사용
        val flutterRoot = System.getenv("FLUTTER_ROOT")
        if (flutterRoot != null) return@run flutterRoot

        // 로컬 환경에서 local.properties 사용
        if (localPropertiesFile.exists()) {
            localPropertiesFile.inputStream().use { properties.load(it) }
            val sdkPath = properties.getProperty("flutter.sdk")
            if (sdkPath != null) return@run sdkPath
        }
        
        throw GradleException("Flutter SDK not found. Set FLUTTER_ROOT environment variable or flutter.sdk in local.properties")
    }

    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

dependencyResolutionManagement {
    repositories {
        google()
        mavenCentral()
    }
}

plugins {
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    id("com.android.application") version "8.9.1" apply false
    id("org.jetbrains.kotlin.android") version "2.1.21" apply false
}

include(":app")
