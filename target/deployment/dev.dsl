devLaptop = deploymentNode "One Cloud" "" "Microsoft Windows 10 or Apple macOS" {
        
    devDocker = deploymentNode "Docker Container - Go Service" "" "Docker" {
            developerApiApplicationInstance = containerInstance skorotitel.service
    }
    
    devDbDocker = deploymentNode "Docker Container - Database Server" "" "Docker" {
        devDbServer = deploymentNode "Database Server" "" "ScyllaDB" {
            developerDatabaseInstance = containerInstance skorotitel.dynamoDB
        }
    }

    devKafkaDocker = deploymentNode "Docker Container - Kafka_Components" "" "Docker" {

            developerKafkaInstance = containerInstance skorotitel.kafka
        
    }
}

// deploymentNode "Big Bank plc" "" "Big Bank plc data center" "" {
//    deploymentNode "bigbank-dev001" "" "" "" {
//        softwareSystemInstance mainframe
//    }
// }
