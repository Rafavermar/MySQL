CREATE EXTERNAL FILE FORMAT TextFilePipe WITH ( FORMAT_TYPE = DelimitedText, FORMAT_OPTIONS (FIELD_TERMINATOR = '|') ); CREATE EXTERNAL FILE FORMAT TextFileTab WITH ( FORMAT_TYPE = DelimitedText, FORMAT_OPTIONS (FIELD_TERMINATOR = '\t', DATE_FORMAT = 'MM/dd/yyyy hh:mm:ss') );