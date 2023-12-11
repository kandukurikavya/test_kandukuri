view: electronics_sales {
  sql_table_name: `finance_data.Electronics_Sales` ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
    link: {

      label: "linking a dashboard"

      url: "https://gcpm2316.cloud.looker.com/dashboards/31?Brand={{brand._value}}&Category={{_filters['electronics_sales.category'] | url_encode }}"
      #{{ _filters['electronics_sales.state'] | url_encode }}"
    }
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: item_id {
    type: number
    sql: ${TABLE}.item_id ;;


  }
  dimension: model_attr {
    type: string
    sql: ${TABLE}.model_attr ;;
  }
  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }
  dimension: split {
    type: number
    sql: ${TABLE}.split ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.timestamp ;;
  }
  dimension: user_attr {
    type: string
    sql: ${TABLE}.user_attr ;;
  }
  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
  }
}
