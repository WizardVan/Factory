import QtQuick 2.5
import QtQml.Models 2.1
import "content"

Rectangle {
    //property alias mouseArea: mouseArea
    id: mainRect
    width: 1000
    height: 700
    color: "#ffffff"
    radius: 0
    border.width: 0
    border.color: "#00000000"

    Rectangle {
        id: banner
        height: parent.height *0.11
        anchors.top: parent.top
        color: "#00000000"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0

        Image {
            id: logo
            width: parent.width *0.12
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            source: "images/logo.png"
        }

        Rectangle {
            id: title
            color: "#118cc7"
            anchors.right: timerShow.left
            anchors.rightMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.left: logo.right
            anchors.leftMargin: 0

            Text {
                id: titletext
                color: "#ffffff"
                text: qsTr("XXXXXXXXXXXX有限公司")
                styleColor: "#00000000"
                style: Text.Sunken
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                fontSizeMode:Text.Fit
                font.pixelSize: 100
                //font.pixelSize: 50
            }

            MouseArea {
                id: titileBarArea
                anchors.fill: parent
                property point clickPos: "0,0"
                property bool isFullScreen:false
                onPressed: {
                    clickPos = Qt.point(mouse.x,mouse.y)
                }
                onPositionChanged: {
                    var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
                    //如果mainwindow继承自QWidget,用setPos
                    rootwindow.setX(rootwindow.x+delta.x)
                    rootwindow.setY(rootwindow.y+delta.y)

                }
                onDoubleClicked:{
                    if(isFullScreen==false)
                    {
                        rootwindow.showFullScreen()
                        isFullScreen=true
                    }
                    else if(isFullScreen==true)
                    {
                        rootwindow.showNormal()
                        isFullScreen=false
                    }
                }
            }
        }

        Rectangle {
            id: timerShow
            width: parent.width*0.2
            color: "#14a0de"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0

            Item {
                id: timeritem
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0

                Timer {
                    interval: 500; running: true; repeat: true
                    //onTriggered: time.text = Qt.formatDateTime(new Date(), "dddd\nyyyy-MM-dd\n-MMM-\nhh-mm-ss")
                    onTriggered:
                    {
                        hmsText.text=new Date().toLocaleString(Qt.locale(),"hh:mm:ss")
                        ddayText.text=new Date().toLocaleString(Qt.locale(),"dddd")
                    }
                }

                Text {
                    id: hmsText
                    color: "#ffffff"
                    text: qsTr("00:00:00")
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    styleColor: "#00000000"
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.bottom: parent.verticalCenter
                    anchors.bottomMargin: 0
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    fontSizeMode:Text.Fit
                    font.pixelSize: 100
                    //font.pixelSize: 30
                }

                Text {
                    id: ddayText
                    color: "#ffffff"
                    text: qsTr("星期天")
                    style: Text.Sunken
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    styleColor: "#00000000"
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    anchors.top: parent.verticalCenter
                    anchors.topMargin: 0
                    fontSizeMode:Text.Fit
                    font.pixelSize: 100
                    //font.pixelSize: 25
                }
            }
        }
    }

    Rectangle {
        id: botbanner
        height: parent.height*0.07
        color: "#00000000"
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.left: parent.left

        Rectangle {
            id: subtitle
            width: parent.width*0.7
            color: "#118cc7"
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0

            Text {
                id: subtitletext
                color: "#ffffff"
                text: qsTr("XXXXXXXXXXXX有限公司")
                style: Text.Sunken
                font.family: "Times New Roman"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                styleColor: "#00000000"
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                fontSizeMode:Text.Fit
                font.pixelSize: 100
                //font.pixelSize: 35
            }
        }

        Rectangle {
            id: telerect
            color: "#14a0de"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: subtitle.right
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0

            Text {
                id: teleinfo
                color: "#ffffff"
                text: qsTr("513-XXXXXXXX")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                styleColor: "#00000000"
                style: Text.Sunken
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                fontSizeMode:Text.Fit
                font.pixelSize: 100
                //font.pixelSize: 30
            }
        }
    }

    ListView {
        id: contentList
        interactive: false
        highlightMoveDuration: 0
        snapMode: ListView.SnapToItem
        keyNavigationWraps: false
        orientation: ListView.Horizontal
        flickableDirection: Flickable.HorizontalFlick
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: botbanner.top
        anchors.top: banner.bottom
        boundsBehavior: Flickable.StopAtBounds
        focus: false
        model: ObjectModel {
            LoginPage{
                id:ologinPage
                width:contentList.width
                height:contentList.height

            }
            ActivityPage{
                id:oactivityPage
                width:contentList.width
                height:contentList.height

            }
            ActOnePage{
                id:oactonePage
                width:contentList.width
                height:contentList.height
            }
            ActThreePage{
                id:oactthreePage
                width:contentList.width
                height:contentList.height
            }

        }
    }



}
