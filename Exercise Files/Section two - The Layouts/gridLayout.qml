import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 800
    height: 600

    title: qsTr('Grid Layout')

    Rectangle {
        anchors.fill: parent

        GridLayout {
            anchors.centerIn: parent

            Rectangle {
                width: 200
                height: 200
                radius: 8
                color: "dodgerblue"
            }

            Rectangle {
                width: 200
                height: 200
                radius: 8
                color: "pink"
            }

            Rectangle {
                width: 200
                height: 200
                radius: 8
                color: "gold"
            }

            Rectangle {
                width: 200
                height: 200
                radius: 8
                color: "brown"
            }

        }

    }

}
