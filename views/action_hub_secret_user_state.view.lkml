view: action_hub_secret_user_state {
  sql_table_name: gcpl242.action_hub_secret_user_state ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: action_id {
    type: string
    sql: ${TABLE}.action_id ;;
  }
  dimension: encrypted_action_hub_secret_state {
    type: string
    sql: ${TABLE}.encrypted_action_hub_secret_state ;;
  }
  dimension_group: next_run {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.next_run_at ;;
  }
  dimension: ttl_seconds {
    type: number
    sql: ${TABLE}.ttl_seconds ;;
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
