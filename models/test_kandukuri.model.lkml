connection: "finance_data"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: test_kandukuri_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_kandukuri_default_datagroup

explore: irs_990_2012 {}

explore: cfips_location {}

explore: irs_990_2014 {}

explore: irs_990_2013 {}

explore: connection_reg_r3 {}

explore: employee {}

explore: bqml_model_info {}

explore: electronics_sales {}

explore: irs_990_2017 {}

explore: irs_990_ein {}

explore: irs_990_2016 {}

explore: irs_990_ez_2012 {}

explore: irs_990_ez_2013 {}

explore: irs_990_2015 {}

explore: irs_990_ez_2014 {}

explore: irs_990_ez_2015 {}

explore: irs_990_ez_2016 {}

explore: irs_990_ez_2017 {}

explore: irs_990_pf_2012 {}

explore: irs_990_pf_2013 {}

explore: irs_990_pf_2014 {}

explore: irs_990_pf_2015 {}

explore: irs_990_pf_2016 {}

explore: tab {
    join: tab__addresses {
      view_label: "Tab: Addresses"
      sql: LEFT JOIN UNNEST(${tab.addresses}) as tab__addresses ;;
      relationship: one_to_many
    }
}

explore: test_model_input_data_model_training {}

explore: test_model_input_data_selected {}

