import QtQuick 2.5
import QtQuick.Controls 1.0

Rectangle {
    //property alias mouseArea: mouseArea
    id: activityRect
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
    }

    Item {
        id: exitloginButton
        anchors.rightMargin: parent.width*0.8
        anchors.leftMargin: parent.width *0.05
        anchors.bottomMargin: parent.height*0.05
        anchors.topMargin: parent.height*0.85
        anchors.fill: parent
        Rectangle {
            id: exitloginbutnBkg
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
                id: exitloginbutnText
                color: "#000000"
                text: qsTr("退出登录")
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
                id: exitloginArea
                anchors.top: exitloginbutnText.bottom
                anchors.fill: parent
                anchors.left: exitloginbutnText.right
                onClicked: {
                    contentList.currentIndex=0
                }
            }
        }
    }

    Item {
        id: modifyPwdButton
        anchors.topMargin: parent.height*0.85
        anchors.leftMargin: parent.width*0.25
        anchors.fill: parent
        anchors.rightMargin: parent.width * 0.6
        anchors.bottomMargin: parent.height*0.05
        Rectangle {
            id: modifyPwdbutnBkg
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
                id: modifyPwdbutnText
                color: "#000000"
                text: qsTr("修改密码")
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
                id: modifyPwdArea
                anchors.top: modifyPwdbutnText.bottom
                anchors.fill: parent
                anchors.left: modifyPwdbutnText.right
            }
        }
    }

    Item {
        id: actOneButton
        anchors.rightMargin: parent.width*0.7
        anchors.leftMargin: parent.width*0.1
        anchors.bottomMargin: parent.height*0.3
        anchors.topMargin: parent.height*0.1
        anchors.fill: parent

        Image {
            id: actOneBkg
            fillMode: Image.PreserveAspectCrop
            anchors.fill: parent
            source: "../images/ActBtunBkg1.jpg"


            Text {
                id: actOnebutnText
                color: "#ffffff"
                text: qsTr("防护门密闭性检测")
                anchors.bottomMargin: parent.height*0.1
                anchors.fill: parent
                verticalAlignment: Text.AlignBottom
                textFormat: Text.AutoText
                font.bold: false
                font.pixelSize: 20
                style: Text.Sunken
                styleColor: "#00000000"
                horizontalAlignment: Text.AlignHCenter
            }
            MouseArea {
                id: actOneArea
                anchors.top: actOnebutnText.bottom
                anchors.fill: parent
                anchors.left: actOnebutnText.right
                onClicked: {
                    contentList.currentIndex=2
                }
            }
        }


    }

    Item {
        id: actTwoButton
        anchors.topMargin: parent.height*0.1
        anchors.leftMargin: parent.width*0.4
        anchors.fill: parent
        anchors.rightMargin: parent.width*0.4
        anchors.bottomMargin: parent.height*0.3
        Image {
            id: actTwoBkg
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
            source: "../images/ActBtunBkg2.jpg"
            Text {
                id: actTwobutnText
                color: "#ffffff"
                text: qsTr("超压排气活门性能检测")
                verticalAlignment: Text.AlignBottom
                textFormat: Text.AutoText
                font.bold: false
                anchors.fill: parent
                anchors.bottomMargin: parent.height*0.1
                font.pixelSize: 20
                style: Text.Sunken
                styleColor: "#00000000"
                horizontalAlignment: Text.AlignHCenter
            }

            MouseArea {
                id: actTwoArea
                anchors.top: actTwobutnText.bottom
                anchors.fill: parent
                anchors.left: actTwobutnText.right
                onClicked: {
                    contentList.currentIndex=3
                }
            }
        }
    }

    Item {
        id: actThreeButton
        anchors.topMargin: parent.height*0.1
        anchors.leftMargin: parent.width*0.7
        anchors.fill: parent
        anchors.rightMargin: parent.width*0.1
        anchors.bottomMargin: parent.height*0.3
        Image {
            id: actThreeBkg
            fillMode: Image.PreserveAspectCrop
            anchors.fill: parent
            source: "../images/ActBtunBkg3.jpg"
            Text {
                id: actThreebutnText
                color: "#ffffff"
                text: qsTr("密闭阀门密闭性检测")
                verticalAlignment: Text.AlignBottom
                font.bold: false
                textFormat: Text.AutoText
                anchors.fill: parent
                anchors.bottomMargin: parent.height*0.1
                font.pixelSize: 20
                styleColor: "#00000000"
                style: Text.Sunken
                horizontalAlignment: Text.AlignHCenter
            }

            MouseArea {
                id: actThreeArea
                anchors.top: actThreebutnText.bottom
                anchors.fill: parent
                anchors.left: actThreebutnText.right
                onClicked: {
                    contentList.currentIndex=4
                }
            }

        }
    }

}
