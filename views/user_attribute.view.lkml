view: user_attribute {
  sql_table_name: gcpl242.user_attribute ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: key {
    type: string
    sql: ${TABLE}.`key` ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	user.dev_branch_name,
	user.first_name,
	user.id,
	user.last_name,
	ldap_user_attribute_attribute.count,
	oidc_user_attribute_attribute.count,
	saml_user_attribute_attribute.count,
	user_attribute_group_value.count,
	user_attribute_user_value.count
	]
  }

}
