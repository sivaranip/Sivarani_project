view: credentials_google {
  sql_table_name: gcpl242.credentials_google ;;
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
  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: encrypted_secret {
    type: string
    sql: ${TABLE}.encrypted_secret ;;
  }
  dimension: google_user_id {
    type: string
    sql: ${TABLE}.google_user_id ;;
  }
  dimension_group: logged_in {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.logged_in_at ;;
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
