pluginManagement {
    val flutterSdkPath =
        run {
            val properties = java.util.Properties()
            val localPropertiesFile = file("local.properties")
            
            // Try to get Flutter SDK path from environment variable (for CI/CD)
            val flutterRoot = System.getenv("FLUTTER_ROOT")
            if (flutterRoot != null) {
                return@run flutterRoot
            }
            
            // Otherwise, try to read from local.properties (for local development)
            if (localPropertiesFile.exists()) {
                localPropertiesFile.inputStream().use { properties.load(it) }
                val flutterSdkPath = properties.getProperty("flutter.sdk")
                if (flutterSdkPath != null) {
                    return@run flutterSdkPath
                }
            }
            
            // Last resort: throw error
            throw GradleException("Flutter SDK not found. Set FLUTTER_ROOT environment variable or flutter.sdk in local.properties")
        }

    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    repositories {
        gradlePluginPortal()
        google()
        mavenCentral()
    }
}

dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
    }
}

plugins {
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    id("com.android.application") version "8.11.1" apply false
    id("org.jetbrains.kotlin.android") version "2.2.20" apply false
}

include(":app")
