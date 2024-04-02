view: content_favorite {
  sql_table_name: gcpl242.content_favorite ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: content_metadata_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.content_metadata_id ;;
  }
  dimension: dashboard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.dashboard_id ;;
  }
  dimension: look_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.look_id ;;
  }
  dimension: lookml_dashboard_id {
    type: string
    sql: ${TABLE}.lookml_dashboard_id ;;
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
	content_metadata.id,
	dashboard.id,
	look.id,
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name
	]
  }

}
