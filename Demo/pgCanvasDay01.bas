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
	'change the page title on browser
	canvdays.SetTitle("BANanoCanvas by Anele Mbanga (Mashy)")
	
	' r1c0
	Dim ctx1 As MashCanvas = canvdays.Skeleton(body, "fillStyle", "ctx1")
	ctx1.fillStyle = "#ff0000"
	ctx1.fillRect1(20, 20, 150, 100)
	
	'r1c1
	Dim ctx2 As MashCanvas = canvdays.Skeleton(body,"fillStyle", "ctx2")
	Dim my_gradient As MashCanvas = ctx2.createLinearGradient1(0, 0, 0, 170)
	my_gradient.addColorStop1(0, "black")
	my_gradient.addColorStop1(1, "white")
	ctx2.fillStyle = my_gradient.Context
	ctx2.fillRect1(20, 20, 150, 100)
	
	'r1c2
	Dim ctx3 As MashCanvas = canvdays.Skeleton(body, "fillStyle", "ctx3")
	Dim my_gradient1 As MashCanvas = ctx3.createLinearGradient1(0, 0, 170, 0)
	my_gradient1.addColorStop1(0, "black")
	my_gradient1.addColorStop1(1, "white")
	ctx3.fillStyle = my_gradient1.Context
	ctx3.fillRect1(20, 20, 150, 100)
	
	'r1c3
	Dim ctx4 As MashCanvas = canvdays.Skeleton(body, "fillStyle", "ctx4")
	Dim my_gradient3 As MashCanvas = ctx4.createLinearGradient1(0, 0, 170, 0)
	my_gradient3.addColorStop1(0, "black")
	my_gradient3.addColorStop1(0.5, "red")
	my_gradient3.addColorStop1(1, "white")
	ctx4.fillStyle = my_gradient3.Context
	ctx4.fillRect1(20, 20, 150, 100)
	
	'r1c4
	Dim img As BANanoElement = body.Append($"<img id="lamp"></img>"$).Get("#lamp")
	img.SetAttr("src", "./assets/img_lamp.jpg")
	img.SetAttr("width", 32)
	img.SetAttr("height",  32)
	'
	canvdays.Canvas(body, "createPattern1", "ctx5")
	'
	Dim b1 As BANanoElement = body.Append($"<button id="b1">Repeat</button>"$).Get("#b1")
	b1.On("click", Me, "brepeat")
End Sub

Sub brepeat(e As BANanoEvent)
	draw("repeat")
End Sub

Sub draw(direction As String)
	Dim c As BANanoElement
	c.Initialize("#ctx5")
	Dim ctx As MashCanvas
	ctx.Initialize(c, "2d")
	Dim cwidth As Int = c.GetAttr("width")
	Dim cheight As Int = c.GetAttr("height")
	ctx.clearRect1(0, 0, cwidth, cheight)
	Dim img As BANanoElement
	img.Initialize("#lamp")
	Dim pat As MashCanvas = ctx.createPattern1(img, direction)
	ctx.rect1(0, 0, 150, 100)
	ctx.fillStyle = pat.Context
	ctx.fill1
End Sub
