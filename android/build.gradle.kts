
rootProject.buildDir = file("../build")
subprojects {
    project.buildDir = file("${rootProject.buildDir}/${project.name}")
}
subprojects {
    project.evaluationDependsOn(":app")
}

subprojects {
    configurations.all {
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.buildDir)
}