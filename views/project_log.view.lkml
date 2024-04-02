view: project_log {
  sql_table_name: gcpl242.project_log ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: created_at {
    type: number
    sql: ${TABLE}.created_at ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: duration_ms {
    type: number
    sql: ${TABLE}.duration_ms ;;
  }
  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, user.dev_branch_name, user.first_name, user.id, user.last_name]
  }
}
