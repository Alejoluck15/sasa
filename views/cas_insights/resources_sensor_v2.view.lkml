# The name of this view in Looker is "Resources Sensor V2"
view: resources_sensor_v2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `cas_insights.resources_sensor_v2` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cpuidle" in Explore.

  dimension: cpuidle {
    type: number
    sql: ${TABLE}.CPUIdle ;;
  }

  dimension: cputime {
    type: number
    sql: ${TABLE}.CPUTime ;;
  }

  dimension: deployment_id {
    type: number
    sql: ${TABLE}.DeploymentId ;;
  }

  dimension: disk_free_percent {
    type: number
    sql: ${TABLE}.DiskFreePercent ;;
  }

  dimension: disk_free_total {
    type: number
    sql: ${TABLE}.DiskFreeTotal ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.Hostname ;;
  }

  dimension: memory_available {
    type: number
    sql: ${TABLE}.MemoryAvailable ;;
  }

  dimension: memory_committed {
    type: number
    sql: ${TABLE}.MemoryCommitted ;;
  }

  dimension: net_bytes_received {
    type: number
    sql: ${TABLE}.NetBytesReceived ;;
  }

  dimension: net_bytes_sent {
    type: number
    sql: ${TABLE}.NetBytesSent ;;
  }

  dimension: net_bytes_total {
    type: number
    sql: ${TABLE}.NetBytesTotal ;;
  }

  dimension: net_total {
    type: number
    sql: ${TABLE}.NetTotal ;;
  }

  dimension: partner_organization_id {
    type: number
    sql: ${TABLE}.PartnerOrganizationId ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: registered_at {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.RegisteredAt ;;
  }

  dimension_group: registered_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.RegisteredDate ;;
  }
  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
