import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Item {
    id: colorPickerDialog
    property color colorValue: "#4169e1"
    signal colorChanged(color changedColor)
    height: 400

    RowLayout {
        id: colorDialogRowLayout
        anchors.fill: parent

        Item {
            id: colorPalettes
            width: 200
            height: 200
            Layout.fillWidth: true
            Layout.fillHeight: true

            ColumnLayout {
                id: colorPaletteColumnLayout
                anchors.fill: parent

                Item {
                    id: basicColors
                    width: 200
                    height: 200
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    ColumnLayout {
                        id: basicColorsColumnLayout
                        anchors.fill: parent

                        Item {
                            id: basicColorsLabel
                            width: 200
                            height: 200
                            Layout.maximumHeight: 20
                            Layout.fillWidth: true
                            Layout.fillHeight: true

                            Label {
                                id: basicColorsLabelText
                                text: qsTr("Basic colors")
                                anchors.fill: parent
                                verticalAlignment: Text.AlignVCenter
                            }
                        }

                        Item {
                            id: basicColorsGrid
                            width: 200
                            height: 200
                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            GridLayout {
                                id: basicColorsGridLayout
                                anchors.fill: parent
                                Layout.fillHeight: true
                                Layout.fillWidth: true
                                rows: 3
                                columns: 9

                                Item {
                                    id: brightredBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: brightRedRectangle
                                        color: "#ef2929"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: brightOrangeBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: brightOrangeRectangle
                                        color: "#fcaf3e"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: brightYellowBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: brightYellowRectangle
                                        color: "#fce94f"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: brightGreenBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: brightGreenRectangle
                                        color: "#8ae234"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: brightBlueBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: brightBlueRectangle
                                        color: "#729fcf"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: brightPurpleBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: brightPurpleRectangle
                                        color: "#ad7fa8"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: brightBrownBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: brightBrownRectangle
                                        color: "#e9b96e"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: brightGreyBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: brightGreyRectangle
                                        color: "#888a85"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: brightWhiteBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: brightWhiteRectangle
                                        color: "#eeeeec"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: mediumRedBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: mediumRedRectangle
                                        color: "#cc0000"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: mediumOrangeBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: mediumOrangeRectangle
                                        color: "#f57900"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: mediumYellowBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: mediumYellowRectangle
                                        color: "#edd400"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: mediumGreenBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: mediumGreenRectangle
                                        color: "#73d216"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: mediumBlueBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: mediumBlueRectangle
                                        color: "#3465a4"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: mediumPurpleBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: mediumPurpleRectangle
                                        color: "#75507b"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: mediumBrownBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: mediumBrownRectangle
                                        color: "#c17d11"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: mediumGreyBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: mediumGreyRectangle
                                        color: "#555753"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: mediumdWhiteBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: mediumdWhiteRectangle
                                        color: "#d3d7cf"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: darkRedBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: darkRedRectangle
                                        color: "#a40000"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: darkOrangeBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: darkOrangeRectangle
                                        color: "#ce5c00"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: darkYellowBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: darkYellowRectangle
                                        color: "#c4a000"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: darkGreenBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: darkGreenRectangle
                                        color: "#4e9a06"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: darkBlueBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: darkBlueRectangle
                                        color: "#204a87"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: darkPurpleBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: darkPurpleRectangle
                                        color: "#5c3566"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: darkBrownBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: darkBrownRectangle
                                        color: "#8f5902"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: darkGreyBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: darkGreyRectangle
                                        color: "#2e3436"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                                Item {
                                    id: darkWhiteBasicColorItem
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: darkWhiteRectangle
                                        color: "#babdb6"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                            }
                        }

                        Item {
                            id: basicColorsButton
                            width: 200
                            height: 200
                            Layout.maximumHeight: 30
                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            Button {
                                id: screenPickerButton
                                text: qsTr("Pick Screen Color")
                                anchors.fill: parent
                            }
                        }
                    }
                }

                Item {
                    id: customColors
                    width: 200
                    height: 200
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    ColumnLayout {
                        id: customColorsColumnLayout
                        anchors.fill: parent

                        Item {
                            id: customColorsLabel
                            width: 200
                            height: 200
                            Layout.maximumHeight: 20
                            Layout.fillWidth: true
                            Layout.fillHeight: true

                            Label {
                                id: customColorsLabelText
                                text: qsTr("Custom colors")
                                anchors.fill: parent
                                verticalAlignment: Text.AlignVCenter
                            }
                        }

                        Item {
                            id: customColorsGrid
                            width: 200
                            height: 200
                            Layout.fillWidth: true
                            Layout.fillHeight: true

                            GridLayout {
                                id: customColorsGridLayout
                                anchors.fill: parent
                                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                Layout.fillHeight: true
                                Layout.fillWidth: true
                                columns: 9
                                rows: 3

                                Item {
                                    id: customColorsItem01
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect01
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem02
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect02
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem03
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect03
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem04
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect04
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem05
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect05
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem06
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect06
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem07
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect07
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem08
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect08
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem09
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect09
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem10
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect10
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem11
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect11
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem12
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect12
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem13
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect13
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem14
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect14
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem15
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect15
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem16
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect16
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem17
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect17
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem18
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect18
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem19
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect19
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem20
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect20
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem21
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect21
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem22
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect22
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem23
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect23
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem24
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect24
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem25
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect25
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem26
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect26
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }

                                Item {
                                    id: customColorsItem27
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                    Layout.preferredHeight: 25
                                    Layout.preferredWidth: 25
                                    Layout.minimumHeight: 10
                                    Layout.minimumWidth: 10
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Rectangle {
                                        id: customColorsRect27
                                        color: "#ffffff"
                                        radius: 2
                                        border.color: "#333333"
                                        border.width: 1
                                        anchors.fill: parent
                                    }
                                }
                            }
                        }

                        Item {
                            id: customColorsButton
                            width: 200
                            height: 200
                            Layout.maximumHeight: 30
                            Layout.fillWidth: true
                            Layout.fillHeight: true

                            Button {
                                id: addCustomColorButton
                                text: qsTr("Add Custom Colors")
                                anchors.fill: parent
                            }
                        }
                    }
                }
            }
        }

        Item {
            id: colorPicker
            width: 200
            height: 200
            Layout.fillWidth: true
            Layout.fillHeight: true

            ColumnLayout {
                id: colorModifierColumnLayout
                anchors.fill: parent

                Item {
                    id: colorSliders
                    width: 200
                    height: 200
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    RowLayout {
                        id: colorSlidersRowLayout
                        anchors.fill: parent

                        Item {
                            id: colorSlider
                            Layout.fillHeight: true
                            Layout.fillWidth: true
                            property color hueColor: "blue"
                            property real saturation: 0
                            property real brightness: 0

                            Rectangle {
                                y : colorSlider.height
                                rotation: -90
                                transformOrigin: Item.TopLeft
                                width: colorSlider.height
                                height: colorSlider.width
                                gradient: Gradient {
                                    GradientStop { position: 0.0; color: "#FFFFFF" }
                                    GradientStop { position: 1.0; color: colorSlider.hueColor }
                                }
                            }
                            Rectangle {
                                width: colorSlider.width
                                height: colorSlider.height
                                gradient: Gradient {
                                    GradientStop { position: 1.0; color: "#FF000000" }
                                    GradientStop { position: 0.0; color: "#00000000" }
                                }
                            }
                            MouseArea {
                                anchors.fill: colorSlider
                                function handleMouse(mouse) {
                                    if (mouse.buttons & Qt.LeftButton) {
                                        colorSlider.saturation = Math.max(0, Math.min(width,  mouse.x))/colorSlider.width;
                                        colorSlider.brightness = 1 - Math.max(0, Math.min(height,  mouse.y))/colorSlider.height;
                                    }
                                }
                                onPositionChanged: handleMouse(mouse)
                                onPressed: handleMouse(mouse)
                            }
                        }

                        Item {
                            id: hueSlider
                            width: 200
                            height: 200
                            Layout.maximumWidth: 40
                            Layout.fillHeight: true
                            Layout.fillWidth: true

                            Rectangle {
                                id: rectangle9
                                x: 0
                                y: 0
                                color: "#4506a3"
                                anchors.fill: parent
                            }
                        }

                        Item {
                            id: alphaSlider
                            width: 200
                            height: 200
                            Layout.maximumWidth: 40
                            Rectangle {
                                id: rectangle11
                                x: 0
                                y: 0
                                color: "#731ff2"
                                anchors.fill: parent
                            }
                            Layout.fillHeight: true
                            Layout.fillWidth: true
                        }
                    }
                }

                Item {
                    id: colorData
                    width: 200
                    height: 200
                    Layout.maximumHeight: 150
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    RowLayout {
                        id: colorDataRowLayout
                        anchors.fill: parent

                        Item {
                            id: colorPreview
                            width: 200
                            height: 200
                            Layout.maximumWidth: 100
                            Layout.fillWidth: true
                            Layout.fillHeight: true

                            Rectangle {
                                id: rectangle4
                                x: 0
                                y: 0
                                color: "#c71ff2"
                                anchors.fill: parent
                            }
                        }

                        Item {
                            id: colorValues
                            width: 200
                            height: 200
                            Layout.fillWidth: true
                            Layout.fillHeight: true

                            ColumnLayout {
                                id: colorValuesColumnLayout
                                anchors.fill: parent

                                Item {
                                    id: colorValuesRow01
                                    width: 200
                                    height: 200
                                    Layout.fillWidth: true
                                    Layout.fillHeight: true

                                    RowLayout {
                                        id: rowLayout3
                                        anchors.fill: parent

                                        Item {
                                            id: item21
                                            width: 200
                                            height: 200
                                            Layout.fillWidth: true
                                            Layout.fillHeight: true

                                            Rectangle {
                                                id: rectangle10
                                                x: 0
                                                y: 0
                                                color: "#c71ff2"
                                                anchors.fill: parent
                                            }
                                        }

                                        Item {
                                            id: item22
                                            width: 200
                                            height: 200
                                            Layout.fillWidth: true
                                            Layout.fillHeight: true

                                            Rectangle {
                                                id: rectangle14
                                                x: 0
                                                y: 0
                                                color: "#c71ff2"
                                                anchors.fill: parent
                                            }
                                        }

                                        Item {
                                            id: item23
                                            width: 200
                                            height: 200
                                            Layout.fillWidth: true
                                            Layout.fillHeight: true

                                            Rectangle {
                                                id: rectangle15
                                                x: 0
                                                y: 0
                                                color: "#c71ff2"
                                                anchors.fill: parent
                                            }
                                        }

                                        Item {
                                            id: item24
                                            width: 200
                                            height: 200
                                            Layout.fillHeight: true
                                            Layout.fillWidth: true

                                            Rectangle {
                                                id: rectangle16
                                                x: 0
                                                y: 0
                                                color: "#c71ff2"
                                                anchors.fill: parent
                                            }
                                        }
                                    }
                                }

                                Item {
                                    id: colorValuesRow02
                                    width: 200
                                    height: 200
                                    Layout.fillWidth: true
                                    Layout.fillHeight: true

                                    RowLayout {
                                        id: rowLayout4
                                        anchors.fill: parent

                                        Item {
                                            id: item25
                                            width: 200
                                            height: 200
                                            Rectangle {
                                                id: rectangle17
                                                x: 0
                                                y: 0
                                                color: "#c71ff2"
                                                anchors.fill: parent
                                            }
                                            Layout.fillHeight: true
                                            Layout.fillWidth: true
                                        }

                                        Item {
                                            id: item26
                                            width: 200
                                            height: 200
                                            Rectangle {
                                                id: rectangle18
                                                x: 0
                                                y: 0
                                                color: "#c71ff2"
                                                anchors.fill: parent
                                            }
                                            Layout.fillHeight: true
                                            Layout.fillWidth: true
                                        }

                                        Item {
                                            id: item27
                                            width: 200
                                            height: 200
                                            Rectangle {
                                                id: rectangle19
                                                x: 0
                                                y: 0
                                                color: "#c71ff2"
                                                anchors.fill: parent
                                            }
                                            Layout.fillHeight: true
                                            Layout.fillWidth: true
                                        }

                                        Item {
                                            id: item28
                                            width: 200
                                            height: 200
                                            Rectangle {
                                                id: rectangle20
                                                x: 0
                                                y: 0
                                                color: "#c71ff2"
                                                anchors.fill: parent
                                            }
                                            Layout.fillHeight: true
                                            Layout.fillWidth: true
                                        }
                                    }
                                }

                                Item {
                                    id: colorValuesRow03
                                    width: 200
                                    height: 200
                                    Layout.fillWidth: true
                                    Layout.fillHeight: true

                                    RowLayout {
                                        id: rowLayout5
                                        anchors.fill: parent

                                        Item {
                                            id: item29
                                            width: 200
                                            height: 200
                                            Rectangle {
                                                id: rectangle21
                                                x: 0
                                                y: 0
                                                color: "#c71ff2"
                                                anchors.fill: parent
                                            }
                                            Layout.fillHeight: true
                                            Layout.fillWidth: true
                                        }

                                        Item {
                                            id: item30
                                            width: 200
                                            height: 200
                                            Rectangle {
                                                id: rectangle22
                                                x: 0
                                                y: 0
                                                color: "#c71ff2"
                                                anchors.fill: parent
                                            }
                                            Layout.fillHeight: true
                                            Layout.fillWidth: true
                                        }

                                        Item {
                                            id: item31
                                            width: 200
                                            height: 200
                                            Rectangle {
                                                id: rectangle23
                                                x: 0
                                                y: 0
                                                color: "#c71ff2"
                                                anchors.fill: parent
                                            }
                                            Layout.fillHeight: true
                                            Layout.fillWidth: true
                                        }

                                        Item {
                                            id: item32
                                            width: 200
                                            height: 200
                                            Rectangle {
                                                id: rectangle24
                                                x: 0
                                                y: 0
                                                color: "#c71ff2"
                                                anchors.fill: parent
                                            }
                                            Layout.fillHeight: true
                                            Layout.fillWidth: true
                                        }
                                    }
                                }

                                Item {
                                    id: colorValuesRow04
                                    width: 200
                                    height: 200
                                    Layout.fillWidth: true
                                    Layout.fillHeight: true

                                    RowLayout {
                                        id: rowLayout6
                                        anchors.fill: parent

                                        Item {
                                            id: item33
                                            width: 200
                                            height: 200
                                            Rectangle {
                                                id: rectangle25
                                                x: 0
                                                y: 0
                                                color: "#c71ff2"
                                                anchors.fill: parent
                                            }
                                            Layout.fillHeight: true
                                            Layout.fillWidth: true
                                        }

                                        Item {
                                            id: item34
                                            width: 200
                                            height: 200
                                            Rectangle {
                                                id: rectangle26
                                                x: 0
                                                y: 0
                                                color: "#c71ff2"
                                                anchors.fill: parent
                                            }
                                            Layout.fillHeight: true
                                            Layout.fillWidth: true
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

}


