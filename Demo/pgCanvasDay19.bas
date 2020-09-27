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
	canvdays.SetTitle("Canvas Day 19")
	'r1c0
	Dim ctx As MashCanvas = canvdays.Skeleton(body, "globalAlpha", "ctx")
	ctx.fillStyle = "red"
	ctx.fillRect1(20, 20, 75, 50)

	'Turn transparency on
	ctx.globalAlpha = 0.2
	ctx.fillStyle = "blue"
	ctx.fillRect1(50, 50, 75, 50)
	ctx.fillStyle = "green"
	ctx.fillRect1(80, 80, 75, 50)
	'
	'r1c1
	Dim ctx1 As MashCanvas = canvdays.Skeleton(body, "globalCompositeOperation", "ctx1")
	ctx1.fillStyle = "red"
	ctx1.fillRect1(20, 20, 75, 50)
	ctx1.fillStyle = "blue"
	ctx1.globalCompositeOperation = "source-over"
	ctx1.fillRect1(50, 50, 75, 50)
	ctx1.fillStyle = "red"
	ctx1.fillRect1(150, 20, 75, 50)
	ctx1.fillStyle = "blue"
	ctx1.globalCompositeOperation = "destination-over"
	ctx1.fillRect1(180, 50, 75, 50)
End Sub