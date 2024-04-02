view: google_config_default_new_user_role {
  sql_table_name: gcpl242.google_config_default_new_user_role ;;
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
  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, google_config.id, role.id, role.name]
  }
}
