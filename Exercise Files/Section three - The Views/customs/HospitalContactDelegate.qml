import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Component {

    Rectangle {
        width: parent.width
        height: 48

        RowLayout {
            anchors.top: parent.top
            anchors.topMargin: 4
            width: parent.width
            height: 44
            spacing: 12

            Rectangle {
                Layout.preferredWidth: 40
                Layout.preferredHeight: 40
                radius: 20
                color: "dodgerblue"

                Label {
                    anchors.centerIn: parent
                    text: fname[0]
                    font.family: "Roboto Bold"
                    font.pixelSize: 22
                    color: "white"
                }

            }

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true

                Label {
                    anchors.verticalCenter: parent.verticalCenter
                    text: fname + " " + lname
                    font.family: "Segoe UI Semilight"
                    font.pixelSize: 18
                }


                Rectangle {
                    anchors.bottom: parent.bottom
                    width: parent.width
                    height: 1
                    color: "#21000000"
                }

            }

        }

    }

}
