devLaptop = deploymentNode "One Cloud" "" "Debian 12.10" {
        
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

devGrafana = deploymentNode "One cloud" "" "Debian 12.10" {

    devPrometheusDocker = deploymentNode "Docker Container - Database Server" "" "Docker" {
        devPrometheusServer = deploymentNode "Database Server" "" "Prometheus" {
            developerPrometheusDatabaseInstance = containerInstance skorotitel.prometheus
        }
    }

    devGrafanaDocker = deploymentNode "Docker Container" "" "Docker" {
        developerGrafanaInstance = containerInstance skorotitel.grafana
    }

}
// deploymentNode "Big Bank plc" "" "Big Bank plc data center" "" {
//    deploymentNode "bigbank-dev001" "" "" "" {
//        softwareSystemInstance mainframe
//    }
// }
