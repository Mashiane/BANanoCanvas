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

'change the title of the page
Sub SetTitle(tt As String)
	BANano.Window.GetField("document").SetField("title", tt)
End Sub

'create skeleton
Sub Skeleton(title As String, cid As String) As MashCanvas
	'add a paragraph to the body
	Dim p As BANanoElement = body.Append($"<p id="p${cid}">${title}</p>"$).Get($"#p${cid}"$)
	p.Append("<br/>")
	'add a canvas to the paragraph
	Dim c As BANanoElement = p.Append($"<canvas id="${cid}">Your browser does Not support the HTML5 canvas tag</canvas>"$).Get($"#${cid}"$)
	c.SetAttr("width", 300)
	c.SetAttr("height", 150)
	c.SetStyle(BANano.ToJson(CreateMap("border": "1px solid #d3d3d3")))
	p.Append("<div></div>")
	'create the context
	Dim ctx As MashCanvas
	ctx.Initialize(c, "2d")
	Return ctx
End Sub

Sub Canvas(Title As String, cid As String) As BANanoElement
	'add a paragraph to the body
	Dim p As BANanoElement = body.Append($"<p id="p${cid}">${Title}</p>"$).Get($"#p${cid}"$)
	p.Append("<br/>")
	'add a canvas to the paragraph
	Dim c As BANanoElement = p.Append($"<canvas id="${cid}">Your browser does Not support the HTML5 canvas tag</canvas>"$).Get($"#${cid}"$)
	c.SetAttr("width", 300)
	c.SetAttr("height", 150)
	c.SetStyle(BANano.ToJson(CreateMap("border": "1px solid #d3d3d3")))
	p.Append("<div></div>")
	Return c
End Sub

Sub Init
	'get the body
	body.Initialize("#body")
	'change the page title on browser
	SetTitle("BANanoCanvas by Anele Mbanga (Mashy)")
	
	' r1c0
	Dim ctx1 As MashCanvas = Skeleton("fillStyle", "ctx1")
	ctx1.fillStyle = "#ff0000"
	ctx1.fillRect1(20, 20, 150, 100)
	
	'r1c1
	Dim ctx2 As MashCanvas = Skeleton("fillStyle", "ctx2")
	Dim my_gradient As MashCanvas = ctx2.createLinearGradient1(0, 0, 0, 170)
	my_gradient.addColorStop1(0, "black")
	my_gradient.addColorStop1(1, "white")
	ctx2.fillStyle = my_gradient.Context
	ctx2.fillRect1(20, 20, 150, 100)
	
	'r1c2
	Dim ctx3 As MashCanvas = Skeleton("fillStyle", "ctx3")
	Dim my_gradient1 As MashCanvas = ctx3.createLinearGradient1(0, 0, 170, 0)
	my_gradient1.addColorStop1(0, "black")
	my_gradient1.addColorStop1(1, "white")
	ctx3.fillStyle = my_gradient1.Context
	ctx3.fillRect1(20, 20, 150, 100)
	
	'r1c3
	Dim ctx4 As MashCanvas = Skeleton("fillStyle", "ctx4")
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
	Canvas("createPattern1", "ctx5")
	'
	Dim b1 As BANanoElement = body.Append($"<button id="b1">Repeat</button>"$).Get("#b1")
	b1.On("click", Me, "brepeat")
	'
	'r1c0
	Dim ctx1 As MashCanvas = Skeleton("strokeStyle", "ctx5")
	ctx1.strokeStyle = "#ff0000"
	ctx1.strokeRect1(20, 20, 150, 100)
	
	'r1c1
	Dim ctx6 As MashCanvas = Skeleton("strokeStyle", "ctx6")
	Dim gradient As BANanoObject = ctx6.createLinearGradient1(0, 0, 170, 0)
	gradient.addColorStop1(0, "magenta")
	gradient.addColorStop1(0.5, "blue")
	gradient.addColorStop1(1.0, "red")
	ctx6.strokeStyle = gradient
	ctx6.lineWidth = 5
	ctx6.strokeRect1(20, 20, 150, 100)
	
	'r1c2
	Dim ctx7 As MashCanvas = Skeleton("strokeStyle", "ctx7")
	Dim c As BANanoObject = document.getElementById("ctx7")
	ctx7.font = "30px Verdana"
	Dim gradient3 As BANanoObject = ctx7.createLinearGradient1(0, 0, c.width, 0)
	gradient3.addColorStop1("0", "magenta")
	gradient3.addColorStop1("0.5", "blue")
	gradient3.addColorStop1("1.0", "red")
	ctx7.strokeStyle = gradient3.context
	ctx7.strokeText1("Big smile!", 10, 50)
	
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
	Dim pat As BANanoObject = ctx.createPattern1(img.ToObject, direction)
	ctx.rect1(0, 0, 150, 100)
	ctx.fillStyle = pat
	ctx.fill1
End Sub
