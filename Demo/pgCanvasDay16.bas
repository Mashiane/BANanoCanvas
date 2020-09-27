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
	canvdays.SetTitle("Canvas Day 16")
	
	'r1c0
	body.Append("<p>Image to use:</p>")
	'
	Dim img As BANanoElement = body.Append($"<img id="scream"></img>"$).Get("#scream")
	img.setattr("width", 220)
	img.setattr("height", 277)
	img.setattr("src", "./assets/img_the_scream.jpg")
	img.setattr("alt", "The Scream")
	img.on("load", Me, "loadimage")
	
	body.Append("<p>Canvas:</p>")
	
	'create the canvas
	Dim mycanvasx As BANanoElement = body.Append($"<canvas id="c">Your browser does Not support the HTML5 canvas tag</canvas>"$).Get("#c")
	mycanvasx.setattr("width", 240)
	mycanvasx.setattr("height", 297)
	mycanvasx.setstyle(BANano.ToJson(CreateMap("border":"1px solid #d3d3d3")))
	
	'c2
	Dim mycanvasx As BANanoElement = body.Append($"<canvas id="c2">Your browser does Not support the HTML5 canvas tag</canvas>"$).Get("#c2")
	mycanvasx.setattr("width", 240)
	mycanvasx.setattr("height", 297)
	mycanvasx.setstyle(BANano.ToJson(CreateMap("border":"1px solid #d3d3d3")))
	
	Dim mycanvasx As BANanoElement = body.Append($"<canvas id="c3">Your browser does Not support the HTML5 canvas tag</canvas>"$).Get("#c3")
	mycanvasx.setattr("width", 240)
	mycanvasx.setattr("height", 297)
	mycanvasx.setstyle(BANano.ToJson(CreateMap("border":"1px solid #d3d3d3")))
End Sub

Sub loadimage(e As BANanoEvent)
	Dim c As BANanoElement
	c.Initialize("#c")
	Dim ctx As MashCanvas
	ctx.Initialize(c, "2d")
	Dim imgx As BANanoElement
	imgx.Initialize("#scream")
	ctx.drawImage1(imgx, 10, 10)
	
	'crop the image	
	Dim c2 As BANanoElement
	c2.Initialize("#c2")
	Dim ctx1 As MashCanvas
	ctx1.Initialize(c2, "2d")
	Dim imgx1 As BANanoElement
	imgx1.Initialize("#scream")
	ctx1.drawImage2(imgx1, 10, 10, 150, 180)
	
	'crop and resize
	Dim c3 As BANanoElement
	c3.Initialize("#c3")
	Dim ctx2 As MashCanvas
	ctx2.Initialize(c3, "2d")
	Dim imgx2 As BANanoElement
	imgx2.Initialize("#scream")
	ctx2.drawImage3(imgx2, 90, 130, 50, 60, 10, 10, 50, 60)
End Sub
