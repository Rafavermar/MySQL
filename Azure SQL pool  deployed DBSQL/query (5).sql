create external table venue_ext( venueid smallint not null, venuename varchar(100), venuecity varchar(30), venuestate char(2), venueseats varchar(10)) WITH ( LOCATION = 'venue_pipe.txt' , DATA_SOURCE= AzureStorage , FILE_FORMAT = TextFilePipe ) create external table category_ext( catid smallint not null, catgroup varchar(10), catname varchar(10), catdesc varchar(50) ) WITH ( LOCATION = 'category_pipe.txt' , DATA_SOURCE= AzureStorage , FILE_FORMAT = TextFilePipe )