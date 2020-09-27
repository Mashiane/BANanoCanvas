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

#if css
canvas {
  border: 1px solid #d3d3d3;
  margin-right: 10px;
  margin-bottom: 20px;
}
#End If

Sub Init
	body.Initialize("#body")
	body.empty
	canvdays.SetTitle("Canvas Day 20")
	'
	Dim gco As List
	gco.Initialize 
	gco.add("source-atop")
	gco.add("source-in")
	gco.add("source-out")
	gco.add("source-over")
	gco.add("destination-atop")
	gco.add("destination-in")
	gco.add("destination-out")
	gco.add("destination-over")
	gco.add("lighter")
	gco.add("copy")
	gco.add("xor")

	Dim n As Int
	Dim g As Int = gco.Size - 1
	For n = 0 To g
		Dim p As BANanoElement = body.Append($"<p id="p_${n}">${gco.Get(n)} & ":<br></p>"$).Get($"#p_${n}"$)
		p.SetStyle(BANano.ToJson(CreateMap("float":"left")))
		
		Dim c As BANanoElement = p.Append($"<canvas id="c${n}"></canvas>"$).Get($"#c${n}"$)
		c.setattr("width", 120)
		c.setattr("height", 100)
		'add canvas to paragraph
		Dim ctx As MashCanvas
		ctx.Initialize(c, "2d")
		ctx.fillStyle = "blue"
		ctx.fillRect1(10, 10, 50, 50)
		ctx.globalCompositeOperation = gco.Get(n)
		ctx.beginPath1
		ctx.fillStyle = "red"
		ctx.arc1(50, 50, 30, 0, 2 * cPI)
		ctx.fill1
		'
		p.Append("<div></div>")
	Next
End Sub