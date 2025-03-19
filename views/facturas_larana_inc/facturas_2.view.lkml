# The name of this view in Looker is "Facturas 2"
view: facturas_2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `facturas_larana_inc.facturas_2` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cantidades" in Explore.

  dimension: cantidades {
    type: number
    sql: ${TABLE}.cantidades ;;
  }

  dimension: cliente_factura {
    type: string
    sql: ${TABLE}.cliente_factura ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_factura {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_factura ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: id_factura {
    type: string
    sql: ${TABLE}.id_factura ;;
  }

  dimension: importes {
    type: number
    sql: ${TABLE}.importes ;;
  }

  dimension: precios {
    type: number
    sql: ${TABLE}.precios ;;
  }
  measure: count {
    type: count
  }
}
