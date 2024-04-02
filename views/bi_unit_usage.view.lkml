view: bi_unit_usage {
  sql_table_name: gcpl242.bi_unit_usage ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bi_units_in_use {
    type: number
    sql: ${TABLE}.bi_units_in_use ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }
  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
