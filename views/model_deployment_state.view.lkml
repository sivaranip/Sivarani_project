view: model_deployment_state {
  sql_table_name: gcpl242.model_deployment_state ;;
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
