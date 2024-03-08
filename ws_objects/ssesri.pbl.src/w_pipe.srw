$PBExportHeader$w_pipe.srw
forward
global type w_pipe from window
end type
type mle_1 from multilineedit within w_pipe
end type
type cb_1 from commandbutton within w_pipe
end type
type sle_1 from singlelineedit within w_pipe
end type
end forward

global type w_pipe from window
integer width = 1649
integer height = 880
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "C:\projects\pb2019\ssesri\cci_vi3_icon.ico"
boolean center = true
mle_1 mle_1
cb_1 cb_1
sle_1 sle_1
end type
global w_pipe w_pipe

type variables
long gl_count
end variables

on w_pipe.create
this.mle_1=create mle_1
this.cb_1=create cb_1
this.sle_1=create sle_1
this.Control[]={this.mle_1,&
this.cb_1,&
this.sle_1}
end on

on w_pipe.destroy
destroy(this.mle_1)
destroy(this.cb_1)
destroy(this.sle_1)
end on

event open;long rc 

gt_flex = create transaction
sle_1.text = 'Starting'
cb_1.triggerevent( clicked!)

//triggerevent(timer!)
sle_1.text += 'End timer'
//rc = timer(1600 , w_pipe)

//messagebox('timer', string ( rc ) )

close(this)


end event

event timer;nvo_flexpipe  n_fpipe

n_fpipe = create nvo_flexpipe
sle_1.text = 'begin timer'
mle_1.text = ''
mle_1.text ='Begin timer'
mle_1.text = n_fpipe.of_flexpipes()



destroy n_fpipe
gl_count ++
sle_1.text = string ( gl_count)

//messagebox('timer' , 'here' )

end event

type mle_1 from multilineedit within w_pipe
integer x = 66
integer y = 189
integer width = 1342
integer height = 419
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_pipe
integer x = 40
integer y = 627
integer width = 413
integer height = 118
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

event clicked;nvo_flexpipe  n_fpipe

n_fpipe = create nvo_flexpipe
sle_1.text = 'begin timer'
mle_1.text = ''
mle_1.text ='Begin timer'
mle_1.text = n_fpipe.of_flexpipes()



destroy n_fpipe
gl_count ++
sle_1.text = string ( gl_count)

//messagebox('timer' , 'here' )



end event

type sle_1 from singlelineedit within w_pipe
integer x = 29
integer y = 35
integer width = 1371
integer height = 118
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
end type

