view: credentials_looker_openid {
  sql_table_name: gcpl242.credentials_looker_openid ;;
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
  dimension: encrypted_secret {
    type: string
    sql: ${TABLE}.encrypted_secret ;;
  }
  dimension_group: last_login {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_login_at ;;
  }
  dimension: last_login_ip {
    type: string
    sql: ${TABLE}.last_login_ip ;;
  }
  dimension: secret {
    type: string
    sql: ${TABLE}.secret ;;
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
