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
	canvdays.SetTitle("Canvas Day 11")
	
	'r1c0
	Dim ctx As MashCanvas = canvdays.Skeleton(body, "clip", "ctx")
	ctx.rect1(50, 20, 200, 120)
	ctx.stroke1
	ctx.fillStyle = "red"
	ctx.fillRect1(0, 0, 150, 100)
	
	'r1c1
	Dim ctx1 As MashCanvas = canvdays.Skeleton(body, "clip", "ctx1")
	ctx1.rect1(50, 20, 200, 120)
	ctx1.stroke1
	ctx1.clip1
	ctx1.fillStyle = "red"
	ctx1.fillRect1(0, 0, 150, 100)
End Sub
