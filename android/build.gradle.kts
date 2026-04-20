
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
            // Fix: androidx.browser:1.9.x and androidx.core:1.17.0 require AGP 8.9.1+
            // Pinning to the latest versions compatible with AGP 8.5.2 and SDK 35
            force("androidx.browser:browser:1.8.0")
            force("androidx.core:core:1.15.0")
            force("androidx.core:core-ktx:1.15.0")
            force("androidx.media:media:1.6.0")
            force("androidx.work:work-runtime:2.8.1")
            force("androidx.lifecycle:lifecycle-runtime:2.6.1")
            force("androidx.lifecycle:lifecycle-common:2.6.1")

            // Phase 114: Force Kotlin 2.1.0 to resolve metadata/pom missing issues
            eachDependency {
                if (requested.group == "org.jetbrains.kotlin") {
                    useVersion("2.1.0")
                }
            }

        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.buildDir)
}