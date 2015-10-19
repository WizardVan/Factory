import QtQuick 2.5

Rectangle {
    //property alias mouseArea: mouseArea
    id: loginRect
    width: 1000
    height: 574
    color: "#00000000"
    radius: 0
    border.width: 0
    border.color: "#00000000"

    Image {
        id: loginbkgImg
        antialiasing: true
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        source: "../images/login_bkg.jpg"
    }

    Text {
        id: titleText
        color: "#14a0de"
        text: qsTr("RFJ2015")
        anchors.rightMargin: parent.width*0.5
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.bottomMargin: parent.height*0.6
        anchors.leftMargin: parent.width/10
        anchors.topMargin: parent.height *0.2
        anchors.fill: parent
        styleColor: "#80000000"
        style: Text.Sunken
        font.pixelSize: 100
    }

    Text {
        id: subTitleText
        color: "#ffffff"
        text: qsTr("防护设备检测系统")
        anchors.rightMargin: parent.width*0.5
        anchors.bottomMargin: parent.height*0.4
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.leftMargin: parent.width*0.1
        anchors.topMargin: parent.height*0.4
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        styleColor: "#00000000"
        style: Text.Sunken
        font.pixelSize: 50
    }

    Item {
        id: loginButton
        anchors.rightMargin: parent.width*0.1
        anchors.leftMargin: parent.width*0.8
        anchors.bottomMargin: parent.height*0.25
        anchors.topMargin: parent.height*0.7
        anchors.fill: parent

        Rectangle {
            id: loginbutnBkg
            color: "#14a0de"
            radius: 3
            border.width: 0
            border.color: "#00000000"
            anchors.fill: parent

            Text {
                id: loginbutnText
                color: "#ffffff"
                text: qsTr("登 陆")
                textFormat: Text.AutoText
                styleColor: "#00000000"
                style: Text.Sunken
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                font.pixelSize: 20
            }

            MouseArea {
                id: loginArea
                anchors.fill: parent
                anchors.top: loginbutnText.bottom
                anchors.left: loginbutnText.right
                onClicked: {
                    contentList.currentIndex=1
                }
            }
        }

    }

    Item {
        id: accountItem
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.top: titleText.top
        anchors.right: parent.right
        anchors.bottom: titleText.bottom
        anchors.left: titleText.right
        anchors.topMargin: 0

        Rectangle {
            id: accountBkg
            color: "#ffffff"
            radius: 3
            border.width: 0
            anchors.rightMargin: parent.width*0.2
            anchors.leftMargin: parent.width*0.2
            anchors.bottomMargin: parent.height*0.3
            anchors.topMargin: parent.height*0.3
            anchors.fill: parent

            Text {
                id: accountText
                text: qsTr("用户名")
                font.bold: false
                styleColor: "#00000000"
                style: Text.Sunken
                anchors.rightMargin: parent.width*0.7
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.fill: parent
                font.pixelSize: 25
            }

            TextInput {
                id: accountInput
                text: qsTr("")
                antialiasing: true
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                anchors.left: accountText.right
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.top: parent.top
                anchors.leftMargin: 0
                font.pixelSize: 25
            }
        }
    }

    Item {
        id: passwordItem
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.top: subTitleText.top
        anchors.right: parent.right
        anchors.bottom: subTitleText.bottom
        anchors.left: subTitleText.right
        anchors.topMargin: 0

        Rectangle {
            id: passwordBkg
            color: "#ffffff"
            radius: 3
            Text {
                id: passwordText
                text: qsTr("密 码")
                font.bold: false
                anchors.rightMargin: parent.width*0.7
                anchors.fill: parent
                style: Text.Sunken
                styleColor: "#00000000"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 25
            }

            TextInput {
                id: passwordInput
                text: qsTr("")
                echoMode: TextInput.Password
                anchors.bottom: parent.bottom
                anchors.leftMargin: 0
                anchors.right: parent.right
                antialiasing: true
                anchors.top: parent.top
                verticalAlignment: Text.AlignVCenter
                anchors.left: passwordText.right
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: 25
            }
            anchors.bottomMargin: parent.height*0.3
            anchors.leftMargin: parent.width*0.2
            anchors.rightMargin: parent.width*0.2
            anchors.fill: parent
            border.width: 0
            anchors.topMargin: parent.height*0.3
        }
    }

}
