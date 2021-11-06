import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

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
