import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 1024
    height: 640

    title: qsTr('Button')

    Button {
        text: "Click your way to freedom"

        onClicked: console.log('yahooooo')

        onPressed: console.log('bingo')

    }

}
