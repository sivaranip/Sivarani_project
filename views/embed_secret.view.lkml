view: embed_secret {
  sql_table_name: gcpl242.embed_secret ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: algorithm {
    type: string
    sql: ${TABLE}.algorithm ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: enabled {
    type: yesno
    sql: ${TABLE}.enabled ;;
  }
  dimension: encrypted_secret {
    type: string
    sql: ${TABLE}.encrypted_secret ;;
  }
  dimension: secret_type {
    type: string
    sql: ${TABLE}.secret_type ;;
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
