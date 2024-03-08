$PBExportHeader$nvo_flexpipe.sru
forward
global type nvo_flexpipe from nonvisualobject
end type
end forward

global type nvo_flexpipe from nonvisualobject
end type
global nvo_flexpipe nvo_flexpipe

forward prototypes
public function string of_flexpipes ()
end prototypes

public function string of_flexpipes ();string ls_status

pipeline  lp_cpipe, lp_citpipe, lp_incpipe, lp_rlpipe
long rc 
datastore lds_data
ls_status = 'begin'

lds_data = create datastore


// Profile SpillmanSteveS
SQLCA.DBMS = "ODBC"
SQLCA.AutoCommit = False
SQLCA.DBParm = "ConnectString='DSN=Spillman61;UID=noreens;PWD=Motorola123'"
connect using sqlca;
if sqlca.sqlcode < 0 then
	//email me
	run ( 'C:\pbapps\blat.exe -q -to steve@utahcounty.gov -f noreply_flex@utahcounty.gov -subject "Flexpipe- spillman odbc connect failed" -server smtpr.utahcounty.gov:25 -body "connection failed, what happened?" ') 
	halt
end if


// Profile justice
gt_flex.DBMS = "O90 Oracle9i (9.0.1)"
gt_flex.LogPass = "solutions"
gt_flex.ServerName = "db1.world"
gt_flex.LogId = "flex"
gt_flex.AutoCommit = False
gt_flex.DBParm = ""

connect using gt_flex;

//messagebox('database', 'connected')

if gt_flex.sqlcode <0 then
	//email me
	run ( 'C:\pbapps\blat.exe -q -to steve@utahcounty.gov -f noreply_flex@utahcounty.gov -subject "flexpipe- Flex connect failed" -server smtpr.utahcounty.gov:25 -body "connection failed, what happened?" ') 
	halt
end if

ls_status = 'begin' + '- connected ' + string (now() )



lp_cpipe = create pipeline
lp_citpipe = create pipeline
lp_incpipe = create pipeline
lp_rlpipe = create pipeline


lp_cpipe.dataobject = 'p_flex_calls'
lp_citpipe.dataobject = 'p_flex_citation'
lp_incpipe.dataobject = 'p_flex_incident2'
lp_rlpipe.dataobject = 'p_rlmain'

rc = lp_cpipe.start(sqlca, gt_flex, lds_data )
ls_status += ' calls : ' +  string (rc)
ls_status += ' calls rowwritten'  + string ( lp_cpipe.rowswritten)



rc = lp_citpipe.start ( sqlca, gt_flex, lds_data )
if rc <> 1 then
	run ( 'C:\pbapps\blat.exe -q -to steve@utahcounty.gov -f noreply_flex@utahcounty.gov -subject "Flexpipe-citations failed to write" -server smtpr.utahcounty.gov:25 -body "connection failed, what happened?" ') 
end if
ls_status += 'cits: ' +  string (rc)
ls_status +=  ' cits written: ' +  string ( lp_citpipe.rowswritten )

rc = lp_incpipe.start ( sqlca, gt_flex, lds_data )
if rc <> 1 then
	run ( 'C:\pbapps\blat.exe -q -to steve@utahcounty.gov -f noreply_flex@utahcounty.gov -subject "Flexpipe-incidents failed to write" -server smtpr.utahcounty.gov:25 -body "connection failed, what happened?" ') 
end if

ls_status += ' inc: ' +  string (rc)
ls_status +=  ' inc written: ' +  string ( lp_citpipe.rowswritten )

rc = lp_rlpipe.start ( sqlca, gt_flex, lds_data )
if rc <> 1 then
	run ( 'C:\pbapps\blat.exe -q -to steve@utahcounty.gov -f noreply_flex@utahcounty.gov -subject "Flexpipe-radiolog failed to write" -server 1smtpr.utahcounty.gov:25 -body "connection failed, what happened?" ') 
end if
ls_status += ' rl status: ' +  string (rc)
ls_status += ' rl written: ' +  string ( lp_rlpipe.rowswritten )
ls_status += 'SSESRI Ran - ' + ls_status
run ( 'C:\pbapps\blat.exe -q -to steve@utahcounty.gov,mikej@utahcounty.gov -f noreply_flex@utahcounty.gov -subject "SSERSI Ran" -server smtpr.utahcounty.gov:25 -body "' + ls_status +  '"') 
declare db_email procedure for per_send_email(vsSender => 'jesse@utahcounty.gov', vsRecip => 'steve@utahcounty.gov', vsSubj => 'SSESRI', vsMesg => 'Oracle Email example' , vsMType => 'text/plain; charset=us-ascii') using gt_flex;
	execute db_email;
commit using gt_flex;


disconnect using sqlca;
disconnect using gt_flex;



destroy   lp_cpipe
destroy   lp_citpipe
destroy  lp_incpipe
destroy lp_rlpipe



return ls_status


return ls_status

end function

on nvo_flexpipe.create
call super::create
TriggerEvent( this, "constructor" )
end on

on nvo_flexpipe.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

