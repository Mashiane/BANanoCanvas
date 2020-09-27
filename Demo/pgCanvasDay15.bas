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
	canvdays.SetTitle("Canvas Day 15")
	
	'r1c0
	Dim ctx As MashCanvas = canvdays.Skeleton(body, "fillText", "ctx")
	ctx.font = "20px Georgia"
	ctx.fillText1("Hello World!", 10, 50)
	ctx.font = "30px Verdana"
	'Create gradient
	Dim gradient As MashCanvas = ctx.createLinearGradient1(0, 0, ctx.canvaswidth, 0)
	gradient.addColorStop1("0", "magenta")
	gradient.addColorStop1("0.5", "blue")
	gradient.addColorStop1("1.0", "red")
	'Fill with gradient
	ctx.fillStyle = gradient.context
	ctx.fillText1("Big smile!", 10, 90)
	
	'
	'r1c1
	Dim ctx1 As MashCanvas = canvdays.Skeleton(body, "strokeText", "ctx1")
	ctx1.font = "20px Georgia"
	ctx1.strokeText1("Hello World!", 10, 50)
	ctx1.font = "30px Verdana"
	'Create gradient
	Dim gradient1 As MashCanvas = ctx.createLinearGradient1(0, 0, ctx1.canvaswidth, 0)
	gradient1.addColorStop1("0", "magenta")
	gradient1.addColorStop1("0.5", "blue")
	gradient1.addColorStop1("1.0", "red")
	'Fill with gradient
	ctx1.strokeStyle = gradient1.context
	ctx1.strokeText1("Big smile!", 10, 90)
	
	'
	'r1c2
	Dim ctx2 As MashCanvas = canvdays.Skeleton(body, "measureText", "ctx2")
	ctx2.font = "30px Arial"
	Dim txt As String = "Hello World"
	Dim w As Int = ctx2.measureText1(txt)
	ctx2.fillText1("width:" & w, 10, 50)
	ctx2.fillText1(txt, 10, 100)
	
End Sub
