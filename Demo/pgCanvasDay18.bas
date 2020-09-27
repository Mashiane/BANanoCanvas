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


Sub minimum(items As List) As Int
	items.Sort(True)
	'get the first item
	Dim fi As Int = items.Get(0)
	fi = BANano.parseint(fi)
	'compare each item to the first item
	For Each item As String In items
		Dim ci As Int = BANano.parseInt(item)
		If ci < fi Then fi = ci
	Next
	Return fi
End Sub


Sub Init
	body.Initialize("#body")
	body.empty
	canvdays.SetTitle("Canvas Day 18")
	
	'r1c0
	Dim ctx As MashCanvas = canvdays.Skeleton(body, "pie", "ctx")
	ctx.Canvaswidth = 300
	ctx.Canvasheight = 300
	ctx.drawLine(100, 100, 200, 200)
	ctx.drawArc(150, 150, 150, 0, cPI / 3)
	ctx.drawPieSlice(150, 150, 150, (cPI / 2), (cPI / 2) + (cPI / 4), "#ff0000")
	
	'
	'r1c1
	Dim ctx1 As MashCanvas = canvdays.Skeleton(body, "pie", "ctx1")
	ctx1.Canvaswidth = 600
	ctx1.Canvasheight = 600
	Dim legend As BANanoElement = body.Append($"<div id="legend"></div>"$).Get("#legend")
	
	Dim myVinyls As Map = CreateMap("Classical music": 10, "Alternative rock": 14, "Pop": 2, "Jazz": 12)
	Dim colors As List
	colors.Initialize
	colors.AddAll(Array("#fde23e", "#f16e23", "#57d9ff","#937e88"))
	Dim options As Map = CreateMap("data":myVinyls, "colors":colors)
	'options.put("doughnutHoleSize", 0.5)
	options.Put("legend", "#legend")
	'
	'calculate total value
	Dim total_value As Int = 0
	Dim color_index As Int = 0
	Dim idata As Map = options.Get("data")
	Dim icolors As List = options.get("colors")
	'
	For Each k As String In idata.keys
		Dim v As Int = idata.get(k)
		total_value = total_value + v
	Next
	'
	Dim start_angle As Int = 0
	Dim color_index As Int = -1
	For Each categ As String In idata.keys
		Dim val As String = idata.get(categ)
		val = BANano.parseint(val)
		'
		Dim slice_angle As Double = (2 * cPI * val) / total_value
		'
		Dim minof As Int = minimum(Array(ctx1.canvaswidth / 2, ctx1.canvasheight / 2))
		'
		color_index = color_index + 1
		Dim scolor As String = icolors.get(color_index)
		'
		ctx1.drawPieSlice(ctx1.canvaswidth / 2, ctx1.canvasheight / 2, minof, start_angle, start_angle + slice_angle, scolor)
        
		start_angle = start_angle + slice_angle
	Next
	
	'drawing a white circle over the chart
	'To create the doughnut chart
	Dim doughnutHoleSize As Double = options.getdefault("doughnutHoleSize",0)
	If doughnutHoleSize > 0 Then
		ctx1.drawPieSlice(ctx1.canvaswidth / 2, ctx1.canvasheight / 2, _
		doughnutHoleSize * minimum(Array(ctx1.canvaswidth / 2, ctx1.canvasheight / 2)) , 0, 2 * cPI, "#ff0000")
	End If
	'
	start_angle = 0
	For Each categ As String In idata.keys
		Dim val As String = idata.get(categ)
		val = BANano.parseInt(val)
		slice_angle = 2 * cPI * val / total_value
		Dim pieRadius As Double = minimum(Array(ctx1.canvaswidth/2, ctx1.canvasheight/2))
		Dim labelX As Int = ctx1.canvaswidth/2 + (pieRadius / 2) * Cos(start_angle + slice_angle/2)
		Dim labelY As Int = ctx1.canvasheight/2 + (pieRadius / 2) * Sin(start_angle + slice_angle/2)
 
		If (doughnutHoleSize) > 0 Then
			Dim offset As Int = (pieRadius * doughnutHoleSize ) / 2
			labelX = ctx1.canvaswidth/2 + (offset + pieRadius / 2) * Cos(start_angle + slice_angle/2)
			labelY = ctx1.canvasheight/2 + (offset + pieRadius / 2) * Sin(start_angle + slice_angle/2)
		End If
	 
		Dim labelText As Int = Round(100 * val / total_value)
		ctx1.fillStyle = "white"
		ctx1.font = "bold 20px Arial"
		ctx1.fillText1(labelText & "%", labelX, labelY)
		start_angle = start_angle + slice_angle
	Next
	'
	If options.ContainsKey("legend") Then
		color_index = -1
		Dim legendHTML As StringBuilder
		legendHTML.initialize
		For Each categ As String In idata.keys
			color_index = color_index + 1
			legendHTML.Append("<div><span style='display:inline-block;width:20px;background-color:")
			legendHTML.append(icolors.get(color_index) & ";'>&nbsp;</span> " & categ & "</div>")
		Next
		Dim lgnd As BANanoElement
		lgnd.Initialize(options.get("legend"))
		lgnd.SetHTML(legendHTML.tostring)
	End If
End Sub
