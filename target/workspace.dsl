workspace "Link shorter" {
    !identifiers hierarchical

    model {
        !include model.dsl
        !include deployment.dsl
    }

    views {
        theme default
        !include views.dsl
        styles {
            !include styles.dsl
        }
    }
}  