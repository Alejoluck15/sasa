# The name of this view in Looker is "Employeepayhistory"
view: employeepayhistory {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dataset_demo.employeepayhistory` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Businessentityid" in Explore.

  dimension: businessentityid {
    type: number
    value_format_name: id
    sql: ${TABLE}.businessentityid ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: modifieddate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.modifieddate ;;
  }

  dimension: payfrequency {
    type: number
    sql: ${TABLE}.payfrequency ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  dimension_group: ratechangedate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ratechangedate ;;
  }
  measure: count {
    type: count
  }
}
