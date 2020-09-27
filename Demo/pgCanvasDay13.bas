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
	canvdays.SetTitle("Canvas Day 13")
	
	'r1c0
	Dim ctx As MashCanvas = canvdays.Skeleton(body, "arcTo", "ctx")
	ctx.beginPath1
	ctx.moveTo1(20, 20)               'Create a starting point
	ctx.lineTo1(100, 20)              'Create a horizontal line
	ctx.arcTo1(150, 20, 150, 70, 50)  'Create an arc
	ctx.lineTo1(150, 120)             'Continue with vertical line
	ctx.stroke1                     'Draw it
	
	'
	'r1c1
	Dim ctx1 As MashCanvas = canvdays.Skeleton(body, "isPointInPath", "ctx1")
	ctx1.rect1(20, 20, 150, 100)
	If ctx1.isPointInPath1(20, 50) Then ctx1.stroke1
	
	'
	Dim ctx2 As MashCanvas = canvdays.Skeleton(body, "scale", "ctx2")
	ctx2.strokeRect1(5, 5, 25, 15)
	ctx2.scale1(2, 2)
	ctx2.strokeRect1(5, 5, 25, 15)
	
	'
	Dim ctx3 As MashCanvas = canvdays.Skeleton(body, "scale", "ctx3")
	ctx3.strokeRect1(5, 5, 25, 15)
	ctx3.scale1(2, 2)
	ctx3.strokeRect1(5, 5, 25, 15)
	ctx3.scale1(2, 2)
	ctx3.strokeRect1(5, 5, 25, 15)
	ctx3.scale1(2, 2)
	ctx3.strokeRect1(5, 5, 25, 15)
	
	'
	Dim ctx4 As MashCanvas = canvdays.Skeleton(body, "rotate", "ctx4")
	ctx4.rotate1(20 * cPI / 180)
	ctx4.fillRect1(50, 20, 100, 50)
	
	
	Dim ctx5 As MashCanvas = canvdays.Skeleton(body, "translate", "ctx5")
	ctx5.fillRect1(10, 10, 100, 50)
	ctx5.translate1(70, 70)
	ctx5.fillRect1(10, 10, 100, 50)
End Sub
