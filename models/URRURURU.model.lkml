# Define the database connection to be used for this model.
connection: "smb_prueba"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: URRURURU_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: URRURURU_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "URRURURU"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: facturas {}

explore: facturas_2 {}

explore: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67 {
    join: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__tags {
      view_label: "Gcp Billing Export V1 01 F4 F7 Ebe3 Fb D44 E67: Tags"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67.tags}) as gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__tags ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__labels {
      view_label: "Gcp Billing Export V1 01 F4 F7 Ebe3 Fb D44 E67: Labels"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67.labels}) as gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__labels ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__credits {
      view_label: "Gcp Billing Export V1 01 F4 F7 Ebe3 Fb D44 E67: Credits"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67.credits}) as gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__credits ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__system_labels {
      view_label: "Gcp Billing Export V1 01 F4 F7 Ebe3 Fb D44 E67: System Labels"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67.system_labels}) as gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__system_labels ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__project__labels {
      view_label: "Gcp Billing Export V1 01 F4 F7 Ebe3 Fb D44 E67: Project Labels"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67.project__labels}) as gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__project__labels ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__project__ancestors {
      view_label: "Gcp Billing Export V1 01 F4 F7 Ebe3 Fb D44 E67: Project Ancestors"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67.project__ancestors}) as gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__project__ancestors ;;
      relationship: one_to_many
    }
}

explore: resources_sensor_v2 {}

explore: empleados_data {}

explore: elastic {}

explore: department {}

explore: demoemployee {}

explore: afrus_new_schema {}

explore: cloudsql {}

explore: duplicado_employee {}

explore: employee {}

explore: employee2 {}

explore: jobs {}

explore: employees {}

explore: employee_demo_dataflow {}

explore: employeepayhistory {}

explore: stderr {
    join: stderr__error_groups {
      view_label: "Stderr: Errorgroups"
      sql: LEFT JOIN UNNEST(${stderr.error_groups}) as stderr__error_groups ;;
      relationship: one_to_many
    }
}

explore: employeedepartmenthistory {}

explore: test {}

explore: solicitudes {}

explore: shift {}

explore: vemployee {}

explore: vemployeedepartment {}

explore: vemployeedepartmenthistory {}

explore: stdout {
    join: stdout__error_groups {
      view_label: "Stdout: Errorgroups"
      sql: LEFT JOIN UNNEST(${stdout.error_groups}) as stdout__error_groups ;;
      relationship: one_to_many
    }
}

