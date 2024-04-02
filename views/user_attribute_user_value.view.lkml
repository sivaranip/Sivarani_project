view: user_attribute_user_value {
  sql_table_name: gcpl242.user_attribute_user_value ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: user_attribute_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_attribute_id ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	user_attribute.id,
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name
	]
  }

}
