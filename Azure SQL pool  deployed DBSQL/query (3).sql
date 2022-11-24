create external table sales_ext( salesid integer not null, listid integer not null, sellerid integer not null, buyerid integer not null, eventid integer not null, dateid smallint not null, qtysold smallint not null, pricepaid decimal(8,2), commission decimal(8,2), saletime datetime ) WITH ( LOCATION = 'sales_tab.txt' , DATA_SOURCE= AzureStorage , FILE_FORMAT = TextFileTab , REJECT_TYPE = value , REJECT_VALUE = 100 )