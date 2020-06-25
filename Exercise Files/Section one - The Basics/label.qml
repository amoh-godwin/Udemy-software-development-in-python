import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: qsTr('Label')


    Text {
        id: first
        anchors.centerIn: parent
        font.pixelSize: 24
        text: qsTr('The Quick Brown Fox')
    }

    Label {
        anchors.top: first.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr('The Quick Brown Fox')
        font.pixelSize: 24
    }

}
