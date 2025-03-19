# The name of this view in Looker is "Test"
view: test {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dataset_demo.test` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _partitiondate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Body 0" in Explore.

  dimension: body_0 {
    type: string
    sql: ${TABLE}.body_0 ;;
  }

  dimension: body_1 {
    type: string
    sql: ${TABLE}.body_1 ;;
  }

  dimension: body_2 {
    type: string
    sql: ${TABLE}.body_2 ;;
  }

  dimension: body_3 {
    type: string
    sql: ${TABLE}.body_3 ;;
  }

  dimension: body_4 {
    type: string
    sql: ${TABLE}.body_4 ;;
  }

  dimension: body_5 {
    type: string
    sql: ${TABLE}.body_5 ;;
  }

  dimension: body_6 {
    type: string
    sql: ${TABLE}.body_6 ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }
  measure: count {
    type: count
  }
}
