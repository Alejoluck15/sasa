# The name of this view in Looker is "Employee Demo Dataflow"
view: employee_demo_dataflow {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dataset_demo.employee_demo_dataflow` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: birthdate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.birthdate ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Businessentityid" in Explore.

  dimension: businessentityid {
    type: number
    value_format_name: id
    sql: ${TABLE}.businessentityid ;;
  }

  dimension: currentflag {
    type: yesno
    sql: ${TABLE}.currentflag ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension_group: hiredate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.hiredate ;;
  }

  dimension: jobtitle {
    type: string
    sql: ${TABLE}.jobtitle ;;
  }

  dimension: loginid {
    type: string
    sql: ${TABLE}.loginid ;;
  }

  dimension: maritalstatus {
    type: string
    sql: ${TABLE}.maritalstatus ;;
  }

  dimension_group: modifieddate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.modifieddate ;;
  }

  dimension: nationalidnumber {
    type: string
    sql: ${TABLE}.nationalidnumber ;;
  }

  dimension: organizationnode {
    type: string
    sql: ${TABLE}.organizationnode ;;
  }

  dimension: rowguid {
    type: string
    sql: ${TABLE}.rowguid ;;
  }

  dimension: salariedflag {
    type: yesno
    sql: ${TABLE}.salariedflag ;;
  }

  dimension: sickleavehours {
    type: number
    sql: ${TABLE}.sickleavehours ;;
  }

  dimension: vacationhours {
    type: number
    sql: ${TABLE}.vacationhours ;;
  }
  measure: count {
    type: count
  }
}
