import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: qsTr('Component Functions')

    Component.onCompleted: {
        console.log('Hi')
    }

    Rectangle {
        width: 200
        height: 40
        color: "dodgerblue"

        Component.onCompleted: console.log('Hello')

    }

}
