# iceberg

## Athena

Run the queries in this order:

1. [create.sql](athena/create.sql)
2. [insert.sql](athena/insert.sql)
3. [select.sql](athena/select.sql)
4. [update.sql](athena/update.sql)
5. [time_travel.sql](athena/time_travel.sql)

## Iceberg Table Anatomy

![Image](https://github.com/user-attachments/assets/1f94ee0c-8931-42bc-b636-bc01be75a8f7)

An Iceberg table consists of three main layers:

* Iceberg catalog - Query engines use the catalog to find the current snapshot version of the table, either to read or to write data. For example, Glue.
* Metadata layer - Manifest files and manifest list files keep track of information such as the schema of the tables, the partition strategy, and the location of the data files. Stored in S3.
* Data layer - The files that have the data records that queries will run against. Stored in different formats, including Apache Parquet.
