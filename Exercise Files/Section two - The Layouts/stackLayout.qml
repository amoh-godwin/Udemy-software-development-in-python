import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 800
    height: 600

    title: qsTr('Stack Layout')

    Rectangle {
        anchors.fill: parent

        StackLayout {
            anchors.fill: parent
            currentIndex: 1

            Rectangle {
                implicitWidth: 400
                implicitHeight: 400
                color: "dodgerblue"
            }

            Rectangle {
                implicitWidth: 400
                implicitHeight: 400
                color: "pink"
            }


        }

    }

}
