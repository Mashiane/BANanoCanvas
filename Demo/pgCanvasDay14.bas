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
	canvdays.SetTitle("Canvas Day 14")
	
	'r1c0
	Dim ctx As MashCanvas = canvdays.Skeleton(body, "transform", "ctx")
	ctx.fillStyle = "yellow"
	ctx.fillRect1(0, 0, 250, 100)

	ctx.transform1(1, 0.5, -0.5, 1, 30, 10)
	ctx.fillStyle = "red"
	ctx.fillRect1(0, 0, 250, 100)

	ctx.transform1(1, 0.5, -0.5, 1, 30, 10)
	ctx.fillStyle = "blue"
	ctx.fillRect1(0, 0, 250, 100)
	
	Dim ctx1 As MashCanvas = canvdays.Skeleton(body, "setTransform", "ctx1")
	ctx1.fillStyle = "yellow"
	ctx1.fillRect1(0, 0, 250, 100)
	ctx1.setTransform1(1,0.5, -0.5, 1, 30, 10)
	ctx1.fillStyle = "red"
	ctx1.fillRect1(0, 0, 250, 100)
	ctx1.setTransform1(1,0.5, -0.5, 1, 30, 10)
	ctx1.fillStyle = "blue"
	ctx1.fillRect1(0, 0, 250, 100)
	
	'
	Dim ctx2 As MashCanvas = canvdays.Skeleton(body, "fillText", "ctx2")
	ctx2.font = "30px Arial"
	ctx2.fillText1("Hello World", 10, 50)
	'
	Dim ctx3 As MashCanvas = canvdays.Skeleton(body, "textAlign", "ctx3")
	ctx3.strokeStyle = "red"
	ctx3.moveTo1(150, 20)
	ctx3.lineTo1(150, 170)
	ctx3.stroke1
	ctx3.font = "15px Arial"
	' Show the different textAlign values
	ctx3.textAlign = "start"
	ctx3.fillText1("textAlign=start", 150, 60)
	ctx3.textAlign = "end"
	ctx3.fillText1("textAlign=end", 150, 80)
	ctx3.textAlign = "left"
	ctx3.fillText1("textAlign=left", 150, 100)
	ctx3.textAlign = "center"
	ctx3.fillText1("textAlign=center",150, 120)
	ctx3.textAlign = "right"
	ctx3.fillText1("textAlign=right",150, 140)
	
	'
	Dim ctx4 As MashCanvas = canvdays.Skeleton(body, "textBaseline", "ctx4")
	ctx4.canvaswidth = 400
	ctx4.canvasheight = 200
	'Draw a red line at y=100
	ctx4.strokeStyle = "red"
	ctx4.moveTo1(5, 100)
	ctx4.lineTo1(395, 100)
	ctx4.stroke1
	ctx4.font = "20px Arial"
	'Place each word at y=100 with different textBaseline values
	ctx4.textBaseline = "top"
	ctx4.fillText1("Top", 5, 100)
	ctx4.textBaseline = "bottom"
	ctx4.fillText1("Bottom", 50, 100)
	ctx4.textBaseline = "middle"
	ctx4.fillText1("Middle", 120, 100)
	ctx4.textBaseline = "alphabetic"
	ctx4.fillText1("Alphabetic", 190, 100)
	ctx4.textBaseline = "hanging"
	ctx4.fillText1("Hanging", 290, 100)
End Sub
