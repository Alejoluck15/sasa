# The name of this view in Looker is "Employeedepartmenthistory"
view: employeedepartmenthistory {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dataset_demo.employeedepartmenthistory` ;;

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

  dimension: departmentid {
    type: number
    value_format_name: id
    sql: ${TABLE}.departmentid ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: enddate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.enddate ;;
  }

  dimension_group: modifieddate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.modifieddate ;;
  }

  dimension: shiftid {
    type: number
    value_format_name: id
    sql: ${TABLE}.shiftid ;;
  }

  dimension_group: startdate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.startdate ;;
  }
  measure: count {
    type: count
  }
}
