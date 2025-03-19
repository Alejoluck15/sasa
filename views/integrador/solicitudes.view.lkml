# The name of this view in Looker is "Solicitudes"
view: solicitudes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `integrador.solicitudes` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Bigquery Dataset" in Explore.

  dimension: bigquery_dataset {
    type: string
    sql: ${TABLE}.bigquery_dataset ;;
  }

  dimension: database_type {
    type: string
    sql: ${TABLE}.database_type ;;
  }

  dimension: db_schema {
    type: string
    sql: ${TABLE}.db_schema ;;
  }

  dimension: estado_solicitud {
    type: string
    sql: ${TABLE}.estado_solicitud ;;
  }

  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }
  measure: count {
    type: count
  }
}
