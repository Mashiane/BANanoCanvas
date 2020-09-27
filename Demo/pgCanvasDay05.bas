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
	canvdays.SetTitle("Canvas Day 05")
	
	'r1c0
	Dim ctx1 As MashCanvas = canvdays.Skeleton(body, "shadowOffsetY", "ctx1")
	ctx1.shadowBlur = 10
	ctx1.shadowOffsetY = 20
	ctx1.shadowColor = "black"
	ctx1.fillStyle = "red"
	ctx1.fillRect1(20, 20, 100, 80)
	
	'r1c0
	Dim ctx10 As MashCanvas = canvdays.Skeleton(body, "addColorStop", "ctx10")
	Dim grd10 As MashCanvas = ctx10.createLinearGradient1(0, 0, 170, 0)
	grd10.addColorStop1(0, "black")
	grd10.addColorStop1("0.3", "magenta")
	grd10.addColorStop1("0.5", "blue")
	grd10.addColorStop1("0.6", "green")
	grd10.addColorStop1("0.8", "yellow")
	grd10.addColorStop1(1, "red")
 
	ctx10.fillStyle = grd10.Context
	ctx10.fillRect1(20, 20, 150, 100)
	
End Sub
