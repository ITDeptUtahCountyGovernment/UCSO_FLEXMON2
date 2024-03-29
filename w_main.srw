$PBExportHeader$w_main.srw
forward
global type w_main from window
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
end forward

global type w_main from window
integer width = 4754
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
end type
global w_main w_main

on w_main.create
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
this.Control[]={this.sle_hours_diff_rlmain,&
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
this.pb_1}
end on

on w_main.destroy
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
sle_hours_diff_calls.text = mid(string(hoursdiffcalls), 1, 4)
sle_hours_diff_citations.text = mid(string(hoursdiffcitations), 1, 4)
sle_hours_diff_incidents.text = mid(string(hoursdiffincidents), 1, 4)
sle_hours_diff_rlmain.text = mid(string(hoursdiffrlmain),1, 4)
//----------------------------------------------
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

type sle_hours_diff_rlmain from singlelineedit within w_main
integer x = 1344
integer y = 568
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
integer x = 1344
integer y = 452
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
integer x = 1344
integer y = 344
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
integer x = 1344
integer y = 224
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
long textcolor = 33554432
long backcolor = 67108864
string text = "Monitor Secs:"
alignment alignment = right!
boolean focusrectangle = false
end type

type pb_stop_monitor from picturebutton within w_main
integer x = 1061
integer y = 80
integer width = 402
integer height = 92
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Stop Monitor"
boolean originalsize = true
end type

event clicked;bMonitorEnabled = false
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
end type

event clicked;bMonitorEnabled = true
long ll_interval
string ls_interval
ls_interval = sle_monitor_secs.text
ll_interval = f_stol(ls_interval)
if(ll_interval > 0) then
	timer(ll_interval, w_main)
end if
end event

type st_4 from statictext within w_main
integer x = 165
integer y = 584
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
integer x = 631
integer y = 568
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
integer x = 229
integer y = 464
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
integer x = 631
integer y = 452
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
integer x = 233
integer y = 348
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
integer x = 635
integer y = 336
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
integer x = 635
integer y = 224
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
integer x = 311
integer y = 236
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
integer x = 1509
integer y = 1064
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "send email"
boolean originalsize = true
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

