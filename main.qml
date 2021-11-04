import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Open Whiteboard")

    Row {
        id: tools

        Button {
            id: clear
            text: "Clear"
            onClicked: {
                canvas.clear()
            }
        }

        Button {
            id: save
            text: "Save"
            onClicked: {
                mouse.save()
            }
        }
    }

    Canvas {
        id: canvas
        anchors.top: tools.bottom
        width: root.width
        height: root.height
        property int lastX: 0
        property int lastY: 0

        function clear() {
            var ctx = getContext("2d")
            ctx.reset()
            canvas.requestPaint()
            mouse.clear()
        }

        onPaint: {
            var ctx = getContext("2d")
            ctx.lineWidth = 2
            ctx.strokeStyle = color.red
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
            anchors.fill: parent
            onPressed: {
              canvas.lastX = mouseX
              canvas.lastY = mouseY
            }

            onPositionChanged: {
                canvas.requestPaint()
            }
        }
    }
}
