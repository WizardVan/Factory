import QtQuick 2.5
import QtQuick.Controls 1.0

Rectangle {
    //property alias mouseArea: mouseArea
    id: actThreeRect
    width: 1000
    height: 574
    color: "#00000000"
    radius: 0
    border.width: 0
    border.color: "#00000000"

    Rectangle {
        id: activityBkg
        color: "#ffffff"
        anchors.fill: parent

        Item {
            id: backtomainButton
            x: 50
            y: 488
            anchors.rightMargin: parent.width*0.8
            anchors.leftMargin: parent.width *0.05
            anchors.bottomMargin: parent.height*0.05
            anchors.topMargin: parent.height*0.85
            anchors.fill: parent
            Rectangle {
                id: backtomainbutnBkg
                radius: 3
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#ffffff"
                    }

                    GradientStop {
                        position: 1
                        color: "#66000000"
                    }
                }
                anchors.fill: parent
                border.width: 0
                border.color: "#00000000"
                Text {
                    id: backtomainbutnText
                    color: "#000000"
                    text: qsTr("返回主界面")
                    font.bold: false
                    verticalAlignment: Text.AlignVCenter
                    textFormat: Text.AutoText
                    anchors.fill: parent
                    font.pixelSize: 20
                    styleColor: "#00000000"
                    style: Text.Sunken
                    horizontalAlignment: Text.AlignHCenter
                }

                MouseArea {
                    id: backtomainArea
                    anchors.fill: parent
                    onClicked: {
                        contentList.currentIndex=1
                    }
                }
            }
        }

        Item {
            id: savedataButton
            x: 600
            y: 488
            anchors.topMargin: parent.height*0.85
            anchors.leftMargin: parent.width*0.6
            anchors.fill: parent
            anchors.rightMargin: parent.width * 0.25
            anchors.bottomMargin: parent.height*0.05
            Rectangle {
                id: savedatabutnBkg
                radius: 3
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#ffffff"
                    }

                    GradientStop {
                        position: 1
                        color: "#66000000"
                    }
                }
                anchors.fill: parent
                border.width: 0
                border.color: "#00000000"
                Text {
                    id: savedatabutnText
                    color: "#000000"
                    text: qsTr("保存数据")
                    verticalAlignment: Text.AlignVCenter
                    textFormat: Text.AutoText
                    font.bold: false
                    anchors.fill: parent
                    font.pixelSize: 20
                    style: Text.Sunken
                    styleColor: "#00000000"
                    horizontalAlignment: Text.AlignHCenter
                }

                MouseArea {
                    id: savedataArea
                    anchors.fill: parent
                }
            }
        }

        Item {
            id: printdataButton
            x: 800
            y: 488
            anchors.topMargin: parent.height*0.85
            anchors.leftMargin: parent.width *0.8
            anchors.fill: parent
            anchors.rightMargin: parent.width*0.05
            anchors.bottomMargin: parent.height*0.05
            Rectangle {
                id: printdatabutnBkg
                radius: 3
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#ffffff"
                    }

                    GradientStop {
                        position: 1
                        color: "#66000000"
                    }
                }
                anchors.fill: parent
                border.width: 0
                border.color: "#00000000"
                Text {
                    id: printdatabutnText
                    color: "#000000"
                    text: qsTr("打印数据")
                    verticalAlignment: Text.AlignVCenter
                    font.bold: false
                    textFormat: Text.AutoText
                    anchors.fill: parent
                    font.pixelSize: 20
                    styleColor: "#00000000"
                    style: Text.Sunken
                    horizontalAlignment: Text.AlignHCenter
                }

                MouseArea {
                    id: printdataArea
                    anchors.fill: parent
                }
            }
        }

        Item {
            id: startTestButton
            x: 800
            y: 488
            anchors.topMargin: parent.height*0.15
            anchors.leftMargin: parent.width *0.55
            anchors.fill: parent
            anchors.rightMargin: parent.width*0.3
            anchors.bottomMargin: parent.height*0.75
            Rectangle {
                id: startTestbutnBkg
                radius: 3
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#ffffff"
                    }

                    GradientStop {
                        position: 1
                        color: "#66000000"
                    }
                }
                anchors.fill: parent
                border.width: 0
                border.color: "#00000000"
                Text {
                    id: startTestbutnText
                    color: "#000000"
                    text: qsTr("开始测试")
                    verticalAlignment: Text.AlignVCenter
                    font.bold: false
                    textFormat: Text.AutoText
                    anchors.fill: parent
                    font.pixelSize: 20
                    styleColor: "#00000000"
                    style: Text.Sunken
                    horizontalAlignment: Text.AlignHCenter
                }

                MouseArea {
                    id: startTestArea
                    anchors.fill: parent
                }
            }
        }

        Item {
            id: stopTestButton
            x: 800
            y: 488
            anchors.topMargin: parent.height*0.3
            anchors.leftMargin: parent.width *0.55
            anchors.fill: parent
            anchors.rightMargin: parent.width*0.3
            anchors.bottomMargin: parent.height*0.6
            Rectangle {
                id: stopTestbutnBkg
                radius: 3
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#ffffff"
                    }

                    GradientStop {
                        position: 1
                        color: "#66000000"
                    }
                }
                anchors.fill: parent
                border.width: 0
                border.color: "#00000000"
                Text {
                    id: stopTestbutnText
                    color: "#000000"
                    text: qsTr("停止测试")
                    verticalAlignment: Text.AlignVCenter
                    font.bold: false
                    textFormat: Text.AutoText
                    anchors.fill: parent
                    font.pixelSize: 20
                    styleColor: "#00000000"
                    style: Text.Sunken
                    horizontalAlignment: Text.AlignHCenter
                }

                MouseArea {
                    id: stopTestArea
                    anchors.fill: parent
                }
            }
        }

        Item {
            id: typeChooser
            anchors.rightMargin: parent.width*0.7
            anchors.bottomMargin: parent.height*0.85
            anchors.topMargin: parent.height*0.12
            anchors.leftMargin: parent.width *0.05
            anchors.fill: parent

            Text {
                id: typeChooserText
                text: qsTr("产品类型：")
                styleColor: "#00000000"
                style: Text.Sunken
                anchors.rightMargin: parent.width*0.7
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                anchors.fill: parent
                wrapMode: Text.WrapAnywhere
                font.pixelSize: 12
            }

            ComboBox {
                id: typeChooserCB
                anchors.leftMargin: parent.width*0.3
                anchors.fill: parent
            }
        }

        Rectangle {
            id: pagetitleBar
            color: "#e6e6e6"
            border.width: 0
            border.color: "#00000000"
            anchors.bottomMargin: parent.height*0.9
            anchors.fill: parent

            Text {
                id: titleText
                text: qsTr("    密闭阀门&超压排气活门密闭性能检测")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: 30
            }
        }

        Item {
            id: typeNumRec
            anchors.fill: parent
            anchors.rightMargin: parent.width*0.7
            anchors.topMargin: parent.height*0.17
            anchors.leftMargin: parent.width *0.05
            anchors.bottomMargin: parent.height*0.8
            Text {
                id: typeNumRecText
                text: qsTr("产品型号：")
                styleColor: "#00000000"
                style: Text.Sunken
                anchors.fill: parent
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 12
                wrapMode: Text.WrapAnywhere
                anchors.rightMargin: parent.width*0.7
            }

            Text {
                id: typeNumRecSubText
                text: qsTr("")
                anchors.leftMargin: parent.width*0.8
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 15
            }

            TextField {
                id: typeNumRecTF
                anchors.rightMargin: parent.width*0.2
                anchors.leftMargin: parent.width*0.3
                anchors.fill: parent
            }
        }

        Item {
            id: pLengthRec
            anchors.fill: parent
            anchors.rightMargin: parent.width*0.7
            anchors.topMargin: parent.height*0.22
            anchors.leftMargin: parent.width *0.05
            anchors.bottomMargin: parent.height*0.75
            Text {
                id: pLengthRecText
                text: qsTr("超压空间长：")
                styleColor: "#00000000"
                style: Text.Sunken
                anchors.fill: parent
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.WrapAnywhere
                font.pixelSize: 12
                anchors.rightMargin: parent.width*0.7
            }

            Text {
                id: pLengthRecSubText
                text: qsTr("mm")
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 15
                anchors.leftMargin: parent.width*0.8
            }

            TextField {
                id: pLengthRecTF
                anchors.fill: parent
                anchors.rightMargin: parent.width*0.2
                anchors.leftMargin: parent.width*0.3
            }

        }
        Item {
            id: pWidthRec
            anchors.fill: parent
            anchors.rightMargin: parent.width*0.7
            anchors.topMargin: parent.height*0.27
            anchors.leftMargin: parent.width *0.05
            anchors.bottomMargin: parent.height*0.7
            Text {
                id: pWidthRecText
                text: qsTr("超压空间宽：")
                styleColor: "#00000000"
                style: Text.Sunken
                anchors.fill: parent
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.WrapAnywhere
                font.pixelSize: 12
                anchors.rightMargin: parent.width*0.7
            }

            Text {
                id: pWidthRecSubText
                text: qsTr("mm")
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 15
                anchors.leftMargin: parent.width*0.8
            }

            TextField {
                id: pWidthRecTF
                anchors.fill: parent
                anchors.rightMargin: parent.width*0.2
                anchors.leftMargin: parent.width*0.3
            }

        }

        Item {
            id: pHeightRec
            anchors.fill: parent
            anchors.rightMargin: parent.width*0.7
            anchors.topMargin: parent.height*0.32
            anchors.leftMargin: parent.width *0.05
            anchors.bottomMargin: parent.height*0.65
            Text {
                id: pHeightRecText
                text: qsTr("超压空间高：")
                styleColor: "#00000000"
                style: Text.Sunken
                anchors.fill: parent
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.WrapAnywhere
                font.pixelSize: 12
                anchors.rightMargin: parent.width*0.7
            }

            Text {
                id: pHeightRecSubText
                text: qsTr("mm")
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 15
                anchors.leftMargin: parent.width*0.8
            }

            TextField {
                id: pHeightRecTF
                anchors.fill: parent
                anchors.rightMargin: parent.width*0.2
                anchors.leftMargin: parent.width*0.3
            }

        }

        Item {
            id: testMethod
            anchors.rightMargin: parent.width*0.75
            anchors.bottomMargin: parent.height*0.6
            anchors.topMargin: parent.height*0.37
            anchors.leftMargin: parent.width *0.05
            anchors.fill: parent

            Text {
                id: testMethodText
                text: qsTr("检测方法：")
                styleColor: "#00000000"
                style: Text.Sunken
                anchors.rightMargin: parent.width*0.7
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                anchors.fill: parent
                wrapMode: Text.WrapAnywhere
                font.pixelSize: 12
            }

            ComboBox {
                id: testMethodCB
                anchors.leftMargin: parent.width*0.3
                anchors.fill: parent
            }
        }

        Item {
            id: pressureRec
            anchors.rightMargin: parent.width*0.5
            anchors.bottomMargin: parent.height*0.6
            anchors.topMargin: parent.height*0.37
            anchors.leftMargin: parent.width *0.3
            anchors.fill: parent
            Text {
                id: pressureRecText
                text: qsTr("超压值：")
                horizontalAlignment: Text.AlignLeft
                wrapMode: Text.WrapAnywhere
                styleColor: "#00000000"
                anchors.rightMargin: parent.width*0.7
                verticalAlignment: Text.AlignVCenter
                style: Text.Sunken
                anchors.fill: parent
                font.pixelSize: 12
            }

            Text {
                id: pressureRecSubText
                text: qsTr("Pa")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: parent.width*0.8
                anchors.fill: parent
                font.pixelSize: 15
            }

            TextField {
                id: pressureRecTF
                anchors.rightMargin: parent.width*0.2
                anchors.leftMargin: parent.width*0.3
                anchors.fill: parent
            }
        }
    }


        Item {
            id: frequencyShower
            anchors.fill: parent
            anchors.rightMargin: parent.width*0.05
            anchors.topMargin: parent.height*0.43
            anchors.leftMargin: parent.width *0.05
            anchors.bottomMargin: parent.height*0.5

            Text {
                id: frequencyShowerText
                text: qsTr("变频器频率指示条")
                styleColor: "#00000000"
                style: Text.Sunken
                anchors.bottomMargin: parent.height*0.5
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                anchors.fill: parent
                font.pixelSize: 12
            }

            ProgressBar {
                id: frequencyShowerPb
                anchors.topMargin: parent.height*0.5
                anchors.fill: parent
            }
        }

        Item {
            id: frequencyBox
            anchors.rightMargin: parent.width*0.66
            anchors.leftMargin: parent.width*0.05
            anchors.bottomMargin: parent.height*0.2
            anchors.topMargin: parent.height*0.55
            anchors.fill: parent

            Rectangle {
                id: frequencyBoxRect
                color: "#2f91ff"
                border.color: "#00000000"
                border.width: 0
                anchors.fill: parent
            }

            Rectangle {
                id: frequencyBoxTopRect
                color: "#ffffff"
                anchors.rightMargin: parent.width*0.3
                anchors.bottomMargin: parent.height*0.7
                border.color: "#2f91ff"
                anchors.fill: parent

                Text {
                    id: frequencyBoxText
                    color: "#2f91ff"
                    text: qsTr("变频器频率（Hz）")
                    style: Text.Sunken
                    styleColor: "#00000000"
                    verticalAlignment: Text.AlignVCenter
                    anchors.fill: parent
                    font.pixelSize: 25
                }
            }

            Text {
                id: frequencyBoxNumText
                x: 0
                y: 0
                color: "#ffffff"
                text: qsTr("21.5")
                anchors.top: frequencyBoxTopRect.bottom
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                styleColor: "#00000000"
                style: Text.Sunken
                font.bold: true
                verticalAlignment: Text.AlignBottom
                horizontalAlignment: Text.AlignRight
                textFormat: Text.RichText
                font.pixelSize: 80
            }

        }
        Item {
            id: pressureBox
            anchors.rightMargin: parent.width*0.35
            anchors.leftMargin: parent.width*0.35
            anchors.bottomMargin: parent.height*0.2
            anchors.topMargin: parent.height*0.55
            anchors.fill: parent

            Rectangle {
                id: pressureBoxRect
                color: "#2f91ff"
                border.color: "#00000000"
                border.width: 0
                anchors.fill: parent
            }

            Rectangle {
                id: pressureBoxTopRect
                color: "#ffffff"
                anchors.rightMargin: parent.width*0.2
                anchors.bottomMargin: parent.height*0.7
                border.color: "#2f91ff"
                anchors.fill: parent

                Text {
                    id: pressureBoxText
                    color: "#2f91ff"
                    text: qsTr("超压室当前压力（Pa）")
                    style: Text.Sunken
                    styleColor: "#00000000"
                    verticalAlignment: Text.AlignVCenter
                    anchors.fill: parent
                    font.pixelSize: 24
                }
            }

            Text {
                id: pressureBoxNumText
                x: 0
                color: "#ffffff"
                text: qsTr("38")
                anchors.top: pressureBoxTopRect.bottom
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                styleColor: "#00000000"
                style: Text.Sunken
                font.bold: true
                verticalAlignment: Text.AlignBottom
                horizontalAlignment: Text.AlignRight
                textFormat: Text.RichText
                font.pixelSize: 80
            }

        }

        Item {
            id: leakBox
            anchors.rightMargin: parent.width*0.05
            anchors.leftMargin: parent.width*0.66
            anchors.bottomMargin: parent.height*0.2
            anchors.topMargin: parent.height*0.55
            anchors.fill: parent

            Rectangle {
                id: leakBoxRect
                color: "#2f91ff"
                border.color: "#00000000"
                border.width: 0
                anchors.fill: parent
            }

            Rectangle {
                id: leakBoxTopRect
                color: "#ffffff"
                anchors.rightMargin: parent.width*0.4
                anchors.bottomMargin: parent.height*0.7
                border.color: "#2f91ff"
                anchors.fill: parent

                Text {
                    id: leakBoxText
                    color: "#2f91ff"
                    text: qsTr("漏气量（m3/h）")
                    style: Text.Sunken
                    styleColor: "#00000000"
                    verticalAlignment: Text.AlignVCenter
                    anchors.fill: parent
                    font.pixelSize: 24
                }
            }

            Text {
                id: leakBoxNumText
                x: 0
                color: "#ffffff"
                text: qsTr("0.174")
                anchors.top: leakBoxTopRect.bottom
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                styleColor: "#00000000"
                style: Text.Sunken
                font.bold: true
                verticalAlignment: Text.AlignBottom
                horizontalAlignment: Text.AlignRight
                textFormat: Text.RichText
                font.pixelSize: 80
            }

        }







}
