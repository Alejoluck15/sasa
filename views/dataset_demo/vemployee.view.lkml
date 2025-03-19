# The name of this view in Looker is "Vemployee"
view: vemployee {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dataset_demo.vemployee` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Additionalcontactinfo" in Explore.

  dimension: additionalcontactinfo {
    type: string
    sql: ${TABLE}.additionalcontactinfo ;;
  }

  dimension: addressline1 {
    type: string
    sql: ${TABLE}.addressline1 ;;
  }

  dimension: addressline2 {
    type: string
    sql: ${TABLE}.addressline2 ;;
  }

  dimension: businessentityid {
    type: number
    value_format_name: id
    sql: ${TABLE}.businessentityid ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: countryregionname {
    type: string
    sql: ${TABLE}.countryregionname ;;
  }

  dimension: emailaddress {
    type: string
    sql: ${TABLE}.emailaddress ;;
  }

  dimension: emailpromotion {
    type: number
    sql: ${TABLE}.emailpromotion ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.firstname ;;
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

  dimension: phonenumber {
    type: string
    sql: ${TABLE}.phonenumber ;;
  }

  dimension: phonenumbertype {
    type: string
    sql: ${TABLE}.phonenumbertype ;;
  }

  dimension: postalcode {
    type: string
    sql: ${TABLE}.postalcode ;;
  }

  dimension: stateprovincename {
    type: string
    sql: ${TABLE}.stateprovincename ;;
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
    drill_fields: [firstname, stateprovincename, middlename, countryregionname, lastname]
  }
}
