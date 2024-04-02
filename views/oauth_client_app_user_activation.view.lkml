view: oauth_client_app_user_activation {
  sql_table_name: gcpl242.oauth_client_app_user_activation ;;
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
  dimension: oauth_client_app_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oauth_client_app_id ;;
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
	oauth_client_app.display_name,
	oauth_client_app.id,
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name
	]
  }

}
