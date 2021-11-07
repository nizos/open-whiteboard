import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "components"

Item {
    id: toolBar
    width: 1920
    height: 80
    property int currentSize: 2
    property color currentColor: "#1d4ed8"
    signal sizeChanged(int newSize)
    signal colorChanged(color newColor)
    signal openFile()
    signal saveFile()
    signal clearCanvas()

    onCurrentColorChanged: function() {
        var newColor = Qt.rgba(currentColor.r, currentColor.g, currentColor.b, currentColor.a)
        colorChanged(newColor)
    }
    onCurrentSizeChanged: function() {
        sizeChanged(currentSize)
    }

    Rectangle {
        id: rectangle2
        color: "#e0e0e0"
        anchors.fill: parent
    }

    RowLayout {
        id: toolbarRowLayout
        anchors.fill: parent
        anchors.rightMargin: 5
        anchors.leftMargin: 5
        anchors.bottomMargin: 5
        anchors.topMargin: 5
        layoutDirection: Qt.LeftToRight
        spacing: 5


        Item {
            id: canvasToolItem
            width: 200
            height: 200
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.maximumWidth: 200

            ColumnLayout {
                id: canvasTollsColumnLayout
                anchors.fill: parent

                Item {
                    id: canvasToolsBarItem
                    width: 200
                    height: 200
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    RowLayout {
                        id: canvasToolsRowLayout
                        anchors.fill: parent

                        Item {
                            id: openButtonItem
                            width: 200
                            height: 200
                            Layout.fillWidth: true
                            Layout.fillHeight: true

                            ToolButton {
                                id: openButton
                                text: qsTr("Open")
                                anchors.fill: parent
                                onClicked: function() {
                                    toolBar.openFile()
                                }
                            }
                        }

                        Item {
                            id: saveButtonItem
                            width: 200
                            height: 200
                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            ToolButton {
                                id: saveButton
                                text: qsTr("Save")
                                anchors.fill: parent
                                onClicked: function() {
                                    toolBar.saveFile()
                                }
                            }
                        }

                        Item {
                            id: clearButtonItem
                            width: 200
                            height: 200
                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            ToolButton {
                                id: clearButton
                                text: qsTr("Clear")
                                anchors.fill: parent
                                onClicked: function() {
                                    toolBar.clearCanvas()
                                }
                            }
                        }
                    }
                }

                Item {
                    id: cavasToolsLabelItem
                    width: 200
                    height: 200
                    Layout.maximumHeight: 30
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    Label {
                        id: canvasToolsLabel
                        text: qsTr("Canvas")
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }
        }
        Item {
            id: toolSeperatorItem1
            width: 200
            height: 200
            Layout.fillHeight: true
            ToolSeparator {
                id: toolSeparator1
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 0
                anchors.bottomMargin: 0
            }
            Layout.fillWidth: true
            Layout.maximumWidth: 15
        }

        Item {
            id: sizeToolItem
            width: 200
            height: 200
            Layout.maximumWidth: 80
            Layout.fillWidth: true
            Layout.fillHeight: true

            ColumnLayout {
                id: sizeToolColumnLayout
                anchors.fill: parent
                spacing: 0

                Item {
                    id: sizeSpinBoxItem
                    width: 200
                    height: 200
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    SpinBox {
                        id: sizeSpinBox
                        anchors.fill: parent
                        wheelEnabled: true
                        value: toolBar.currentSize
                        onValueChanged: function() {
                            toolBar.currentSize = value
                        }
                    }
                }

                Item {
                    id: sizeLabelItem
                    width: 200
                    height: 200
                    Layout.maximumHeight: 30
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    Label {
                        id: sizeLabel
                        text: qsTr("Size")
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignBottom
                    }
                }
            }
        }
        Item {
            id: toolSeperatorItem01
            width: 200
            height: 200
            Layout.maximumWidth: 15
            Layout.fillWidth: true
            Layout.fillHeight: true

            ToolSeparator {
                id: toolSeparator01
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 0
                anchors.bottomMargin: 0
            }
        }
        Item {
            id: colorsToolItem
            width: 200
            height: 200
            Layout.maximumWidth: 500
            Layout.fillWidth: true
            Layout.fillHeight: true

            ColumnLayout {
                id: colorsToolColumnLayout
                anchors.fill: parent
                spacing: 0

                Item {
                    id: colorsToolbarItem
                    width: 200
                    height: 200
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    RowLayout {
                        id: colorsToolbarRowLayout
                        anchors.fill: parent
                        spacing: 10

                        Item {
                            id: currentColorItem
                            width: 200
                            height: 200
                            Layout.maximumWidth: 60
                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            Rectangle {
                                id: currentColorRect
                                color: toolBar.currentColor
                                radius: 4
                                border.color: "#333333"
                                anchors.fill: parent
                            }
                        }

                        Item {
                            id: colorPaletteGridItem
                            width: 200
                            height: 200
                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            GridLayout {
                                id: colorPaletteGridLayout
                                anchors.fill: parent
                                Layout.fillHeight: true
                                Layout.fillWidth: true
                                rows: 2
                                columns: 10

                                Repeater {
                                    model: ["#000000", "#424242", "#b91c1c", "#ea580c", "#facc15", "#15803d", "#0e7490", "#1d4ed8", "#6d28d9", "#a21caf",
                                        "#ffffff", "#bdbdbd", "#ef4444", "#fb923c", "#fde047", "#22c55e", "#06b6d4", "#3b82f6", "#8b5cf6", "#d946ef"]

                                    delegate: ColorPalette {
                                        colorValue: modelData
                                        onActivated: {
                                            toolBar.currentColor = modelData
                                        }
                                    }
                                }
                            }
                        }

                        Item {
                            id: colorPickerItem
                            width: 200
                            height: 200
                            Layout.maximumWidth: 60
                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            Rectangle {
                                id: colorPickerItemColorRect
                                y : colorPickerItem.height
                                rotation: -90
                                radius: 4
                                border.color: "#333333"
                                transformOrigin: Item.TopLeft
                                width: colorPickerItem.height
                                height: colorPickerItem.width
                                gradient: Gradient {
                                    GradientStop { position: 0.0; color: "#FFFFFF" }
                                    GradientStop { position: 1.0; color: "blue" }
                                }
                            }
                            Rectangle {
                                id: colorPickerItemBrightnessRect
                                radius: 4
                                border.color: "#333333"
                                border.width: 0
                                anchors.fill: parent
                                width: colorPickerItem.width
                                height: colorPickerItem.height
                                gradient: Gradient {
                                    GradientStop { position: 1.0; color: "#FF000000" }
                                    GradientStop { position: 0.0; color: "#00000000" }
                                }
                            }
                        }
                    }
                }

                Item {
                    id: colorsLabelItem
                    width: 200
                    height: 200
                    Layout.maximumHeight: 30
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    Label {
                        id: label
                        text: qsTr("Colors")
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignBottom
                    }
                }
            }
        }
        Item {
            id: item4
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }

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

            onColorChanged: function() {
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
}
