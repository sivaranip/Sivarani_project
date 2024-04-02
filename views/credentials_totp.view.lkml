view: credentials_totp {
  sql_table_name: gcpl242.credentials_totp ;;
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
  dimension: encrypted_secret {
    type: string
    sql: ${TABLE}.encrypted_secret ;;
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
  dimension: verified {
    type: yesno
    sql: ${TABLE}.verified ;;
  }
  measure: count {
    type: count
    drill_fields: [id, user.dev_branch_name, user.first_name, user.id, user.last_name]
  }
}
