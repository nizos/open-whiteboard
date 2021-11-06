import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Open Whiteboard")

    Dialog {
        id: colorDialog
        modal: true
        title: "Color picker"
        Label {
            text: "Lorem ipsum..."
        }
        ColorPicker {
            id: colorPicker
            width: 640
            height: 400

            onColorChanged: {
                console.log("Color changed: ", changedColor)
                mouse.setColor(changedColor)
            }
        }

        width: colorPicker.width + 60
        height:  colorPicker.height + 80
        x: (parent.width - width) / 2
        y: (parent.height - height) / 2


        standardButtons: Dialog.Ok | Dialog.Cancel

        onAccepted: console.log("Ok clicked")
        onRejected: console.log("Cancel clicked")
    }

    Dialog {
        id: widthDialog
        modal: true
        title: "Pen width"
        Label {
            text: "Lorem ipsum..."
        }
        WidthPicker {
            id: widthPicker
            width: 400
            height: 200

            onWidthChanged: {
                console.log("Width changed: ", changedWidth)
                mouse.setWidth(changedWidth)
            }
        }

        width: colorPicker.width + 60
        height:  colorPicker.height + 80
        x: (parent.width - width) / 2
        y: (parent.height - height) / 2

        standardButtons: Dialog.Ok | Dialog.Cancel

        onAccepted: console.log("Ok clicked")
        onRejected: console.log("Cancel clicked")
    }

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

        Button {
            id: pen_color
            text: "Color"
            onClicked: {
                colorDialog.open()
            }
        }

        Button {
            id: pen_width
            text: "Width"
            onClicked: {
                widthDialog.open()
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
            ctx.lineWidth = mouse.getWidth()
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
