B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
#IgnoreWarnings:12
Sub Process_Globals
	Private BANano As BANano  'ignore
	Private body As BANanoElement
End Sub

Sub Init
	body.Initialize("#body")
	body.empty
	canvdays.SetTitle("Canvas Day 06")
	
	'r1c0
	Dim ctx As MashCanvas = canvdays.Skeleton(body, "lineCap", "ctx")
	ctx.beginPath1
	ctx.lineWidth = 10
	ctx.lineCap = "butt"
	ctx.moveTo1(20, 20)
	ctx.lineTo1(200, 20)
	ctx.stroke1

	ctx.beginPath1
	ctx.lineCap = "round"
	ctx.moveTo1(20, 40)
	ctx.lineTo1(200, 40)
	ctx.stroke1

	ctx.beginPath1()
	ctx.lineCap = "square"
	ctx.moveTo1(20, 60)
	ctx.lineTo1(200, 60)
	ctx.stroke1
	
End Sub
