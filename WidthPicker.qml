import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: widthPicker
    property int widthValue: 2
    signal widthChanged(int changedWidth)
    RowLayout {
        id: rowLayout

        Rectangle {
            id: rectangle
            color: "#ffffff"

            SpinBox {
                id: spinBox
                x: (widthPicker.width - width) / 2
                y: (widthPicker.height - height) / 2
                width: 200
                height: 60
                to: 100
                from: 1
                wheelEnabled: true
                onValueChanged: {
                    console.log("Spinbox value changed ", spinBox.value)
                    widthPicker.widthValue = spinBox.value
                    widthPicker.widthChanged(widthPicker.widthValue)
                }

            }
        }
    }
}
