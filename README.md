# dwh-design-23
desiging dwh with dbt
1. The goal of this solution implementation is to showcase an end to end ETL pipeline from a data source to warehouse using Python, DBT and SQL
2. Google's Bigquery is used for data warehouse. DBT framework has been used for simplifying analytics workflow. SQL is used for data transforamtion.
3. dbt_project.yml files contains all the necessary configuration
4. Solution Approach:
   - device , store and transaction tables are laoded into BiqQuery (raw layer) under sumup_dwh_23 dataset
   - All the above three tables are moved to Staging layer from source/raw layer using DBT 
   -  device and store tables are joined baded on 'store_id' and later this output is  joined with transaction table. Final output is moved to Warehouse layer.
   -  From Warehouse layer, expected business metrics (top stores , top products, average transaction, )are computed and output tables are written to Reportign layer 

5. TRust in Data:
   - By writing enough test script inside DBT framework we can produce error free output for downstream consumer
6. Code base share:
   -  By using version control system , dbt framework and necessary codebase can be shared and collaboration can happen 
