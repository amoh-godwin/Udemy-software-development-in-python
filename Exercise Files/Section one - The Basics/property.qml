import QtQuick 2.12
import QtQuick.Controls 2.12


ApplicationWindow {
    visible: true
    width: 800
    height: 500

    title: qsTr("")

    property int everyOneWidth: 800
    property int everyOneHeight: 400
    property var colors: ["pink", "gold"]


    Rectangle {
        width: everyOneWidth
        height: everyOneHeight
        color: colors[0]
    }

}
