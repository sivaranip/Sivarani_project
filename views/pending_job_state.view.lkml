view: pending_job_state {
  sql_table_name: gcpl242.pending_job_state ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: action_job_id {
    type: string
    sql: ${TABLE}.action_job_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: encrypted_job_token {
    type: string
    sql: ${TABLE}.encrypted_job_token ;;
  }
  dimension_group: expires {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.expires_at ;;
  }
  dimension: lookup_id {
    type: string
    sql: ${TABLE}.lookup_id ;;
  }
  dimension: scheduled_job_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.scheduled_job_id ;;
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
	scheduled_job.id,
	scheduled_job.name,
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name
	]
  }

}
