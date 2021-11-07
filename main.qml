import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Open Whiteboard")

    Toolbar {
        id: toolBar
        x: parent.x
        y: parent.y
        height: 80
        width: parent.width

        onColorChanged: function(newColor) {
            mouse.setColor(newColor)
        }
        onSizeChanged: function(newSize) {
            mouse.setSize(newSize)
        }

        onOpenFile: function() {
            // TODO
        }

        onSaveFile: function() {
            // TODO
        }

        onClearCanvas: function() {
            canvas.clear()
        }
    }

    Canvas {
        id: canvas
        anchors.top: toolBar.bottom
        width: root.width
        height: root.height - toolBar.height
        property int lastX: 0
        property int lastY: 0

        function clear() {
            var ctx = getContext("2d")
            ctx.reset()
            canvas.requestPaint()
            mouse.clear()
        }

        onPaint: function() {
            var ctx = getContext("2d")
            ctx.lineWidth = mouse.getSize()
            ctx.strokeStyle = mouse.getColor()
            ctx.beginPath()
            ctx.moveTo(lastX, lastY)
            lastX = area.mouseX
            lastY = area.mouseY
            ctx.lineTo(lastX, lastY)
            ctx.stroke()
            mouse.add(lastX, lastY)
            mouse.add(Qt.point(lastX,lastY))
        }


        MouseArea {
            id: area
            anchors.fill: canvas
            onPressed: function() {
              canvas.lastX = mouseX
              canvas.lastY = mouseY
            }

            onPositionChanged: function() {
                canvas.requestPaint()
            }
        }
    }
}
