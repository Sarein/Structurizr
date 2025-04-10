systemlandscape "SystemLandscape" {
    include *
    autoLayout
}

systemcontext skorotitel "SystemContext" {
    include *
    autoLayout
    description "Диаграмма C1 для Скоротителя ссылок."
}

container skorotitel "Containers" {
    include *
    autoLayout
    description "Диаграмма C2 для Скоротителя ссылок."
}

container skorotitel "Kafka" {
    include *
    autoLayout
    description "Диаграмма C2 для Скоротителя ссылок."
}

component skorotitel.service "API_Components" {
    include *
    autoLayout
    description "Диаграмма C3 для API Скоротителя."
}

component skorotitel.kafka "Kafka_Components" {
    include *
    autoLayout
    description "Диаграмма C3 для Kafka."
}

deployment skorotitel "Development" "DevelopmentDeployment" {
    include *
    animation {
        devEnv.devLaptop.devDocker.developerApiApplicationInstance
        devEnv.devLaptop.devDbDocker.devDbServer.developerDatabaseInstance
        devEnv.devLaptop.devKafkaDocker.developerKafkaInstance
        devEnv.devGrafana.devPrometheusDocker.devPrometheusServer.developerPrometheusDatabaseInstance
        devEnv.devGrafana.devGrafanaDocker.developerGrafanaInstance
    }
    autoLayout
    description "deployment scenario for the skorotitel service."
}

//#this is only available on the Structurizr cloud service/on-premises installation/Lite
//#image mainframe "MainframeBankingSystemFacade" {
//#    image https://raw.githubusercontent.com/structurizr/examples/main/dsl/big-bank-plc/internet-banking-system/mainframe-banking-system-facade.png
//#    title "[Code] Mainframe Banking System Facade"
//#}
//
//dynamic internetBankingSystem.api "SignIn" "Summarises how the sign in feature works in the single-page application." {
//    internetBankingSystem.spa -> internetBankingSystem.api.signinController "Submits credentials to"
//    internetBankingSystem.api.signinController -> internetBankingSystem.api.securityComponent "Validates credentials using"
//    internetBankingSystem.api.securityComponent -> internetBankingSystem.database "select * from users where username = ?"
//    internetBankingSystem.database -> internetBankingSystem.api.securityComponent "Returns user data to"
//    internetBankingSystem.api.securityComponent -> internetBankingSystem.api.signinController "Returns true if the hashed password matches"
//    internetBankingSystem.api.signinController -> internetBankingSystem.spa "Sends back an authentication token to"
//    autoLayout
//    description "Summarises how the sign in feature works in the single-page application."
//}
//
//deployment internetBankingSystem "Development" "DevelopmentDeployment" {
//    include *
//    animation {
//        devEnv.devLaptop.devBrowser.developerSinglePageApplicationInstance
//        devEnv.devLaptop.devDocker.devTomcat.developerWebApplicationInstance devEnv.devLaptop.devDocker.devTomcat.developerApiApplicationInstance
//        devEnv.devLaptop.devDbDocker.devDbServer.developerDatabaseInstance

//    }
//    autoLayout
//    description "An example development deployment scenario for the Internet Banking System."
//}
//
//deployment internetBankingSystem "Live" "LiveDeployment" {
//    include *
//    animation {
//        liveEnv.liveCustomerComputer.liveWebBrowser.liveSinglePageApplicationInstance
//        liveEnv.liveCustomerDevice.liveMobileAppInstance
//        liveEnv.liveDc.liveApiNode.liveWebServer.liveApiApplicationInstance
//        liveEnv.liveDc.liveDbNode.primaryDatabaseServer.livePrimaryDatabaseInstance
//        liveEnv.liveDc.liveFailover.secondaryDatabaseServer.liveSecondaryDatabaseInstance
//    }
//    autoLayout
//    description "An example live deployment scenario for the Internet Banking System."
//}