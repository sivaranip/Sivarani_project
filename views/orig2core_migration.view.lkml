view: orig2core_migration {
  sql_table_name: gcpl242.orig2core_migration ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cmek_path {
    type: string
    sql: ${TABLE}.cmek_path ;;
  }
  dimension: gcs_bucket {
    type: string
    sql: ${TABLE}.gcs_bucket ;;
  }
  dimension: gcs_folder {
    type: string
    sql: ${TABLE}.gcs_folder ;;
  }
  dimension_group: requested {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.requested_at ;;
  }
  dimension: requested_by_userid {
    type: string
    sql: ${TABLE}.requested_by_userid ;;
  }
  dimension: service_json {
    type: string
    sql: ${TABLE}.service_json ;;
  }
  dimension: signature {
    type: string
    sql: ${TABLE}.signature ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: status_detail {
    type: string
    sql: ${TABLE}.status_detail ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
