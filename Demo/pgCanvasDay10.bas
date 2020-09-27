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
	canvdays.SetTitle("Canvas Day 10")
	
	'r1c0
	Dim ctx As MashCanvas = canvdays.Skeleton(body, "rect", "ctx")
	ctx.beginPath1
	ctx.rect1(20, 20, 150, 100)
	ctx.fillStyle = "red"
	ctx.fill1

	ctx.beginPath1
	ctx.rect1(40, 40, 150, 100)
	ctx.fillStyle = "blue"
	ctx.fill1
	'
	Dim ctx1 As MashCanvas = canvdays.Skeleton(body, "rect", "ctx1")
	ctx1.beginPath1
	ctx1.moveTo1(20, 20)
	ctx1.lineTo1(20, 100)
	ctx1.lineTo1(70, 100)
	ctx1.strokeStyle = "red"
	'
	Dim ctx2 As MashCanvas = canvdays.Skeleton(body, "rect", "ctx2")
	ctx2.beginPath1
	ctx2.lineWidth = "5"
	ctx2.strokeStyle = "green"
	ctx2.moveTo1(0, 75)
	ctx2.lineTo1(250, 75)
	ctx2.stroke1

	ctx2.beginPath1
	ctx2.strokeStyle = "purple"
	ctx2.moveTo1(50, 0)
	ctx2.lineTo1(150, 130)
	ctx2.stroke1
	'
	Dim ctx3 As MashCanvas = canvdays.Skeleton(body, "rect", "ctx3")
	ctx3.beginPath1
	ctx3.moveTo1(0, 0)
	ctx3.lineTo1(300, 150)
	ctx3.stroke1
	'
	Dim ctx4 As MashCanvas = canvdays.Skeleton(body, "rect", "ctx4")
	ctx4.beginPath1
	ctx4.moveTo1(20, 20)
	ctx4.lineTo1(20, 100)
	ctx4.lineTo1(70, 100)
	ctx4.closePath1  'join with starting point
	ctx4.stroke1  'draw
	'
	Dim ctx5 As MashCanvas = canvdays.Skeleton(body, "rect", "ctx5")
	ctx5.beginPath1
	ctx5.moveTo1(20, 20)
	ctx5.lineTo1(20, 100)
	ctx5.lineTo1(70, 100)
	ctx5.closePath1
	ctx5.stroke1
	ctx5.fillStyle = "red"
	ctx5.fill1
End Sub
