view: homepage {
  sql_table_name: gcpl242.homepage ;;
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
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: primary_homepage {
    type: yesno
    sql: ${TABLE}.primary_homepage ;;
  }
  dimension: section_order {
    type: string
    sql: ${TABLE}.section_order ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
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
	content_metadata.id,
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name,
	content_metadata.count,
	homepage_event.count,
	homepage_section.count
	]
  }

}
