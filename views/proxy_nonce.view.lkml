view: proxy_nonce {
  sql_table_name: gcpl242.proxy_nonce ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: created_at {
    type: number
    sql: ${TABLE}.created_at ;;
  }
  dimension: expires_at {
    type: number
    sql: ${TABLE}.expires_at ;;
  }
  dimension: nonce {
    type: string
    sql: ${TABLE}.nonce ;;
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
