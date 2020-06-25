import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 800
    height: 600
    title: qsTr('Ids')

    property int clicks: 0
    property var colors: ['gold', 'yellow']

    Rectangle {
        id: firstChild
        width: 400
        height: 80
        color: colors[0]

        Rectangle {
            width: mainWindow.width
            height: 40
            color: colors[1]
        }

    }


}
