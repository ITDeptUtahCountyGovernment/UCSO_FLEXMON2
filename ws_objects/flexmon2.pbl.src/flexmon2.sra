$PBExportHeader$flexmon2.sra
$PBExportComments$Generated Application Object
forward
global type flexmon2 from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
boolean bMonitorEnabled
transaction gt_flex
string gs_email_subject
string gs_email_from
string gs_email_to
string gs_email_message
end variables
global type flexmon2 from application
string appname = "flexmon2"
string themepath = "C:\Program Files (x86)\Appeon\PowerBuilder 19.0\IDE\theme"
string themename = "Do Not Use Themes"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 2
long richtexteditx64type = 3
long richtexteditversion = 1
string richtexteditkey = ""
string appicon = ""
string appruntimeversion = "21.0.0.1506"
boolean manualsession = false
boolean unsupportedapierror = false
end type
global flexmon2 flexmon2

type variables

end variables

on flexmon2.create
appname="flexmon2"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on flexmon2.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;// Profile justice_dev
SQLCA.DBMS = "O10 Oracle10g (10.1.0)"
SQLCA.LogPass = "solutions" //"JUSTICE"
SQLCA.ServerName = "db1.world" //"DB1.WORLD"
SQLCA.LogId = "flex" //"JUSTICE"
SQLCA.userid = "flex"
SQLCA.AutoCommit = False
SQLCA.DBParm = ""
connect using SQLCA;

//check for successful connection
if SQLCA.sqlcode < 0 then
	string sqlerror = 'DB ERROR! '
	sqlerror += SQLCA.sqlerrtext
	MessageBox('SQL CONNECT', sqlerror )
	//DB ERROR! ORA-12504: TNS:listener was not given the SERVICE_NAME in CONNECT_DATA

	halt
end if

bMonitorEnabled = false;
gs_email_subject = "FLEX MONITOR EMAIL"
gs_email_from = "ucappdev@utahcounty.gov"
gs_email_to = "mikej@utahcounty.gov"
gs_email_message = ""

open(w_main)
end event

