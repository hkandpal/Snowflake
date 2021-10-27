# Snowflake
This is a simple example of an error handling Snowflake procedure (written with guidance from Greg Pavlik) , which can be used as a common routine and called from the catch block. 
This procedure inserts into a common error table.
The procedure ERR_LOGGING has the following 3 parameters.
app_name = The application name in which the error orrcured.
err_msg =  THis is a concatination of the following err.code + err.message +  err.stackTraceTxt  
misc_str = THis is a string which can be comments in your procedure/function where the error occured.
