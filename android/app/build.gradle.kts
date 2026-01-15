import java.util.Properties
import java.io.FileInputStream

// --- LOCAL BUILD PROTECTION ---
// Forces the build to fail if not running in CI (e.g. GitHub Actions),
// unless an explicit property is passed.
val isCI = System.getenv("CI") == "true" || System.getenv("GITHUB_ACTIONS") == "true"
if (!isCI && !project.hasProperty("forceLocalBuild")) {
    throw GradleException(
        "\n\n" +
        "===========================================================\n" +
        "🚫 LOCAL BUILD FORBIDDEN 🚫\n" +
        "This project enforces strict CI compliance.\n" +
        "You MUST NOT build this locally.\n" +
        "Please commit and push to GitHub to trigger a build.\n" +
        "(If you really need to debug locally, pass -PforceLocalBuild)\n" +
        "===========================================================\n"
    )
}
// ------------------------------

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("key.properties")
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(FileInputStream(keystorePropertiesFile))
}

android {
    namespace = "com.zeyziyo.talkie"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.zeyziyo.talkie"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    signingConfigs {
        create("release") {
            keyAlias = keystoreProperties["keyAlias"] as String?
            keyPassword = keystoreProperties["keyPassword"] as String?
            storeFile = keystoreProperties["storeFile"]?.let { file(it) }
            storePassword = keystoreProperties["storePassword"] as String?
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("release")
        }
    }
}

flutter {
    source = "../.."
}
