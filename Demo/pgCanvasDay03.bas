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
	'get the body
	body.Initialize("#body")
	body.empty
	canvdays.SetTitle("Canvas Day 03")
	
	'r1c0
	Dim ctx1 As MashCanvas = canvdays.Skeleton(body, "shadowColor", "ctx1")
	ctx1.shadowBlur = 20
	ctx1.fillStyle = "red"

	ctx1.shadowColor = "black"
	ctx1.fillRect1(20, 20, 100, 80)

	ctx1.shadowColor = "blue"
	ctx1.fillRect1(140, 20, 100, 80)
	
	
End Sub
