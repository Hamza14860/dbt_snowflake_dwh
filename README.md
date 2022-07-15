### DBT With Snowflake
- Staging models made (stg_orders, stg_customers, stg_payments) from source raw tables
- Core Models made (fct_orders, dim_customers) by using and transforming the staging models
- Materliazation of models done as table or view
- Referencing of models done to use in other models
- Sources made to document raw tables and visualize them in DAG
- Generic Tests like not_null and unique applied on both sources and models
- Singular specific Test applied on stg_payments

Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](http://community.getbdt.com/) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices



