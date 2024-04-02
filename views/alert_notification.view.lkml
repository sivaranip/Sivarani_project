view: alert_notification {
  sql_table_name: gcpl242.alert_notification ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: alert_condition_result_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.alert_condition_result_id ;;
  }
  dimension: state {
    type: number
    sql: ${TABLE}.state ;;
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
	alert_condition_result.id,
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name
	]
  }

}
