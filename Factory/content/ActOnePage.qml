import QtQuick 2.5
import QtQuick.Controls 1.0

Rectangle {
    //property alias mouseArea: mouseArea
    id: actOneRect
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
                    anchors.top: backtomainbutnText.bottom
                    anchors.fill: parent
                    anchors.left: backtomainbutnText.right
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
                    anchors.top: savedatabutnText.bottom
                    anchors.fill: parent
                    anchors.left: savedatabutnText.right
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
                    anchors.top: printdatabutnText.bottom
                    anchors.fill: parent
                    anchors.left: printdatabutnText.right
                }
            }
        }
    }

    Rectangle {
        id: pagetitleBar
        color: "#e6e6e6"
        anchors.bottomMargin: parent.height*0.9
        anchors.fill: parent

        Text {
            id: text1
            text: qsTr("    防护门密闭性检测")
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: 30
        }
    }





}
