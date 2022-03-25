view: grace_0325 {
  sql_table_name: `Grace_0325.Grace_0325`
    ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: holiday {
    type: string
    sql: ${TABLE}.Holiday ;;
  }

  dimension: in {
    type: number
    sql: ${TABLE}.`In` ;;
  }

  dimension: suncount {
    type: number
    sql: ${TABLE}.`In`  + ${TABLE}.Out ;;
  }

  dimension: difference {
    type: number
    value_format_name: percent_0
    sql: (${TABLE}.`In`  / ${TABLE}.Out) - 1 ;;
    html: {% if value > 0 %}
         <p style="color: #990000">▲  {{ rendered_value }}</p>
      {% elsif value < 0 %}
        <p style="color: #009900">▼  {{ rendered_value }}</p>
      {% else %}
        <p style="color: #000000">{{ rendered_value }}</p>
      {% endif %} ;;
  }

  dimension: line {
    type: number
    sql: ${TABLE}.Line ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: out {
    type: number
    sql: ${TABLE}.Out ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.Time ;;
  }

  dimension: transfer {
    type: string
    sql: ${TABLE}.Transfer ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: week {
    type: string
    sql: ${TABLE}.Week ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
