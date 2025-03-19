# The name of this view in Looker is "Shift"
view: shift {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dataset_demo.shift` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Endtime" in Explore.

  dimension: endtime {
    type: string
    sql: ${TABLE}.endtime ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: modifieddate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.modifieddate ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: shiftid {
    type: number
    value_format_name: id
    sql: ${TABLE}.shiftid ;;
  }

  dimension: starttime {
    type: string
    sql: ${TABLE}.starttime ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
