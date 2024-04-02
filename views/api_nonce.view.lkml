view: api_nonce {
  sql_table_name: gcpl242.api_nonce ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: nonce {
    type: string
    sql: ${TABLE}.nonce ;;
  }
  dimension_group: time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.time ;;
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
