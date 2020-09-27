﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.5
@EndOfDesignText@
#IgnoreWarnings:12
Sub Class_Globals
	Public Canvas As BANanoElement
	Public Context As BANanoObject
	Private banano As BANano   'ignore
	Type Pixel(red As Int, green As Int, blue As Int, alpha As Int)
	Public data As List
End Sub

Public Sub Initialize(jse As BANanoElement, sContext As String) As MashCanvas
	Canvas = jse
	'get the specified context
	Context = jse.RunMethod("getContext", Array(sContext))
	Dim bo As BANanoObject = Context.GetField("data")
	data =  bo.result
	Return Me
End Sub

'get pixel color
Sub getPixelColor(pos As Int) As Pixel
	Dim red As Int
	Dim green As Int
	Dim blue As Int
	Dim alpha As Int
	'
	pos = banano.parseint(pos)
	red = banano.parseint(red)
	green = banano.parseint(green)
	blue = banano.parseint(blue)
	alpha = banano.parseint(alpha)
	'
	Dim pxl As Pixel
	pxl.Initialize 
	
	pxl.red = data.Get(pos + 0)
	pxl.green = data.Get(pos + 1)
	pxl.blue = data.Get(pos + 2)
	pxl.alpha = data.Get(pos + 3)
	Return pxl
End Sub

'set pixels color
Sub setPixelColor(pos As Int, red As Int, green As Int, blue As Int, alpha As Int) As MashCanvas
	pos = banano.parseint(pos)
	red = banano.parseint(red)
	green = banano.parseint(green)
	blue = banano.parseint(blue)
	alpha = banano.parseint(alpha)
	data.Set(pos + 0, red)
	data.set(pos + 1, green)
	data.Set(pos + 2, blue)
	data.Set(pos + 3, alpha)
	Return Me
End Sub

'set pixels color
Sub setPixelColor1(pos As Int, pxl As Pixel) As MashCanvas
	pos = banano.parseint(pos)
	data.Set(pos + 0, pxl.red)
	data.set(pos + 1, pxl.green)
	data.Set(pos + 2, pxl.blue)
	data.Set(pos + 3, pxl.alpha)
	Return Me
End Sub

'set globalCompositeOperation
Sub setglobalCompositeOperation(value As String) As MashCanvas
	Context.SetField("globalCompositeOperation", value)
	Return Me
End Sub

'get globalCompositeOperation
Sub getglobalCompositeOperation() As String
	Return Context.GetField("globalCompositeOperation").result
End Sub

'set globalAlpha
Sub setglobalAlpha(value As String) As MashCanvas
	Context.SetField("globalAlpha", value)
	Return Me
End Sub

'get globalAlpha
Sub getglobalAlpha() As String
	Return Context.GetField("globalAlpha").result
End Sub

'get width
Sub getwidth() As Int
	Return Context.GetField("width").result
End Sub

'get height
Sub getheight() As Int
	Return Context.GetField("height").result
End Sub

'set textBaseline
Sub settextBaseline(value As String) As MashCanvas
	Context.SetField("textBaseline", value)
	Return Me
End Sub

'get textBaseline
Sub gettextBaseline() As String
	Return Context.GetField("textBaseline").Result
End Sub

'set textAlign
Sub settextAlign(value As String) As MashCanvas
	Context.SetField("textAlign", value)
	Return Me
End Sub

'get textAlign
Sub gettextAlign() As String
	Return Context.GetField("textAlign").Result
End Sub

'set lineCap
Sub setlineCap(value As String) As MashCanvas
	Context.SetField("lineCap", value)
	Return Me
End Sub

'get lineCap
Sub getlineCap() As String
	Return Context.GetField("lineCap").Result
End Sub


'set shadowOffsetY
Sub setshadowOffsetY(value As String) As MashCanvas
	Context.SetField("shadowOffsetY", value)
	Return Me
End Sub

'get shadowOffsetY
Sub getshadowOffsetY() As String
	Return Context.GetField("shadowOffsetY").Result
End Sub


'set shadowOffsetX
Sub setshadowOffsetX(value As String) As MashCanvas
	Context.SetField("shadowOffsetX", value)
	Return Me
End Sub

'get shadowOffsetX
Sub getshadowOffsetX() As String
	Return Context.GetField("shadowOffsetX").Result
End Sub


'set shadowBlur
Sub setshadowBlur(value As String) As MashCanvas
	Context.SetField("shadowBlur", value)
	Return Me
End Sub

'get shadowBlur
Sub getshadowBlur() As String
	Return Context.GetField("shadowBlur").Result
End Sub

'set shadowColor
Sub setshadowColor(value As String) As MashCanvas
	Context.SetField("shadowColor", value)
	Return Me
End Sub

'get shadowColor
Sub getshadowColor() As String
	Return Context.GetField("shadowColor").Result
End Sub



'set font
Sub setfont(value As String) As MashCanvas
	Context.SetField("font", value)
	Return Me
End Sub

'get font
Sub getfont() As String
	Return Context.GetField("font").Result
End Sub

'set lineWidth
Sub setlineWidth(value As Double) As MashCanvas
	Context.SetField("lineWidth", value)
	Return Me
End Sub

'get lineWidth
Sub getlineWidth() As Double
	Return Context.GetField("lineWidth").Result
End Sub

'set rect
Sub setrect(value As Object) As MashCanvas
	Context.SetField("rect", value)
	Return Me
End Sub

'get rect
Sub getrect() As Object
	Return Context.GetField("rect").Result
End Sub

'set strokeStyle
Sub setstrokeStyle(value As Object) As MashCanvas
	Context.SetField("strokeStyle", value)
	Return Me
End Sub

'get strokeStyle
Sub getstrokeStyle() As Object
	Return Context.GetField("strokeStyle").Result
End Sub


'set fillStyle
Sub setfillStyle(value As Object) As MashCanvas
	Context.SetField("fillStyle", value)
	Return Me
End Sub

'get fillStyle
Sub getfillStyle() As Object
	Return Context.GetField("fillStyle").Result
End Sub


'set fillRect
Sub setfillRect(value As Object) As MashCanvas
	Context.SetField("fillRect", value)
	Return Me
End Sub

'get fillRect
Sub getfillRect() As Object
	Return Context.GetField("fillRect").Result
End Sub

'set strokeRect
Sub setstrokeRect(value As Object) As MashCanvas
	Context.SetField("strokeRect", value)
	Return Me
End Sub

'get strokeRect
Sub getstrokeRect() As Object
	Return Context.GetField("strokeRect").Result
End Sub

'set clearRect
Sub setclearRect(value As Object) As MashCanvas
	Context.SetField("clearRect", value)
	Return Me
End Sub

'get clearRect
Sub getclearRect() As Object
	Return Context.GetField("clearRect").Result
End Sub

'set fill
Sub setfill(value As Object) As MashCanvas
	Context.SetField("fill", value)
	Return Me
End Sub

'get fill
Sub getfill() As Object
	Return Context.GetField("fill").Result
End Sub

'set stroke
Sub setstroke(value As Object) As MashCanvas
	Context.SetField("stroke", value)
	Return Me
End Sub

'get stroke
Sub getstroke() As Object
	Return Context.GetField("stroke").Result
End Sub

'set beginPath
Sub setbeginPath(value As Object) As MashCanvas
	Context.SetField("beginPath", value)
	Return Me
End Sub

'get beginPath
Sub getbeginPath() As Object
	Return Context.GetField("beginPath").Result
End Sub

'set moveTo
Sub setmoveTo(value As Object) As MashCanvas
	Context.SetField("moveTo", value)
	Return Me
End Sub

'get moveTo
Sub getmoveTo() As Object
	Return Context.GetField("moveTo").Result
End Sub

'set closePath
Sub setclosePath(value As Object) As MashCanvas
	Context.SetField("closePath", value)
	Return Me
End Sub

'get closePath
Sub getclosePath() As Object
	Return Context.GetField("closePath").Result
End Sub

'set lineTo
Sub setlineTo(value As Object) As MashCanvas
	Context.SetField("lineTo", value)
	Return Me
End Sub

'get lineTo
Sub getlineTo() As Object
	Return Context.GetField("lineTo").Result
End Sub

'set clip
Sub setclip(value As Object) As MashCanvas
	Context.SetField("clip", value)
	Return Me
End Sub

'get clip
Sub getclip() As Object
	Return Context.GetField("clip").Result
End Sub

'set quadraticCurveTo
Sub setquadraticCurveTo(value As Object) As MashCanvas
	Context.SetField("quadraticCurveTo", value)
	Return Me
End Sub

'get quadraticCurveTo
Sub getquadraticCurveTo() As Object
	Return Context.GetField("quadraticCurveTo").Result
End Sub

'set bezierCurveTo
Sub setbezierCurveTo(value As Object) As MashCanvas
	Context.SetField("bezierCurveTo", value)
	Return Me
End Sub

'get bezierCurveTo
Sub getbezierCurveTo() As Object
	Return Context.GetField("bezierCurveTo").Result
End Sub

'set arc
Sub setarc(value As Object) As MashCanvas
	Context.SetField("arc", value)
	Return Me
End Sub

'get arc
Sub getarc() As Object
	Return Context.GetField("arc").Result
End Sub

'set arcTo
Sub setarcTo(value As Object) As MashCanvas
	Context.SetField("arcTo", value)
	Return Me
End Sub

'get arcTo
Sub getarcTo() As Object
	Return Context.GetField("arcTo").Result
End Sub

'set isPointInPath
Sub setisPointInPath(value As Object) As MashCanvas
	Context.SetField("isPointInPath", value)
	Return Me
End Sub

'get isPointInPath
Sub getisPointInPath() As Object
	Return Context.GetField("isPointInPath").Result
End Sub

'set scale
Sub setscale(value As Object) As MashCanvas
	Context.SetField("scale", value)
	Return Me
End Sub

'get scale
Sub getscale() As Object
	Return Context.GetField("scale").Result
End Sub

'set rotate
Sub setrotate(value As Object) As MashCanvas
	Context.SetField("rotate", value)
	Return Me
End Sub

'get rotate
Sub getrotate() As Object
	Return Context.GetField("rotate").Result
End Sub

'set translate
Sub settranslate(value As Object) As MashCanvas
	Context.SetField("translate", value)
	Return Me
End Sub

'get translate
Sub gettranslate() As Object
	Return Context.GetField("translate").Result
End Sub

'set transform
Sub settransform(value As Object) As MashCanvas
	Context.SetField("transform", value)
	Return Me
End Sub

'get transform
Sub gettransform() As Object
	Return Context.GetField("transform").Result
End Sub

'set fillText
Sub setfillText(value As Object) As MashCanvas
	Context.SetField("fillText", value)
	Return Me
End Sub

'get fillText
Sub getfillText() As Object
	Return Context.GetField("fillText").Result
End Sub

'set strokeText
Sub setstrokeText(value As Object) As MashCanvas
	Context.SetField("strokeText", value)
	Return Me
End Sub

'get strokeText
Sub getstrokeText() As Object
	Return Context.GetField("strokeText").Result
End Sub

'set measureText
Sub setmeasureText(value As Object) As MashCanvas
	Context.SetField("measureText", value)
	Return Me
End Sub

'get measureText
Sub getmeasureText() As Object
	Return Context.GetField("measureText").Result
End Sub

'set drawImage
Sub setdrawImage(value As Object) As MashCanvas
	Context.SetField("drawImage", value)
	Return Me
End Sub

'get drawImage
Sub getdrawImage() As Object
	Return Context.GetField("drawImage").Result
End Sub

'set save
Sub setsave(value As Object) As MashCanvas
	Context.SetField("save", value)
	Return Me
End Sub

'get save
Sub getsave() As Object
	Return Context.GetField("save").Result
End Sub

'set restore
Sub setrestore(value As Object) As MashCanvas
	Context.SetField("restore", value)
	Return Me
End Sub

'get restore
Sub getrestore() As Object
	Return Context.GetField("restore").Result
End Sub

'set miterLimit
Sub setmiterLimit(value As Object) As MashCanvas
	Context.SetField("miterLimit", value)
	Return Me
End Sub

'get miterLimit
Sub getmiterLimit() As Object
	Return Context.GetField("miterLimit").Result
End Sub

'set lineJoin
Sub setlineJoin(value As Object) As MashCanvas
	Context.SetField("lineJoin", value)
	Return Me
End Sub

'get lineJoin
Sub getlineJoin() As Object
	Return Context.GetField("lineJoin").Result
End Sub

'set toDataURL
Sub settoDataURL(value As Object) As MashCanvas
	Context.SetField("toDataURL", value)
	Return Me
End Sub

'get toDataURL
Sub gettoDataURL() As Object
	Return Context.GetField("toDataURL").Result
End Sub

'createLinearGradient
Sub createLinearGradient1(x0 As Int, y0 As Int, x1 As Int, y1 As Int) As MashCanvas
	Dim bo As BANanoObject = Context.RunMethod("createLinearGradient", Array(x0, x1, y0, y1))
	Dim jse As MashCanvas
	jse.Context = bo
	jse.data = bo.GetField("data").result
	Return jse
End Sub

'createPattern
Sub createPattern1(bo As BANanoObject, direction As String) As BANanoObject
	Dim bo1 As BANanoObject = Context.RunMethod("createPattern", Array(bo, direction))
	Return bo1
End Sub

'createRadialGradient
Sub createRadialGradient1(x0 As Int, y0 As Int, r0 As Int, x1 As Int, y1 As Int, r1 As Int) As BANanoObject
	Dim bo As BANanoObject = Context.RunMethod("createRadialGradient", Array(x0,y0,r0,x1,y1,r1))
	Return bo
End Sub

'addColorStop
Sub addColorStop1(stopx As Double, colorx As String) As MashCanvas
	Context.RunMethod("addColorStop", Array(stopx, colorx))
	Return Me
End Sub

'rect
Sub rect1(x As Int,y As Int, width As Int, height As Int) As MashCanvas
	Context.RunMethod("rect", Array(x,y,width,height))
	Return Me
End Sub

'fillRect
Sub fillRect1(x As Int, y As Int,width As Int, height As Int) As MashCanvas
	Context.RunMethod("fillRect", Array(x,y,width,height))
	Return Me
End Sub

'strokeRect
Sub strokeRect1(x As Int, y As Int, width As Int, height As Int) As MashCanvas
	Context.RunMethod("strokeRect", Array(x,y,width,height))
	Return Me
End Sub

'clearRect
Sub clearRect1(x As Int, y As Int, width As Int, height As Int) As MashCanvas
	Context.RunMethod("clearRect", Array(x,y,width,height))
	Return Me
End Sub

'fill
Sub fill1() As MashCanvas
	Context.RunMethod("fill", Null)
	Return Me
End Sub

'stroke
Sub stroke1() As MashCanvas
	Context.RunMethod("stroke", Null)
	Return Me
End Sub

'beginPath
Sub beginPath1() As MashCanvas
	Context.RunMethod("beginPath", Null)
	Return Me
End Sub

'moveTo
Sub moveTo1(x As Int, y As Int) As MashCanvas
	Context.RunMethod("moveTo", Array(x,y))
	Return Me
End Sub

'closePath
Sub closePath1() As MashCanvas
	Context.RunMethod("closePath", Null)
	Return Me
End Sub

'lineTo
Sub lineTo1(x As Int, y As Int) As MashCanvas
	Context.RunMethod("lineTo", Array(x,y))
	Return Me
End Sub

'clip
Sub clip1() As MashCanvas
	Context.RunMethod("clip", Null)
	Return Me
End Sub

'quadraticCurveTo
Sub quadraticCurveTo1(cpx As Int, cpy As Int, x As Int, y As Int) As MashCanvas
	Context.RunMethod("quadraticCurveTo", Array(cpx,cpy,x,y))
	Return Me
End Sub

'bezierCurveTo
Sub bezierCurveTo1(cp1x As Int, cp1y As Int, cp2x As Int, cp2y As Int ,x As Int, y As Int) As MashCanvas
	Context.RunMethod("bezierCurveTo", Array(cp1x,cp1y,cp2x,cp2y,x,y))
	Return Me
End Sub

'arc
Sub arc1(x As Int, y As Int, r As Int, sAngle As Int, eAngle As Int) As MashCanvas
	Context.RunMethod("arc", Array(x,y,r,sAngle,eAngle))
	Return Me
End Sub

'arc
Sub arc2(x As Int, y As Int, r As Int, sAngle As Int, eAngle As Int, counterclockwise As Object) As MashCanvas
	Context.RunMethod("arc", Array(x,y,r,sAngle,eAngle,counterclockwise))
	Return Me
End Sub


'arcTo
Sub arcTo1(x1 As Int, y1 As Int, x2 As Int, y2 As Int, r As Int) As MashCanvas
	Context.RunMethod("arcTo", Array(x1,y1,x2,y2,r))
	Return Me
End Sub

'isPointInPath
Sub isPointInPath1(x As Int, y As Int) As Boolean
	Dim bo As BANanoObject = Context.RunMethod("isPointInPath", Array(x,y))
	Return bo.Result
End Sub

'scale
Sub scale1(scalewidth As Double, scaleheight As Double) As MashCanvas
	Context.RunMethod("scale", Array(scalewidth, scaleheight))
	Return Me
End Sub

'rotate
Sub rotate1(angle As Double) As MashCanvas
	Context.RunMethod("rotate", Array(angle))
	Return Me
End Sub

'translate
Sub translate1(x As Int, y As Int) As MashCanvas
	Context.RunMethod("translate", Array(x,y))
	Return Me
End Sub

'transform
Sub transform1(a As Int, b As Int, c As Int, d As Int, e As Int, f As Int) As MashCanvas
	Context.RunMethod("transform", Array(a,b,c,d,e,f))
	Return Me
End Sub

'setTransform
Sub setTransform1(a As Double,b As Double, c As Double, d As Double, e As Double, f As Double) As MashCanvas
	Context.RunMethod("setTransform", Array(a,b,c,d,e,f))
	Return Me
End Sub

'fillText
Sub fillText1(text As String, x As Int, y As Int) As MashCanvas
	Context.RunMethod("fillText", Array(text,x,y))
	Return Me
End Sub

'fillText
Sub fillText2(text As String, x As Int, y As Int, maxWidth As Int) As MashCanvas
	Context.RunMethod("fillText", Array(text,x,y,maxWidth))
	Return Me
End Sub


'strokeText
Sub strokeText1(text As String , x As Int, y As Int) As MashCanvas
	Context.RunMethod("strokeText", Array(text,x,y))
	Return Me
End Sub

'strokeText
Sub strokeTextXYW(text As String , x As Int, y As Int, maxWidth As Int) As MashCanvas
	Context.RunMethod("strokeText", Array(text,x,y,maxWidth))
	Return Me
End Sub

'measureText
Sub measureText1(text As String) As Int
	Dim bo As BANanoObject = Context.RunMethod("measureText", Array(text))
	Return bo.GetField("width").result
End Sub

'drawImage
Sub drawImage1(img As BANanoElement, x As Int, y As Int) As MashCanvas
	Dim bo As BANanoObject = img.ToObject
	Context.RunMethod("drawImage", Array(bo,x,y))
	Return Me
End Sub

'drawImage2
Sub drawImage2(img As BANanoElement, x As Int, y As Int, width As Int , height As Int) As MashCanvas
	Dim bo As BANanoObject = img.ToObject
	Context.RunMethod("drawImage", Array(bo,x,y,width,height))
	Return Me
End Sub

'drawImage3
Sub drawImage3(img As BANanoElement, sx As Int, sy As Int, swidth As Int, sheight As Int , x As Int , y As Int ,width As Int , height As Int) As MashCanvas
	Dim bo As BANanoObject = img.ToObject
	Context.RunMethod("drawImage", Array(bo,sx,sy,swidth,sheight,x,y,width,height))
	Return Me
End Sub

'createImageData
Sub createImageData1(width As Int, height As Int) As MashCanvas
	Dim bo As BANanoObject = Context.RunMethod("createImageData", Array(width,height))
	Dim el As MashCanvas
	el.Context = bo
	el.data = bo.GetField("data").result
	Return el
End Sub

'getImageData
Sub getImageData1(x As Int, y As Int, width As Int, height As Int) As MashCanvas
	Dim bo As BANanoObject = Context.RunMethod("getImageData", Array(x,y,width,height))
	Dim el As MashCanvas
	el.Context = bo
	el.data = bo.GetField("data").result
	Return el
End Sub

'putImageData1
Sub putImageData1(imgData As MashCanvas,x As Int, y As Int) As MashCanvas
	Dim bo As BANanoObject = imgData.context
	'Context.RunMethod("putImageData", Array(bo,x,y))
	Dim arr As List
	arr.Initialize 
	arr.Add(bo)
	arr.Add(x)
	arr.Add(y)
	Context.GetFunction("putImageData").RunMethod("apply", Array(Context, arr))
	Return Me
End Sub

'putImageData2
Sub putImageData2(imgData As MashCanvas,x As Int, y As Int, dirtyX As Int, dirtyY As Int, dirtyWidth As Int, dirtyHeight As Int) As MashCanvas
	Dim bo As BANanoObject = imgData.context
	Context.RunMethod("putImageData", Array(bo,x,y,dirtyX,dirtyY,dirtyWidth,dirtyHeight))
	Return Me
End Sub


'save
Sub save1(args As List) As MashCanvas
	Context.RunMethod("save", args)
	Return Me
End Sub

'restore
Sub restore1(args As List) As MashCanvas
	Context.RunMethod("restore", args)
	Return Me
End Sub

'createEvent
Sub createEvent1(args As List) As MashCanvas
	Context.RunMethod("createEvent", args)
	Return Me
End Sub

'getContext
Sub getContext1(args As List) As MashCanvas
	Context.RunMethod("getContext", args)
	Return Me
End Sub

'toDataURL
Sub toDataURL1(args As List) As MashCanvas
	Context.RunMethod("toDataURL", args)
	Return Me
End Sub

' helper - draw a line
Sub drawLine(startX As Int , startY As Int, endX As Int, endY As Int) As MashCanvas
    beginPath1
    moveTo1(startX, startY)
    lineTo1(endX,endY)
    stroke1
	Return Me
End Sub

'helper - draw arc
Sub drawArc(centerX As Int, centerY As Int, radius As Double, startAngle As Int, endAngle As Int) As MashCanvas
    beginPath1
    arc1(centerX, centerY, radius, startAngle, endAngle)
    stroke1
	Return Me
End Sub

'helper - draw pie slice
Sub drawPieSlice(centerX As Int, centerY As Int, radius As Double, startAngle As Int, endAngle As Int, color As String) As MashCanvas
    setfillStyle(color)
    beginPath1
    moveTo1(centerX,centerY)
    arc1(centerX, centerY, radius, startAngle, endAngle)
    closePath1
    fill1
	Return Me
End Sub
