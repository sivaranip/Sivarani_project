view: group_user {
  sql_table_name: gcpl242.group_user ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: from_group_id {
    type: number
    sql: ${TABLE}.from_group_id ;;
  }
  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.group_id ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	group.id,
	group.name,
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name
	]
  }

}
