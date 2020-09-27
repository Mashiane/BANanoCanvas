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
	canvdays.SetTitle("Canvas Day 08")
	
	'r1c0
	Dim ctx As MashCanvas = canvdays.Skeleton(body, "miterLimit", "ctx")
	ctx.lineWidth = 10
	ctx.lineJoin = "miter"
	ctx.miterLimit = 5
	ctx.moveTo1(20, 20)
	ctx.lineTo1(50, 27)
	ctx.lineTo1(20, 34)
	ctx.stroke1
End Sub
