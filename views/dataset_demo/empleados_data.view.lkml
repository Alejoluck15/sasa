# The name of this view in Looker is "Empleados Data"
view: empleados_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dataset_demo.empleados_data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Apellido" in Explore.

  dimension: apellido {
    type: string
    sql: ${TABLE}.apellido ;;
  }

  dimension: departamento {
    type: string
    sql: ${TABLE}.departamento ;;
  }

  dimension: direccion {
    type: string
    sql: ${TABLE}.direccion ;;
  }

  dimension: edad {
    type: number
    sql: ${TABLE}.edad ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_contratacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_contratacion ;;
  }

  dimension_group: fecha_nacimiento {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_nacimiento ;;
  }

  dimension: habilidades {
    type: string
    sql: ${TABLE}.habilidades ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: salario {
    type: number
    sql: ${TABLE}.salario ;;
  }

  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }
  measure: count {
    type: count
  }
}
