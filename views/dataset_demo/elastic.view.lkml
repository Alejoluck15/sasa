# The name of this view in Looker is "Elastic"
view: elastic {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dataset_demo.elastic` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Field1" in Explore.

  dimension: field1 {
    type: string
    sql: ${TABLE}.field1 ;;
  }

  dimension: field2 {
    type: string
    sql: ${TABLE}.field2 ;;
  }
  measure: count {
    type: count
  }
}
