view: google_config {
  sql_table_name: gcpl242.google_config ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }
  dimension: allow_direct_roles {
    type: yesno
    sql: ${TABLE}.allow_direct_roles ;;
  }
  dimension: allow_normal_group_membership {
    type: yesno
    sql: ${TABLE}.allow_normal_group_membership ;;
  }
  dimension: allow_roles_from_normal_groups {
    type: yesno
    sql: ${TABLE}.allow_roles_from_normal_groups ;;
  }
  dimension: alternate_email_login_allowed {
    type: yesno
    sql: ${TABLE}.alternate_email_login_allowed ;;
  }
  dimension: auth_requires_role {
    type: yesno
    sql: ${TABLE}.auth_requires_role ;;
  }
  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
  }
  dimension: client_secret {
    type: string
    sql: ${TABLE}.client_secret ;;
  }
  dimension: credentials_encrypted {
    type: yesno
    sql: ${TABLE}.credentials_encrypted ;;
  }
  dimension: domains {
    type: string
    sql: ${TABLE}.domains ;;
  }
  dimension: enabled {
    type: yesno
    sql: ${TABLE}.enabled ;;
  }
  dimension_group: modified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.modified_at ;;
  }
  dimension: modified_by {
    type: number
    sql: ${TABLE}.modified_by ;;
  }
  dimension: new_user_migration_types {
    type: string
    sql: ${TABLE}.new_user_migration_types ;;
  }
  dimension: set_roles_from_groups {
    type: yesno
    sql: ${TABLE}.set_roles_from_groups ;;
  }
  dimension_group: test_expires {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.test_expires_at ;;
  }
  dimension: test_slug {
    type: string
    sql: ${TABLE}.test_slug ;;
  }
  measure: count {
    type: count
    drill_fields: [id, google_config_default_new_user_role.count, google_group.count]
  }
}
