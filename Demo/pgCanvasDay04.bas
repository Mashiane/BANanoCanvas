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
	canvdays.SetTitle("Canvas Day 04")
	'r1c0
	Dim ctx1 As MashCanvas = canvdays.Skeleton(body, "shadowOffsetX", "ctx1")
	ctx1.shadowBlur = 10
	ctx1.shadowOffsetX = 20
	ctx1.shadowColor = "black"
	ctx1.fillStyle= "red"
	ctx1.fillRect1(20, 20, 100, 80)
	
	
End Sub
