view: db_credentials {
  sql_table_name: gcpl242.db_credentials ;;
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
  dimension: encrypted_password {
    type: string
    sql: ${TABLE}.encrypted_password ;;
  }
  dimension: encrypted_username {
    type: string
    sql: ${TABLE}.encrypted_username ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
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
	encrypted_username,
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name
	]
  }

}
