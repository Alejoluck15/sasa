# The name of this view in Looker is "Employees"
view: employees {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dataset_demo.employees` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_ingreso {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_ingreso ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Genero" in Explore.

  dimension: genero {
    type: string
    sql: ${TABLE}.genero ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: job {
    type: string
    sql: ${TABLE}.job ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: sueldo {
    type: number
    sql: ${TABLE}.sueldo ;;
  }
  measure: count {
    type: count
  }
}
