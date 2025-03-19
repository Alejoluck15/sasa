# The name of this view in Looker is "Stdout"
view: stdout {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `gke_logs.stdout` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: error_groups {
    hidden: yes
    sql: ${TABLE}.errorGroups ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "HTTP Request Cache Fill Bytes" in Explore.

  dimension: http_request__cache_fill_bytes {
    type: number
    sql: ${TABLE}.httpRequest.cacheFillBytes ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Fill Bytes"
  }

  dimension: http_request__cache_hit {
    type: yesno
    sql: ${TABLE}.httpRequest.cacheHit ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Hit"
  }

  dimension: http_request__cache_lookup {
    type: yesno
    sql: ${TABLE}.httpRequest.cacheLookup ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Lookup"
  }

  dimension: http_request__cache_validated_with_origin_server {
    type: yesno
    sql: ${TABLE}.httpRequest.cacheValidatedWithOriginServer ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Validated with Origin Server"
  }

  dimension: http_request__protocol {
    type: string
    sql: ${TABLE}.httpRequest.protocol ;;
    group_label: "HTTP Request"
    group_item_label: "Protocol"
  }

  dimension: http_request__referer {
    type: string
    sql: ${TABLE}.httpRequest.referer ;;
    group_label: "HTTP Request"
    group_item_label: "Referer"
  }

  dimension: http_request__remote_ip {
    type: string
    sql: ${TABLE}.httpRequest.remoteIp ;;
    group_label: "HTTP Request"
    group_item_label: "Remote IP"
  }

  dimension: http_request__request_method {
    type: string
    sql: ${TABLE}.httpRequest.requestMethod ;;
    group_label: "HTTP Request"
    group_item_label: "Request Method"
  }

  dimension: http_request__request_size {
    type: number
    sql: ${TABLE}.httpRequest.requestSize ;;
    group_label: "HTTP Request"
    group_item_label: "Request Size"
  }

  dimension: http_request__request_url {
    type: string
    sql: ${TABLE}.httpRequest.requestUrl ;;
    group_label: "HTTP Request"
    group_item_label: "Request URL"
  }

  dimension: http_request__response_size {
    type: number
    sql: ${TABLE}.httpRequest.responseSize ;;
    group_label: "HTTP Request"
    group_item_label: "Response Size"
  }

  dimension: http_request__server_ip {
    type: string
    sql: ${TABLE}.httpRequest.serverIp ;;
    group_label: "HTTP Request"
    group_item_label: "Server IP"
  }

  dimension: http_request__status {
    type: number
    sql: ${TABLE}.httpRequest.status ;;
    group_label: "HTTP Request"
    group_item_label: "Status"
  }

  dimension: http_request__user_agent {
    type: string
    sql: ${TABLE}.httpRequest.userAgent ;;
    group_label: "HTTP Request"
    group_item_label: "User Agent"
  }

  dimension: insert_id {
    type: string
    sql: ${TABLE}.insertId ;;
  }

  dimension: json_payload__level {
    type: string
    sql: ${TABLE}.jsonPayload.level ;;
    group_label: "JSON Payload"
    group_item_label: "Level"
  }

  dimension: json_payload__message {
    type: string
    sql: ${TABLE}.jsonPayload.message ;;
    group_label: "JSON Payload"
    group_item_label: "Message"
  }

  dimension: json_payload__timestamp {
    type: string
    sql: ${TABLE}.jsonPayload.timestamp ;;
    group_label: "JSON Payload"
    group_item_label: "Timestamp"
  }

  dimension: labels__compute_googleapis_com_resource_name {
    type: string
    sql: ${TABLE}.labels.compute_googleapis_com_resource_name ;;
    group_label: "Labels"
    group_item_label: "Compute Googleapis Com Resource Name"
  }

  dimension: labels__k8s_pod_app {
    type: string
    sql: ${TABLE}.labels.k8s_pod_app ;;
    group_label: "Labels"
    group_item_label: "K8s Pod App"
  }

  dimension: labels__k8s_pod_env {
    type: string
    sql: ${TABLE}.labels.k8s_pod_env ;;
    group_label: "Labels"
    group_item_label: "K8s Pod Env"
  }

  dimension: labels__k8s_pod_pod_template_hash {
    type: string
    sql: ${TABLE}.labels.k8s_pod_pod_template_hash ;;
    group_label: "Labels"
    group_item_label: "K8s Pod Pod Template Hash"
  }

  dimension: labels__k8s_pod_security_istio_io_tlsmode {
    type: string
    sql: ${TABLE}.labels.k8s_pod_security_istio_io_tlsmode ;;
    group_label: "Labels"
    group_item_label: "K8s Pod Security Istio Io Tlsmode"
  }

  dimension: labels__k8s_pod_service_istio_io_canonical_name {
    type: string
    sql: ${TABLE}.labels.k8s_pod_service_istio_io_canonical_name ;;
    group_label: "Labels"
    group_item_label: "K8s Pod Service Istio Io Canonical Name"
  }

  dimension: labels__k8s_pod_service_istio_io_canonical_revision {
    type: string
    sql: ${TABLE}.labels.k8s_pod_service_istio_io_canonical_revision ;;
    group_label: "Labels"
    group_item_label: "K8s Pod Service Istio Io Canonical Revision"
  }

  dimension: labels__k8s_pod_topology_istio_io_network {
    type: string
    sql: ${TABLE}.labels.k8s_pod_topology_istio_io_network ;;
    group_label: "Labels"
    group_item_label: "K8s Pod Topology Istio Io Network"
  }

  dimension: labels__k8s_pod_version {
    type: string
    sql: ${TABLE}.labels.k8s_pod_version ;;
    group_label: "Labels"
    group_item_label: "K8s Pod Version"
  }

  dimension: log_name {
    type: string
    sql: ${TABLE}.logName ;;
  }

  dimension: operation__first {
    type: yesno
    sql: ${TABLE}.operation.first ;;
    group_label: "Operation"
    group_item_label: "First"
  }

  dimension: operation__id {
    type: string
    sql: ${TABLE}.operation.id ;;
    group_label: "Operation"
    group_item_label: "ID"
  }

  dimension: operation__last {
    type: yesno
    sql: ${TABLE}.operation.last ;;
    group_label: "Operation"
    group_item_label: "Last"
  }

  dimension: operation__producer {
    type: string
    sql: ${TABLE}.operation.producer ;;
    group_label: "Operation"
    group_item_label: "Producer"
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: receive_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.receiveTimestamp ;;
  }

  dimension: resource__labels__cluster_name {
    type: string
    sql: ${TABLE}.resource.labels.cluster_name ;;
    group_label: "Resource Labels"
    group_item_label: "Cluster Name"
  }

  dimension: resource__labels__container_name {
    type: string
    sql: ${TABLE}.resource.labels.container_name ;;
    group_label: "Resource Labels"
    group_item_label: "Container Name"
  }

  dimension: resource__labels__location {
    type: string
    sql: ${TABLE}.resource.labels.location ;;
    group_label: "Resource Labels"
    group_item_label: "Location"
  }

  dimension: resource__labels__namespace_name {
    type: string
    sql: ${TABLE}.resource.labels.namespace_name ;;
    group_label: "Resource Labels"
    group_item_label: "Namespace Name"
  }

  dimension: resource__labels__pod_name {
    type: string
    sql: ${TABLE}.resource.labels.pod_name ;;
    group_label: "Resource Labels"
    group_item_label: "Pod Name"
  }

  dimension: resource__labels__project_id {
    type: string
    sql: ${TABLE}.resource.labels.project_id ;;
    group_label: "Resource Labels"
    group_item_label: "Project ID"
  }

  dimension: resource__type {
    type: string
    sql: ${TABLE}.resource.type ;;
    group_label: "Resource"
    group_item_label: "Type"
  }

  dimension: severity {
    type: string
    sql: ${TABLE}.severity ;;
  }

  dimension: source_location__file {
    type: string
    sql: ${TABLE}.sourceLocation.file ;;
    group_label: "Source Location"
    group_item_label: "File"
  }

  dimension: source_location__function {
    type: string
    sql: ${TABLE}.sourceLocation.function ;;
    group_label: "Source Location"
    group_item_label: "Function"
  }

  dimension: source_location__line {
    type: number
    sql: ${TABLE}.sourceLocation.line ;;
    group_label: "Source Location"
    group_item_label: "Line"
  }

  dimension: span_id {
    type: string
    sql: ${TABLE}.spanId ;;
  }

  dimension: split__index {
    type: number
    sql: ${TABLE}.split.index ;;
    group_label: "Split"
    group_item_label: "Index"
  }

  dimension: split__total_splits {
    type: number
    sql: ${TABLE}.split.totalSplits ;;
    group_label: "Split"
    group_item_label: "Total Splits"
  }

  dimension: split__uid {
    type: string
    sql: ${TABLE}.split.uid ;;
    group_label: "Split"
    group_item_label: "Uid"
  }

  dimension: text_payload {
    type: string
    sql: ${TABLE}.textPayload ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: trace {
    type: string
    sql: ${TABLE}.trace ;;
  }

  dimension: trace_sampled {
    type: yesno
    sql: ${TABLE}.traceSampled ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	log_name,
	resource__labels__pod_name,
	resource__labels__cluster_name,
	resource__labels__container_name,
	resource__labels__namespace_name,
	labels__compute_googleapis_com_resource_name,
	labels__k8s_pod_service_istio_io_canonical_name
	]
  }

}

# The name of this view in Looker is "Stdout Error Groups"
view: stdout__error_groups {
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: id ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: stdout__error_groups {
    type: string
    hidden: yes
    sql: stdout__error_groups ;;
  }
}
