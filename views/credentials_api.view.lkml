view: credentials_api {
  sql_table_name: gcpl242.credentials_api ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: last_request {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_request_at ;;
  }
  dimension: secret {
    type: string
    sql: ${TABLE}.secret ;;
  }
  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
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
