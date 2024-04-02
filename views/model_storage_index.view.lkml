view: model_storage_index {
  sql_table_name: gcpl242.model_storage_index ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: commit_sha {
    type: string
    sql: ${TABLE}.commit_sha ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: key {
    type: string
    sql: ${TABLE}.`key` ;;
  }
  dimension: model_name {
    type: string
    sql: ${TABLE}.model_name ;;
  }
  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, model_name]
  }
}
