view: user_content_digest {
  sql_table_name: gcpl242.user_content_digest ;;
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
  dimension: sent_to_pinger {
    type: yesno
    sql: ${TABLE}.sent_to_pinger ;;
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
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name,
	content_digest_item.count
	]
  }

}
