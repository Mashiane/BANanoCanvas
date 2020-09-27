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
	'initialize the window
	body.Initialize("#body")
	body.empty
	canvdays.SetTitle("Canvas Day 17")
	
	'r1c0
	Dim ctx As MashCanvas = canvdays.Skeleton(body, "createImageData", "ctx")
	
	'add a paragraph
	Dim p As BANanoElement = body.Append($"<p id="imgwidth"></p>"$).Get("#imgwidth")
	
	'create image data
	Dim imgData As MashCanvas = ctx.createImageData1(100, 100)
	p.SetText("Width of imgData: " & imgData.width)
	'
	Dim i As Int
	Dim d As Int = imgData.data.size
	For i = 0 To d
		imgData.setPixelColor(i, 255, 0, 0, 255)
		i = i + 4
	Next
	ctx.putImageData1(imgData, 10, 10)
	'
	'r1c1
	Dim ctx1 As MashCanvas = canvdays.Skeleton(body, "getImageData", "ctx1")
	ctx1.fillStyle = "red"
	ctx1.fillRect1(10, 10, 50, 50)
	'
	'copy the image
	Dim imgData As MashCanvas = ctx1.getImageData1(10, 10, 50, 50)
	ctx1.putImageData1(imgData, 10, 70)
	'
	'r1c2
	Dim ctx2 As MashCanvas = canvdays.Skeleton(body, "getImageData - Get Pixels", "ctx2")
	ctx2.fillStyle = "red"
	ctx2.fillRect1(10, 10, 50, 50)
	'
	Dim p As BANanoElement = body.Append($"<p id="pixels"></p>"$).Get("#pixels")
	
	'
	Dim imgData As MashCanvas = ctx1.getImageData1(30, 30, 50, 50)
	Dim pxl As Pixel = imgData.getPixelColor(0)
	p.SetText($"R:${pxl.red} G:${pxl.green} B:${pxl.blue} A:${pxl.alpha}"$)
	'
	'r1c3
	'create an image
	Dim img As BANanoElement = body.Append($"<img id="scream"></img>"$).Get("#scream")
	img.setattr("width", 220)
	img.setattr("height", 277)
	img.setattr("src", "./assets/img_the_scream.jpg")
	img.setattr("alt",  "The Scream")
	img.on("load", Me, "loadimage")
End Sub

Sub loadimage(e As BANanoEvent)
	Dim ctx2 As MashCanvas = canvdays.Skeleton(body, "imagex", "ctx2")
	Dim imgx As BANanoElement
	imgx.Initialize("#scream")
	ctx2.canvaswidth = imgx.GetAttr("width")
	ctx2.canvasheight = imgx.GetAttr("height")
	
	'draw image on canvas
	ctx2.drawImage1(imgx, 0, 0)
	'
	Dim imgData As MashCanvas = ctx2.getImageData1(0, 0, ctx2.canvaswidth, ctx2.canvasheight)
	'get each pixel
	Dim i As Int
	Dim s As Int = imgData.data.Size - 1
	For i = 0 To s
		Dim pxl As Pixel = imgData.getPixelColor(i)
		pxl.red = 255 - pxl.red
		pxl.green = 255 - pxl.green
		pxl.blue = 255 - pxl.blue
		pxl.alpha = 255
		imgData.setPixelColor1(i, pxl)
	Next
	ctx2.putImageData1(imgData, 0, 0)
End Sub

