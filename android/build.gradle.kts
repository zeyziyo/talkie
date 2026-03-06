
rootProject.buildDir = file("../build")
subprojects {
    project.buildDir = file("${rootProject.buildDir}/${project.name}")
}
subprojects {
    project.evaluationDependsOn(":app")
}

subprojects {
    configurations.all {
        resolutionStrategy {
            // Force stable versions to avoid SDK 35/36 requirement traps from transitive dependencies
            force("androidx.browser:browser:1.8.0")
            force("androidx.window:window:1.2.0")
            force("androidx.window:window-java:1.2.0")
            force("androidx.lifecycle:lifecycle-runtime:2.7.0")
            force("androidx.lifecycle:lifecycle-runtime-ktx:2.7.0")
            force("androidx.lifecycle:lifecycle-common:2.7.0")
            force("androidx.lifecycle:lifecycle-livedata:2.7.0")
            force("androidx.lifecycle:lifecycle-livedata-ktx:2.7.0")
            force("androidx.lifecycle:lifecycle-viewmodel:2.7.0")
            force("androidx.lifecycle:lifecycle-viewmodel-ktx:2.7.0")
            force("androidx.core:core-ktx:1.13.1")
            force("androidx.work:work-runtime:2.9.0")
            force("androidx.work:work-runtime-ktx:2.9.0")
        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.buildDir)
}