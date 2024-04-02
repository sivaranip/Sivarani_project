view: group {
  sql_table_name: gcpl242.`group` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: can_add_to_content_metadata {
    type: yesno
    sql: ${TABLE}.can_add_to_content_metadata ;;
  }
  dimension: external_group_id {
    type: string
    sql: ${TABLE}.external_group_id ;;
  }
  dimension: externally_managed {
    type: yesno
    sql: ${TABLE}.externally_managed ;;
  }
  dimension: externally_orphaned {
    type: yesno
    sql: ${TABLE}.externally_orphaned ;;
  }
  dimension: include_by_default {
    type: yesno
    sql: ${TABLE}.include_by_default ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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
	content_metadata_group_user.count,
	content_view.count,
	google_group.count,
	group_user.count,
	ldap_config_default_new_user_group.count,
	ldap_group.count,
	oauth_client_app.count,
	oidc_config_default_new_user_group.count,
	oidc_group.count,
	role_group.count,
	saml_config_default_new_user_group.count,
	saml_group.count,
	user_attribute_group_value.count
	]
  }

}
