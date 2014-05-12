modules = {
    application {
        resource url:'js/application.js'
    }

    customBootstrap {
      dependsOn 'font-awesome'
      dependsOn 'bootstrap'
    }
}