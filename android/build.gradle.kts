
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
            force("com.google.android.gms:play-services-ads:23.6.0")
            force("androidx.work:work-runtime:2.9.0")
            force("androidx.work:work-runtime-ktx:2.9.0")
        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.buildDir)
}