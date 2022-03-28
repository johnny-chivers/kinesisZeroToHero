CREATE EXTERNAL TABLE `nyctaxitrips`
(
`id` string,
`vendorId` int,
`pickupDate` string,
`dropoffDate` string,
`passengerCount` int,
`pickupLongitude` double,
`pickupLatitude` double,
`dropoffLongitude` double,
`dropoffLatitude` double,
`storeAndFwdFlag` string,
`gcDistance` double,
`tripDuration` int,
`googleDistance`int,
`googleDuration`int,
`source`string
)
PARTITIONED BY ( `year` string, `month` string, `day` string, `hour` string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION 's3://<<BUCKET-NAME>>/nyctaxitrips/'
