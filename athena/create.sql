CREATE TABLE iceberg_test (
    id string,
    source string,
    subject string,
    type string,
    time timestamp
)
PARTITIONED BY (type, day(time))
LOCATION 's3://athenaicedb/lab/iceberg_test/'
TBLPROPERTIES (
    'table_type' ='ICEBERG'
)
