B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.5
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private banano As BANano
End Sub


'change the title of the page
Sub SetTitle(tt As String)
	banano.Window.GetField("document").SetField("title", tt)
End Sub

'create skeleton
Sub Skeleton(body As BANanoElement, title As String, cid As String) As MashCanvas
	'add a paragraph to the body
	Dim p As BANanoElement = body.Append($"<p id="p${cid}">${title}</p>"$).Get($"#p${cid}"$)
	p.Append("<br/>")
	'add a canvas to the paragraph
	Dim c As BANanoElement = p.Append($"<canvas id="${cid}">Your browser does Not support the HTML5 canvas tag</canvas>"$).Get($"#${cid}"$)
	c.SetAttr("width", 300)
	c.SetAttr("height", 150)
	c.SetStyle(banano.ToJson(CreateMap("border": "1px solid #d3d3d3")))
	p.Append("<div></div>")
	'create the context
	Dim ctx As MashCanvas
	ctx.Initialize(c, "2d")
	Return ctx
End Sub

Sub Canvas(body As BANanoElement, Title As String, cid As String) As BANanoElement
	'add a paragraph to the body
	Dim p As BANanoElement = body.Append($"<p id="p${cid}">${Title}</p>"$).Get($"#p${cid}"$)
	p.Append("<br/>")
	'add a canvas to the paragraph
	Dim c As BANanoElement = p.Append($"<canvas id="${cid}">Your browser does Not support the HTML5 canvas tag</canvas>"$).Get($"#${cid}"$)
	c.SetAttr("width", 300)
	c.SetAttr("height", 150)
	c.SetStyle(banano.ToJson(CreateMap("border": "1px solid #d3d3d3")))
	p.Append("<div></div>")
	Return c
End Sub
