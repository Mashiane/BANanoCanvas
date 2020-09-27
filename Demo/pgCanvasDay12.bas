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
	canvdays.SetTitle("Canvas Day 12")
	'r1c0
	Dim ctx As MashCanvas = canvdays.Skeleton(body, "quadraticCurveTo", "ctx")
	ctx.beginPath1
	ctx.moveTo1(20, 20)
	ctx.quadraticCurveTo1(20, 100, 200, 20)
	ctx.stroke1
	
	
	'r1c1
	Dim ctx1 As MashCanvas = canvdays.Skeleton(body, "quadraticCurveTo", "ctx1")
	ctx1.beginPath1
	ctx1.moveTo1(10, 90)
	ctx1.quadraticCurveTo1(60, 10, 90, 90)
	ctx1.lineTo1(60, 10)
	ctx1.closePath1
	ctx1.stroke1
	'
	'r1c2
	Dim ctx2 As MashCanvas = canvdays.Skeleton(body, "bezierCurveTo", "ctx2")
	ctx2.beginPath1
	ctx2.moveTo1(10, 90)
	ctx2.bezierCurveTo1(10, 10, 90, 10, 50, 90)
	ctx2.lineTo1(90, 10)
	ctx2.lineTo1(10, 10)
	ctx2.closePath1
	ctx2.stroke1
	'
	'r1c3
	Dim ctx3 As MashCanvas = canvdays.Skeleton(body, "arc", "ctx3")
	ctx3.beginPath1
	ctx3.arc1(50, 50, 40, 0, 7)
	ctx3.arc1(150, 50, 40, 0, 0.5 * cPI)
	ctx3.stroke1
	
	'
	'r1c4
	Dim ctx4 As MashCanvas = canvdays.Skeleton(body, "bezierCurveTo", "ctx4")
	ctx4.beginPath1
	ctx4.moveTo1(20, 20)
	ctx4.bezierCurveTo1(20, 100, 200, 100, 200, 20)
	ctx4.stroke1
	'
	Dim ctx5 As MashCanvas = canvdays.Skeleton(body, "arc", "ctx5")
	ctx5.beginPath1
	ctx5.arc1(100, 75, 50, 0, 2 * cPI)
	ctx5.stroke1
	
End Sub
