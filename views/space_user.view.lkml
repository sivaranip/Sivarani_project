view: space_user {
  sql_table_name: gcpl242.space_user ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: space_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.space_id ;;
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
	space.id,
	space.name,
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name
	]
  }

}
