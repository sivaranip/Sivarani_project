view: cookie_consent {
  sql_table_name: gcpl242.cookie_consent ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
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
