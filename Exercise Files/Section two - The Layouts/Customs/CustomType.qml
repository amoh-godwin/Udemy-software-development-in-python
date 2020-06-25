import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Rectangle {
    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    width: 240
    height: 40
    color: "gold"


    Rectangle {
        width: 1
        height: parent.height
        color: "dodgerblue"
    }

    Rectangle {
        anchors.right: parent.right
        width: 1
        height: parent.height
        color: "dodgerblue"
    }

}
