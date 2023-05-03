# The name of this view in Looker is "Super Store"
view: super_store {
  label: "{{ _user_attributes['hidden'] }}"
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `lags_european_data.SuperStore`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category" in Explore.

  dimension: category {
    type: string
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.category ;;
  }

  dimension: country {
    type: string
    label: "{{ _user_attributes['hidden'] }}"
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: customer_name {
    type: string
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.customer_name ;;
  }

  dimension: discount {
    type: number
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.discount ;;
  }

  dimension: market {
    type: string
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.market ;;
  }

  dimension: order_date {
    type: string
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.order_date ;;
  }

  dimension: order_id {
    type: string
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_priority {
    type: string
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.order_priority ;;
  }

  dimension: product_id {
    type: string
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_name {
    type: string
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.product_name ;;
  }

  dimension: profit {
    type: number
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.profit ;;
  }

  dimension: quantity {
    type: number
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.quantity ;;
  }

  dimension: region {
    type: string
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.region ;;
  }

  dimension: sales {
    type: number
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.sales ;;
  }

  dimension: segment {
    type: string
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.segment ;;
  }

  dimension: ship_date {
    type: string
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.ship_date ;;
  }

  dimension: ship_mode {
    type: string
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.ship_mode ;;
  }

  dimension: shipping_cost {
    type: number
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.shipping_cost ;;
  }

  dimension: state {
    type: string
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.state ;;
  }

  dimension: sub_category {
    type: string
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.sub_category ;;
  }

  dimension: year {
    type: number
    label: "{{ _user_attributes['hidden'] }}"
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    label: "{{ _user_attributes['hidden'] }}"
    drill_fields: [product_name, customer_name]
  }
}
