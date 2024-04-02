view: credentials_embed {
  sql_table_name: gcpl242.credentials_embed ;;
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
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: external_group_id {
    type: string
    sql: ${TABLE}.external_group_id ;;
  }
  dimension: external_user_id {
    type: string
    sql: ${TABLE}.external_user_id ;;
  }
  dimension_group: last_logged_in {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_logged_in_at ;;
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
