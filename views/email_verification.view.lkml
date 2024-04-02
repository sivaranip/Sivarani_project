view: email_verification {
  sql_table_name: gcpl242.email_verification ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: created_at {
    type: number
    sql: ${TABLE}.created_at ;;
  }
  dimension: encrypted_token {
    type: string
    sql: ${TABLE}.encrypted_token ;;
  }
  dimension: expires_at {
    type: number
    sql: ${TABLE}.expires_at ;;
  }
  dimension: new_email {
    type: string
    sql: ${TABLE}.new_email ;;
  }
  dimension: previous_email {
    type: string
    sql: ${TABLE}.previous_email ;;
  }
  dimension: secure_identifier {
    type: string
    sql: ${TABLE}.secure_identifier ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  dimension: verified_at {
    type: number
    sql: ${TABLE}.verified_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, user.dev_branch_name, user.first_name, user.id, user.last_name]
  }
}
