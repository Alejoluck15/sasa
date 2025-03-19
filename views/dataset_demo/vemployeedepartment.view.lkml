# The name of this view in Looker is "Vemployeedepartment"
view: vemployeedepartment {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dataset_demo.vemployeedepartment` ;;

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

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.firstname ;;
  }

  dimension: groupname {
    type: string
    sql: ${TABLE}.groupname ;;
  }

  dimension: jobtitle {
    type: string
    sql: ${TABLE}.jobtitle ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.lastname ;;
  }

  dimension: middlename {
    type: string
    sql: ${TABLE}.middlename ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: startdate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.startdate ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}.suffix ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
  measure: count {
    type: count
    drill_fields: [firstname, middlename, groupname, lastname]
  }
}
