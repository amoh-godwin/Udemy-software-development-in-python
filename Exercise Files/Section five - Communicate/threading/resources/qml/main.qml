import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.4

ApplicationWindow {
    visible: true
    width: 800
    height: 500
    title: qsTr('First Time Threading')

    property string time_str: "00:00:00"

    Rectangle {
        anchors.fill: parent

        Rectangle {
            id: bg
            anchors.fill: parent

            Image {
                anchors.fill: parent
                source: "../images/blueberries.jpg"
            }

        }

        Column {
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 12
            anchors.left: parent.left
            anchors.leftMargin: 12
            spacing: 0

            Label {
                padding: 0
                text: time_str
                font.family: "Segoe UI Semilight"
                font.pixelSize: 24
                color: "white"
            }

            Label {
                padding: 0
                text: "Thursday, 17th February, 2019"
                font.family: "Segoe UI Semilight"
                font.pixelSize: 21
                color: "white"
            }

        }

    }

    QtObject {
        Component.onCompleted: clock.start_clock()
    }

    Connections {
        target: clock

        onRecieveTime: {
            var ret_value = _start_clock
            time_str = ret_value

        }

    }

}
