connection: "grace-220316-test"

# include all the views
include: "/views/**/*.view"

datagroup: gracetrain_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: gracetrain_default_datagroup

explore: retail_dataset {}
