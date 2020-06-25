import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.5
import "loves"

ApplicationWindow {
    visible: true
    width: 1348
    height: 696
    title: qsTr('Resource')

    Rectangle {
        anchors.fill: parent

        Final {}

        Rectangle {
            anchors.fill: parent

            Image {
                width: parent.width
                height: parent.height
                source: "../images/car-repair.jpg"
                fillMode: Image.PreserveAspectCrop
            }

        }

        Rectangle {
            anchors.fill: parent
            color: "transparent"

            Button {
                anchors.centerIn: parent
                text: qsTr('Get started')

                background: Rectangle {
                    implicitWidth: 168
                    implicitHeight: 32
                    color: parent.hovered ? Qt.darker('dodgerblue') : "dodgerblue"
                }

                contentItem: Text {
                    topPadding: -1
                    text: parent.text
                    font.family: "Segoe UI"
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: "white"
                }

            }

        }

    }

}
