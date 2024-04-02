view: alert_destination {
  sql_table_name: gcpl242.alert_destination ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: alert_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.alert_id ;;
  }
  dimension: delivery_channel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.delivery_channel_id ;;
  }
  dimension: email_address {
    type: string
    sql: ${TABLE}.email_address ;;
  }
  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
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
	alert.id,
	delivery_channel.id,
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name
	]
  }

}
