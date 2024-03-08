$PBExportHeader$ssesri.sra
$PBExportComments$Generated Application Object
forward
global type ssesri from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
transaction gt_flex

end variables

global type ssesri from application
string appname = "ssesri"
string appruntimeversion = "22.1.0.2693"
end type
global ssesri ssesri

on ssesri.create
appname="ssesri"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on ssesri.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open(w_pipe )
end event

