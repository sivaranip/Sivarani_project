view: role_group {
  sql_table_name: gcpl242.role_group ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.group_id ;;
  }
  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, group.id, group.name, role.id, role.name]
  }
}
