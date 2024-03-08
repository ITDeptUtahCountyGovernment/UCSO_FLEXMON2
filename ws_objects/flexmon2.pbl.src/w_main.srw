$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type st_16 from statictext within w_main
end type
type pb_close from picturebutton within w_main
end type
type mle_email_message from multilineedit within w_main
end type
type sle_email_attachment from singlelineedit within w_main
end type
type st_15 from statictext within w_main
end type
type st_14 from statictext within w_main
end type
type sle_email_to from singlelineedit within w_main
end type
type st_13 from statictext within w_main
end type
type sle_email_from from singlelineedit within w_main
end type
type st_12 from statictext within w_main
end type
type sle_email_subject from singlelineedit within w_main
end type
type st_11 from statictext within w_main
end type
type sle_last_email_sent from singlelineedit within w_main
end type
type st_10 from statictext within w_main
end type
type st_9 from statictext within w_main
end type
type st_8 from statictext within w_main
end type
type st_7 from statictext within w_main
end type
type st_6 from statictext within w_main
end type
type sle_rlmain_threshold from singlelineedit within w_main
end type
type sle_incidents_threshold from singlelineedit within w_main
end type
type sle_citations_threshold from singlelineedit within w_main
end type
type sle_calls_threshold from singlelineedit within w_main
end type
type sle_hours_diff_rlmain from singlelineedit within w_main
end type
type sle_hours_diff_incidents from singlelineedit within w_main
end type
type sle_hours_diff_citations from singlelineedit within w_main
end type
type sle_today from singlelineedit within w_main
end type
type sle_hours_diff_calls from singlelineedit within w_main
end type
type sle_monitor_secs from singlelineedit within w_main
end type
type st_5 from statictext within w_main
end type
type pb_stop_monitor from picturebutton within w_main
end type
type pb_start_monitor from picturebutton within w_main
end type
type st_4 from statictext within w_main
end type
type sle_flex_rlmain from singlelineedit within w_main
end type
type st_3 from statictext within w_main
end type
type sle_flex_incidents from singlelineedit within w_main
end type
type st_2 from statictext within w_main
end type
type sle_flex_citations from singlelineedit within w_main
end type
type sle_flex_calls from singlelineedit within w_main
end type
type st_1 from statictext within w_main
end type
type pb_1 from picturebutton within w_main
end type
type ln_1 from line within w_main
end type
end forward

global type w_main from window
integer width = 2825
integer height = 2200
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_16 st_16
pb_close pb_close
mle_email_message mle_email_message
sle_email_attachment sle_email_attachment
st_15 st_15
st_14 st_14
sle_email_to sle_email_to
st_13 st_13
sle_email_from sle_email_from
st_12 st_12
sle_email_subject sle_email_subject
st_11 st_11
sle_last_email_sent sle_last_email_sent
st_10 st_10
st_9 st_9
st_8 st_8
st_7 st_7
st_6 st_6
sle_rlmain_threshold sle_rlmain_threshold
sle_incidents_threshold sle_incidents_threshold
sle_citations_threshold sle_citations_threshold
sle_calls_threshold sle_calls_threshold
sle_hours_diff_rlmain sle_hours_diff_rlmain
sle_hours_diff_incidents sle_hours_diff_incidents
sle_hours_diff_citations sle_hours_diff_citations
sle_today sle_today
sle_hours_diff_calls sle_hours_diff_calls
sle_monitor_secs sle_monitor_secs
st_5 st_5
pb_stop_monitor pb_stop_monitor
pb_start_monitor pb_start_monitor
st_4 st_4
sle_flex_rlmain sle_flex_rlmain
st_3 st_3
sle_flex_incidents sle_flex_incidents
st_2 st_2
sle_flex_citations sle_flex_citations
sle_flex_calls sle_flex_calls
st_1 st_1
pb_1 pb_1
ln_1 ln_1
end type
global w_main w_main

on w_main.create
this.st_16=create st_16
this.pb_close=create pb_close
this.mle_email_message=create mle_email_message
this.sle_email_attachment=create sle_email_attachment
this.st_15=create st_15
this.st_14=create st_14
this.sle_email_to=create sle_email_to
this.st_13=create st_13
this.sle_email_from=create sle_email_from
this.st_12=create st_12
this.sle_email_subject=create sle_email_subject
this.st_11=create st_11
this.sle_last_email_sent=create sle_last_email_sent
this.st_10=create st_10
this.st_9=create st_9
this.st_8=create st_8
this.st_7=create st_7
this.st_6=create st_6
this.sle_rlmain_threshold=create sle_rlmain_threshold
this.sle_incidents_threshold=create sle_incidents_threshold
this.sle_citations_threshold=create sle_citations_threshold
this.sle_calls_threshold=create sle_calls_threshold
this.sle_hours_diff_rlmain=create sle_hours_diff_rlmain
this.sle_hours_diff_incidents=create sle_hours_diff_incidents
this.sle_hours_diff_citations=create sle_hours_diff_citations
this.sle_today=create sle_today
this.sle_hours_diff_calls=create sle_hours_diff_calls
this.sle_monitor_secs=create sle_monitor_secs
this.st_5=create st_5
this.pb_stop_monitor=create pb_stop_monitor
this.pb_start_monitor=create pb_start_monitor
this.st_4=create st_4
this.sle_flex_rlmain=create sle_flex_rlmain
this.st_3=create st_3
this.sle_flex_incidents=create sle_flex_incidents
this.st_2=create st_2
this.sle_flex_citations=create sle_flex_citations
this.sle_flex_calls=create sle_flex_calls
this.st_1=create st_1
this.pb_1=create pb_1
this.ln_1=create ln_1
this.Control[]={this.st_16,&
this.pb_close,&
this.mle_email_message,&
this.sle_email_attachment,&
this.st_15,&
this.st_14,&
this.sle_email_to,&
this.st_13,&
this.sle_email_from,&
this.st_12,&
this.sle_email_subject,&
this.st_11,&
this.sle_last_email_sent,&
this.st_10,&
this.st_9,&
this.st_8,&
this.st_7,&
this.st_6,&
this.sle_rlmain_threshold,&
this.sle_incidents_threshold,&
this.sle_citations_threshold,&
this.sle_calls_threshold,&
this.sle_hours_diff_rlmain,&
this.sle_hours_diff_incidents,&
this.sle_hours_diff_citations,&
this.sle_today,&
this.sle_hours_diff_calls,&
this.sle_monitor_secs,&
this.st_5,&
this.pb_stop_monitor,&
this.pb_start_monitor,&
this.st_4,&
this.sle_flex_rlmain,&
this.st_3,&
this.sle_flex_incidents,&
this.st_2,&
this.sle_flex_citations,&
this.sle_flex_calls,&
this.st_1,&
this.pb_1,&
this.ln_1}
end on

on w_main.destroy
destroy(this.st_16)
destroy(this.pb_close)
destroy(this.mle_email_message)
destroy(this.sle_email_attachment)
destroy(this.st_15)
destroy(this.st_14)
destroy(this.sle_email_to)
destroy(this.st_13)
destroy(this.sle_email_from)
destroy(this.st_12)
destroy(this.sle_email_subject)
destroy(this.st_11)
destroy(this.sle_last_email_sent)
destroy(this.st_10)
destroy(this.st_9)
destroy(this.st_8)
destroy(this.st_7)
destroy(this.st_6)
destroy(this.sle_rlmain_threshold)
destroy(this.sle_incidents_threshold)
destroy(this.sle_citations_threshold)
destroy(this.sle_calls_threshold)
destroy(this.sle_hours_diff_rlmain)
destroy(this.sle_hours_diff_incidents)
destroy(this.sle_hours_diff_citations)
destroy(this.sle_today)
destroy(this.sle_hours_diff_calls)
destroy(this.sle_monitor_secs)
destroy(this.st_5)
destroy(this.pb_stop_monitor)
destroy(this.pb_start_monitor)
destroy(this.st_4)
destroy(this.sle_flex_rlmain)
destroy(this.st_3)
destroy(this.sle_flex_incidents)
destroy(this.st_2)
destroy(this.sle_flex_citations)
destroy(this.sle_flex_calls)
destroy(this.st_1)
destroy(this.pb_1)
destroy(this.ln_1)
end on

event timer;timer(0)
string ls_calls_last_dt
string ls_citations_last_dt
string ls_incidents_last_dt
string ls_rlmain_last_dt
//
select to_char(REPORTDT, 'MM/DD/YYYY HH24:MI:SS') into :ls_calls_last_dt from FLEX.FLEX_CALLS order by REPORTDT desc fetch first row only using sqlca;
//
select to_char(ISSUEDT, 'MM/DD/YYYY HH24:MI:SS') into :ls_citations_last_dt from FLEX_CITATION order by ISSUEDT desc fetch first row only using sqlca;
//
select to_char(dtrepor, 'MM/DD/YYYY HH24:MI:SS') into :ls_incidents_last_dt from FLEX_INCIDENT order by DTREPOR desc fetch first row only using sqlca;
//
select to_char(LOGDATE, 'MM/DD/YYYY HH24:MI:SS') into :ls_rlmain_last_dt from FLEX_RLMAIN order by LOGDATE desc fetch first row only using sqlca;

sle_flex_calls.text = ls_calls_last_dt
sle_flex_citations.text = ls_citations_last_dt
sle_flex_incidents.text = ls_incidents_last_dt
sle_flex_rlmain.text = ls_rlmain_last_dt

string ls_today_dt
ls_today_dt = String(today(), "m/d/yyyy hh:mm")
datetime dt_today
dt_today = datetime(ls_today_dt)
sle_today.text = string(dt_today)
decimal decjdtoday
decjdtoday = f_get_julian_date_value(dt_today)
//----------------------------------------------
datetime dt_flex_calls
datetime dt_flex_citations
datetime dt_flex_incidents
datetime dt_flex_rlmain
dt_flex_calls = datetime(ls_calls_last_dt)
dt_flex_citations = datetime(ls_citations_last_dt)
dt_flex_incidents = datetime(ls_incidents_last_dt)
dt_flex_rlmain = datetime(ls_rlmain_last_dt)
//----------------------------------------------
decimal decjdcalls
decimal decjdcitations
decimal decjdincidents
decimal decjdrlmain
decjdcalls = f_get_julian_date_value(dt_flex_calls)
decjdcitations = f_get_julian_date_value(dt_flex_citations)
decjdincidents = f_get_julian_date_value(dt_flex_incidents)
decjdrlmain = f_get_julian_date_value(dt_flex_rlmain)
//----------------------------------------------
decimal decdiffcalls
decimal decdiffcitations
decimal decdiffincidents
decimal decdiffrlmain
decdiffcalls = (decjdtoday - decjdcalls)
decdiffcitations = (decjdtoday - decjdcitations)
decdiffincidents = (decjdtoday - decjdincidents)
decdiffrlmain = (decjdtoday - decjdrlmain)
//---------------------------------------------
decimal hoursdiffcalls
decimal hoursdiffcitations
decimal hoursdiffincidents
decimal hoursdiffrlmain
hoursdiffcalls = (decdiffcalls / 3600)
hoursdiffcitations = (decdiffcitations / 3600)
hoursdiffincidents = (decdiffincidents / 3600)
hoursdiffrlmain = (decdiffrlmain / 3600)
//----------------------------------------------
string ls_calls_diff
string ls_citations_diff
string ls_incidents_diff
string ls_rlmain_diff
ls_calls_diff = mid(string(hoursdiffcalls), 1, 4)
sle_hours_diff_calls.text = ls_calls_diff
ls_citations_diff = mid(string(hoursdiffcitations), 1, 4)
sle_hours_diff_citations.text = ls_citations_diff
ls_incidents_diff = mid(string(hoursdiffincidents), 1, 4)
sle_hours_diff_incidents.text = ls_incidents_diff
ls_rlmain_diff = mid(string(hoursdiffrlmain),1, 4)
sle_hours_diff_rlmain.text = ls_rlmain_diff 
//----------------------------------------------
//UPDATE DATABASE TABLE FLEX_MONITOR
integer li_monsecs
li_monsecs = f_stoi(sle_monitor_secs.text)
datetime ldt_sysdatetime
string ls_sysdatetime
ls_sysdatetime = ""
ldt_sysdatetime = f_get_system_datetime(ls_sysdatetime)
ls_sysdatetime = string(ldt_sysdatetime)
ls_sysdatetime = f_convert_str_date_to_sql(ls_sysdatetime)
string ls_lastcalls_dt
ls_lastcalls_dt = f_convert_str_date_to_sql(ls_calls_last_dt)
decimal dec_lastcalls_diff
dec_lastcalls_diff = f_stodec(ls_calls_diff)
string ls_lastcitations_dt
ls_lastcitations_dt = f_convert_str_date_to_sql(ls_citations_last_dt)
decimal dec_lastcitations_diff
dec_lastcitations_diff = f_stodec(ls_citations_diff)
string ls_lastincidents_dt
ls_lastincidents_dt = f_convert_str_date_to_sql(ls_incidents_last_dt)
decimal dec_lastincidents_diff
dec_lastincidents_diff = f_stodec(ls_incidents_diff)
string ls_lastrlmain_diff_dt
ls_lastrlmain_diff_dt = f_convert_str_date_to_sql(ls_rlmain_last_dt)
decimal dec_lastrlmain_diff
dec_lastrlmain_diff = f_stodec(ls_rlmain_diff)
decimal dec_callsthres
dec_callsthres = f_stodec(sle_calls_threshold.text)
decimal dec_citationsthres
dec_citationsthres = f_stodec(sle_citations_threshold.text)
decimal dec_incidentsthres
dec_incidentsthres = f_stodec(sle_incidents_threshold.text)
decimal dec_radiothres
dec_radiothres = f_stodec(sle_rlmain_threshold.text)
string ls_insert_sql
ls_insert_sql = "insert into flex_monitor(monsecs,montime,lastcalls,callsdiff,lastcitations,citationsdiff,lastincidents,incidentsdiff,lastradio,radiodiff,"
ls_insert_sql += "callsthres,citationsthres,incidentsthres,radiothres,active) "
ls_insert_sql += "values(" + string(li_monsecs) + "," + ls_sysdatetime + "," + ls_lastcalls_dt + "," + string(dec_lastcalls_diff) + "," + ls_lastcitations_dt + ","
ls_insert_sql += string(dec_lastcitations_diff) + "," + ls_lastincidents_dt + "," + string(dec_lastincidents_diff) + "," + ls_lastrlmain_diff_dt + "," 
ls_insert_sql += string(dec_lastrlmain_diff) + "," + string(dec_callsthres) + "," + string(dec_citationsthres) + "," + string(dec_incidentsthres) + ","
ls_insert_sql += string(dec_radiothres) + ",1)"
//
execute immediate :ls_insert_sql using sqlca;
//
string ls_sql_err_text
if(sqlca.sqlcode <> -1) then
	//
	commit using sqlca;
	//
else
	ls_sql_err_text = sqlca.sqlerrtext
	//
	rollback using sqlca;
	//
	
end if
//
//PUT THRESHOLD CODE HERE
//
if(bMonitorEnabled = true) then
	long ll_interval
	string ls_interval
	ls_interval = sle_monitor_secs.text
  ll_interval = f_stol(ls_interval)
	if(ll_interval > 0) then
		timer(ll_interval, w_main)
	end if
end if



	

end event

event open;sle_monitor_secs.text = "300" //5 mins
sle_email_subject.text = gs_email_subject
sle_email_from.text = gs_email_from
sle_email_to.text = gs_email_to
mle_email_message.text = gs_email_message
pb_stop_monitor.enabled = false
end event

event closequery;if(bMonitorEnabled = true) then
	return 1
end if
end event

type st_16 from statictext within w_main
integer x = 2199
integer y = 128
integer width = 549
integer height = 140
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 255
long backcolor = 67108864
string text = "Email Threshold not yet implemented"
alignment alignment = center!
boolean focusrectangle = false
end type

type pb_close from picturebutton within w_main
integer x = 2423
integer y = 16
integer width = 247
integer height = 100
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Close"
boolean originalsize = true
alignment htextalign = Center!
long textcolor = 16777215
long backcolor = 255
end type

event clicked;if(bMonitorEnabled = false) then
	Close(w_main)
end if
end event

type mle_email_message from multilineedit within w_main
integer x = 763
integer y = 1400
integer width = 1970
integer height = 400
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type sle_email_attachment from singlelineedit within w_main
integer x = 759
integer y = 1836
integer width = 1664
integer height = 96
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type st_15 from statictext within w_main
integer x = 32
integer y = 1852
integer width = 718
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 67108864
string text = "Attachment Sent:"
alignment alignment = Right!
boolean focusrectangle = false
end type

type st_14 from statictext within w_main
integer x = 23
integer y = 1388
integer width = 718
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 67108864
string text = "Message:"
alignment alignment = Right!
boolean focusrectangle = false
end type

type sle_email_to from singlelineedit within w_main
integer x = 768
integer y = 1280
integer width = 1650
integer height = 96
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type st_13 from statictext within w_main
integer x = 32
integer y = 1168
integer width = 718
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 67108864
string text = "Email From:"
alignment alignment = Right!
boolean focusrectangle = false
end type

type sle_email_from from singlelineedit within w_main
integer x = 759
integer y = 1156
integer width = 1664
integer height = 96
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type st_12 from statictext within w_main
integer x = 32
integer y = 1296
integer width = 718
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 67108864
string text = "Email To:"
alignment alignment = Right!
boolean focusrectangle = false
end type

type sle_email_subject from singlelineedit within w_main
integer x = 759
integer y = 1016
integer width = 1659
integer height = 96
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type st_11 from statictext within w_main
integer x = 32
integer y = 1032
integer width = 718
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 67108864
string text = "Email Subject:"
alignment alignment = Right!
boolean focusrectangle = false
end type

type sle_last_email_sent from singlelineedit within w_main
integer x = 763
integer y = 884
integer width = 658
integer height = 96
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long backcolor = 12639424
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type st_10 from statictext within w_main
integer x = 32
integer y = 908
integer width = 718
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 67108864
string text = "Last Threshold Email Sent:"
alignment alignment = Right!
boolean focusrectangle = false
end type

type st_9 from statictext within w_main
integer x = 1504
integer y = 8
integer width = 416
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 67108864
string text = "Last Query D/T"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_8 from statictext within w_main
integer x = 2080
integer y = 252
integer width = 416
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 67108864
string text = "email threshold"
alignment alignment = Left!
boolean focusrectangle = false
end type

type st_7 from statictext within w_main
integer x = 1353
integer y = 252
integer width = 526
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 67108864
string text = "hours_diff from last"
alignment alignment = Left!
boolean focusrectangle = false
end type

type st_6 from statictext within w_main
integer x = 640
integer y = 252
integer width = 507
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 67108864
string text = "LAST Recorded d/t"
alignment alignment = Left!
boolean focusrectangle = false
end type

type sle_rlmain_threshold from singlelineedit within w_main
integer x = 2085
integer y = 672
integer width = 677
integer height = 96
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type sle_incidents_threshold from singlelineedit within w_main
integer x = 2085
integer y = 556
integer width = 677
integer height = 96
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type sle_citations_threshold from singlelineedit within w_main
integer x = 2085
integer y = 448
integer width = 677
integer height = 96
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type sle_calls_threshold from singlelineedit within w_main
integer x = 2085
integer y = 328
integer width = 677
integer height = 96
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type sle_hours_diff_rlmain from singlelineedit within w_main
integer x = 1349
integer y = 668
integer width = 677
integer height = 96
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type sle_hours_diff_incidents from singlelineedit within w_main
integer x = 1349
integer y = 552
integer width = 677
integer height = 96
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type sle_hours_diff_citations from singlelineedit within w_main
integer x = 1349
integer y = 444
integer width = 677
integer height = 96
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type sle_today from singlelineedit within w_main
integer x = 1495
integer y = 84
integer width = 658
integer height = 96
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type sle_hours_diff_calls from singlelineedit within w_main
integer x = 1349
integer y = 324
integer width = 677
integer height = 96
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type sle_monitor_secs from singlelineedit within w_main
integer x = 416
integer y = 80
integer width = 201
integer height = 96
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "10"
borderstyle borderstyle = stylelowered!
end type

type st_5 from statictext within w_main
integer x = 9
integer y = 92
integer width = 375
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16711680
long backcolor = 67108864
string text = "Monitor Secs:"
alignment alignment = right!
boolean focusrectangle = false
end type

type pb_stop_monitor from picturebutton within w_main
integer x = 1061
integer y = 76
integer width = 402
integer height = 100
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Stop Monitor"
boolean originalsize = true
long textcolor = 16777215
long backcolor = 255
end type

event clicked;bMonitorEnabled = false
pb_stop_monitor.enabled = false
pb_start_monitor.enabled = true
end event

type pb_start_monitor from picturebutton within w_main
integer x = 645
integer y = 76
integer width = 402
integer height = 100
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Start Monitor"
boolean originalsize = true
long backcolor = 65280
end type

event clicked;bMonitorEnabled = true
long ll_interval
string ls_interval
ls_interval = sle_monitor_secs.text
ll_interval = f_stol(ls_interval)
if(ll_interval > 0) then
	pb_stop_monitor.enabled = true
	pb_start_monitor.enabled = false
	timer(ll_interval, w_main)
end if
end event

type st_4 from statictext within w_main
integer x = 169
integer y = 684
integer width = 443
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Flex Radio Logs:"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_flex_rlmain from singlelineedit within w_main
integer x = 635
integer y = 668
integer width = 658
integer height = 96
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type st_3 from statictext within w_main
integer x = 233
integer y = 564
integer width = 393
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Flex Incidents:"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_flex_incidents from singlelineedit within w_main
integer x = 635
integer y = 552
integer width = 658
integer height = 96
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type st_2 from statictext within w_main
integer x = 238
integer y = 448
integer width = 384
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Flex Citations:"
alignment alignment = right!
boolean focusrectangle = false
end type

type sle_flex_citations from singlelineedit within w_main
integer x = 640
integer y = 436
integer width = 658
integer height = 96
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type sle_flex_calls from singlelineedit within w_main
integer x = 640
integer y = 324
integer width = 658
integer height = 96
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type st_1 from statictext within w_main
integer x = 315
integer y = 336
integer width = 306
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Flex Calls:"
alignment alignment = right!
boolean focusrectangle = false
end type

type pb_1 from picturebutton within w_main
integer x = 759
integer y = 1948
integer width = 567
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean enabled = false
string text = "send TEST email"
boolean originalsize = true
long backcolor = 65280
end type

event clicked;string gs_cr
string gs_lf
string gs_crlf
gs_cr = string(char(13))
gs_lf = string(char(10))
gs_crlf = gs_cr + gs_lf
string ls_sqlerror
long ll_return
string ls_recipient
ls_recipient = "mikej@utahcounty.gov"
string ls_sender
string ls_subject
string ls_message
string ls_mtype
ls_sender = "no_reply@utahcounty.gov"
ls_subject = "TEST EMAIL FROM WOENGINE"
ls_message = "This is only a test" + gs_crlf
ls_message += string(today()) + " " + string(now())
ls_mtype = "text/plain; charset=us-ascii"

ll_return = f_send_email_new(ls_sender, ls_recipient, ls_subject, ls_message, ref sqlca)
if(ll_return > 0) then

end if

end event

type ln_1 from line within w_main
integer linethickness = 10
integer beginx = 46
integer beginy = 804
integer endx = 2743
integer endy = 804
end type

