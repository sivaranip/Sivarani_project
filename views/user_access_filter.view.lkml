view: user_access_filter {
  sql_table_name: gcpl242.user_access_filter ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: dictionary {
    type: string
    sql: ${TABLE}.dictionary ;;
  }
  dimension: field {
    type: string
    sql: ${TABLE}.field ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
    drill_fields: [id, user.dev_branch_name, user.first_name, user.id, user.last_name]
  }
}
