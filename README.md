Run these commands to test against Snowflake
```
dbt deps --target {your_target}
dbt build --target {your_target} --select +{your_model_name}
```