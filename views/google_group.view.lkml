view: google_group {
  sql_table_name: gcpl242.google_group ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: google_config_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.google_config_id ;;
  }
  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.group_id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: proposed_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.proposed_group_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	name,
	google_config.id,
	group.id,
	group.name,
	proposed_group.id,
	proposed_group.name
	]
  }

}
