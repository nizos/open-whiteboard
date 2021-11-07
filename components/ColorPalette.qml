import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    id: colorPalette
    property color colorValue: "transparent"
    signal activated(color colorValue)
    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    Layout.preferredHeight: 25
    Layout.preferredWidth: 25
    Layout.minimumHeight: 10
    Layout.minimumWidth: 10
    Layout.fillHeight: true
    Layout.fillWidth: true
    Rectangle {
        id: colorPaletteRect
        color: colorPalette.colorValue
        radius: 2
        border.color: "#333333"
        border.width: 1
        anchors.fill: colorPalette
        MouseArea {
            anchors.fill: colorPaletteRect
            onClicked: {
                activated(colorPalette.colorValue)
            }
        }
    }
}
