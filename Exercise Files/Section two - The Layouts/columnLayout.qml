import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 400
    height: 480

    ColumnLayout {
        width: 280
        height: 280
        anchors.centerIn: parent
        spacing: 0

        Rectangle {
            Layout.fillWidth: true
            height: 96
            color: "darkgrey"
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#4a414c"

            Image {
                sourceSize: Qt.size(parent.width, parent.height)
                source: "../Images/time-2980690_1920.jpg"
            }


        }

    }

}
