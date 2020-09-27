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
	canvdays.SetTitle("Canvas Day 09")
	
	'r1c0
	Dim ctx As MashCanvas = canvdays.Skeleton(body, "rect", "ctx")
	ctx.beginPath1
	ctx.rect1(20, 20, 150, 100)
	ctx.stroke1
	
	'r1c1
	Dim ctx1 As MashCanvas = canvdays.Skeleton(body, "rect", "ctx1")
	
	' Red rectangle
	ctx1.beginPath1
	ctx1.lineWidth = "6"
	ctx1.strokeStyle = "red"
	ctx1.rect1(5, 5, 290, 140)
	ctx1.stroke1

	' Green rectangle
	ctx1.beginPath1
	ctx1.lineWidth = "4"
	ctx1.strokeStyle = "green"
	ctx1.rect1(30, 30, 50, 50)
	ctx1.stroke1

	' Blue rectangle
	ctx1.beginPath1
	ctx1.lineWidth = "10"
	ctx1.strokeStyle = "blue"
	ctx1.rect1(50, 50, 150, 80)
	ctx1.stroke1
	'
	'r1c2
	Dim ctx2 As MashCanvas = canvdays.Skeleton(body, "rect", "ctx2")
	ctx2.fillRect1(20, 20, 150, 100)
	'
	'r1c3
	Dim ctx3 As MashCanvas = canvdays.Skeleton(body, "rect", "ctx3")
	ctx3.strokeRect1(20, 20, 150, 100)
	'
	'r1c4
	Dim ctx4 As MashCanvas = canvdays.Skeleton(body, "rect", "ctx4")
	ctx4.fillStyle = "red"
	ctx4.fillRect1(0, 0, 300, 150)
	ctx4.clearRect1(20, 20, 100, 50)
	
End Sub
