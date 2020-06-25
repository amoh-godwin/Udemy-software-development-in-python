import QtQuick 2.12
import QtQuick.Controls 2.12


ApplicationWindow {
    id: mainWindow
    visible: true
    width: 800
    height: 500

    title: qsTr("")

    property int everyOneWidth: 800
    property int everyOneHeight: 400
    property var colors: ["pink", "gold"]


    Rectangle {
        id: firstRect
        width: parent.width
        height: everyOneHeight
        color: colors[0]

        property int everyBroWidth: parent.width

    }


    Rectangle {
        width: firstRect.everyBroWidth
        height: parent.height / 2
        color: colors[1]
    }

}
