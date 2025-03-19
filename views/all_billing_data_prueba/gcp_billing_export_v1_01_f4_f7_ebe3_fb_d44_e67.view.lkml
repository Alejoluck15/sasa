# The name of this view in Looker is "Gcp Billing Export V1 01 F4 F7 Ebe3 Fb D44 E67"
view: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `all_billing_data_prueba.gcp_billing_export_v1_01F4F7_EBE3FB_D44E67` ;;

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
    # This dimension will be called "Adjustment Info Description" in Explore.

  dimension: adjustment_info__description {
    type: string
    sql: ${TABLE}.adjustment_info.description ;;
    group_label: "Adjustment Info"
    group_item_label: "Description"
  }

  dimension: adjustment_info__id {
    type: string
    sql: ${TABLE}.adjustment_info.id ;;
    group_label: "Adjustment Info"
    group_item_label: "ID"
  }

  dimension: adjustment_info__mode {
    type: string
    sql: ${TABLE}.adjustment_info.mode ;;
    group_label: "Adjustment Info"
    group_item_label: "Mode"
  }

  dimension: adjustment_info__type {
    type: string
    sql: ${TABLE}.adjustment_info.type ;;
    group_label: "Adjustment Info"
    group_item_label: "Type"
  }

  dimension: billing_account_id {
    type: string
    sql: ${TABLE}.billing_account_id ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: cost_at_list {
    type: number
    sql: ${TABLE}.cost_at_list ;;
  }

  dimension: cost_type {
    type: string
    sql: ${TABLE}.cost_type ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: credits {
    hidden: yes
    sql: ${TABLE}.credits ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: currency_conversion_rate {
    type: number
    sql: ${TABLE}.currency_conversion_rate ;;
  }

  dimension_group: export {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.export_time ;;
  }

  dimension: invoice__month {
    type: string
    sql: ${TABLE}.invoice.month ;;
    group_label: "Invoice"
    group_item_label: "Month"
  }

  dimension: invoice__publisher_type {
    type: string
    sql: ${TABLE}.invoice.publisher_type ;;
    group_label: "Invoice"
    group_item_label: "Publisher Type"
  }

  dimension: labels {
    hidden: yes
    sql: ${TABLE}.labels ;;
  }

  dimension: location__country {
    type: string
    sql: ${TABLE}.location.country ;;
    group_label: "Location"
    group_item_label: "Country"
  }

  dimension: location__location {
    type: string
    sql: ${TABLE}.location.location ;;
    group_label: "Location"
    group_item_label: "Location"
  }

  dimension: location__region {
    type: string
    sql: ${TABLE}.location.region ;;
    group_label: "Location"
    group_item_label: "Region"
  }

  dimension: location__zone {
    type: string
    sql: ${TABLE}.location.zone ;;
    group_label: "Location"
    group_item_label: "Zone"
  }

  dimension: project__ancestors {
    hidden: yes
    sql: ${TABLE}.project.ancestors ;;
    group_label: "Project"
    group_item_label: "Ancestors"
  }

  dimension: project__ancestry_numbers {
    type: string
    sql: ${TABLE}.project.ancestry_numbers ;;
    group_label: "Project"
    group_item_label: "Ancestry Numbers"
  }

  dimension: project__id {
    type: string
    sql: ${TABLE}.project.id ;;
    group_label: "Project"
    group_item_label: "ID"
  }

  dimension: project__labels {
    hidden: yes
    sql: ${TABLE}.project.labels ;;
    group_label: "Project"
    group_item_label: "Labels"
  }

  dimension: project__name {
    type: string
    sql: ${TABLE}.project.name ;;
    group_label: "Project"
    group_item_label: "Name"
  }

  dimension: project__number {
    type: string
    sql: ${TABLE}.project.number ;;
    group_label: "Project"
    group_item_label: "Number"
  }

  dimension: seller_name {
    type: string
    sql: ${TABLE}.seller_name ;;
  }

  dimension: service__description {
    type: string
    sql: ${TABLE}.service.description ;;
    group_label: "Service"
    group_item_label: "Description"
  }

  dimension: service__id {
    type: string
    sql: ${TABLE}.service.id ;;
    group_label: "Service"
    group_item_label: "ID"
  }

  dimension: sku__description {
    type: string
    sql: ${TABLE}.sku.description ;;
    group_label: "SKU"
    group_item_label: "Description"
  }

  dimension: sku__id {
    type: string
    sql: ${TABLE}.sku.id ;;
    group_label: "SKU"
    group_item_label: "ID"
  }

  dimension: system_labels {
    hidden: yes
    sql: ${TABLE}.system_labels ;;
  }

  dimension: tags {
    hidden: yes
    sql: ${TABLE}.tags ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.transaction_type ;;
  }

  dimension: usage__amount {
    type: number
    sql: ${TABLE}.usage.amount ;;
    group_label: "Usage"
    group_item_label: "Amount"
  }

  dimension: usage__amount_in_pricing_units {
    type: number
    sql: ${TABLE}.usage.amount_in_pricing_units ;;
    group_label: "Usage"
    group_item_label: "Amount In Pricing Units"
  }

  dimension: usage__pricing_unit {
    type: string
    sql: ${TABLE}.usage.pricing_unit ;;
    group_label: "Usage"
    group_item_label: "Pricing Unit"
  }

  dimension: usage__unit {
    type: string
    sql: ${TABLE}.usage.unit ;;
    group_label: "Usage"
    group_item_label: "Unit"
  }

  dimension_group: usage_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.usage_end_time ;;
  }

  dimension_group: usage_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.usage_start_time ;;
  }
  measure: count {
    type: count
    drill_fields: [seller_name, project__name]
  }
}

# The name of this view in Looker is "Gcp Billing Export V1 01 F4 F7 Ebe3 Fb D44 E67 Tags"
view: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__tags {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__tags {
    type: string
    hidden: yes
    sql: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__tags ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Inherited" in Explore.

  dimension: inherited {
    type: yesno
    sql: inherited ;;
  }

  dimension: key {
    type: string
    sql: key ;;
  }

  dimension: namespace {
    type: string
    sql: namespace ;;
  }

  dimension: value {
    type: string
    sql: value ;;
  }
}

# The name of this view in Looker is "Gcp Billing Export V1 01 F4 F7 Ebe3 Fb D44 E67 Labels"
view: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__labels {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__labels {
    type: string
    hidden: yes
    sql: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__labels ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  dimension: key {
    type: string
    sql: key ;;
  }

  dimension: value {
    type: string
    sql: value ;;
  }
}

# The name of this view in Looker is "Gcp Billing Export V1 01 F4 F7 Ebe3 Fb D44 E67 Credits"
view: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__credits {
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Amount" in Explore.

  dimension: amount {
    type: number
    sql: amount ;;
  }

  dimension: full_name {
    type: string
    sql: full_name ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__credits {
    type: string
    hidden: yes
    sql: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__credits ;;
  }

  dimension: name {
    type: string
    sql: name ;;
  }

  dimension: type {
    type: string
    sql: type ;;
  }
}

# The name of this view in Looker is "Gcp Billing Export V1 01 F4 F7 Ebe3 Fb D44 E67 System Labels"
view: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__system_labels {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__system_labels {
    type: string
    hidden: yes
    sql: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__system_labels ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  dimension: key {
    type: string
    sql: key ;;
  }

  dimension: value {
    type: string
    sql: value ;;
  }
}

# The name of this view in Looker is "Gcp Billing Export V1 01 F4 F7 Ebe3 Fb D44 E67 Project Labels"
view: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__project__labels {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

# The name of this view in Looker is "Gcp Billing Export V1 01 F4 F7 Ebe3 Fb D44 E67 Project Ancestors"
view: gcp_billing_export_v1_01_f4_f7_ebe3_fb_d44_e67__project__ancestors {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Display Name" in Explore.

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: resource_name {
    type: string
    sql: ${TABLE}.resource_name ;;
  }
}
