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
	canvdays.SetTitle("Canvas Day 02")
	'
	'r1c0
	Dim ctx1 As MashCanvas = canvdays.Skeleton(body, "strokeStyle", "ctx1")
	ctx1.strokeStyle = "#ff0000"
	ctx1.strokeRect1(20, 20, 150, 100)
	
	'r1c1
	Dim ctx2 As MashCanvas = canvdays.Skeleton(body, "strokeStyle", "ctx2")
	Dim gradient As MashCanvas = ctx2.createLinearGradient1(0, 0, 170, 0)
	gradient.addColorStop1(0, "magenta")
	gradient.addColorStop1(0.5, "blue")
	gradient.addColorStop1(1.0, "red")
	ctx2.strokeStyle = gradient.Context
	ctx2.lineWidth = 5
	ctx2.strokeRect1(20, 20, 150, 100)
	
	'r1c2
	Dim ctx3 As MashCanvas = canvdays.Skeleton(body, "strokeStyle", "ctx3")
	ctx3.font = "30px Verdana"
	Dim c As BANanoElement
	c.Initialize("#ctx3")
	Dim cwidth As Int = c.GetAttr("width")
	Dim gradient3 As MashCanvas = ctx3.createLinearGradient1(0, 0, cwidth, 0)
	gradient3.addColorStop1("0", "magenta")
	gradient3.addColorStop1("0.5", "blue")
	gradient3.addColorStop1("1.0", "red")
	ctx3.strokeStyle = gradient3.context
	ctx3.strokeText1("Big smile!", 10, 50)
End Sub
