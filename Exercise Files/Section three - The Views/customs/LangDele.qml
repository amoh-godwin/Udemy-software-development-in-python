import QtQuick 2.10
import QtQuick.Layouts 1.3

Component {
    Rectangle {
        width: view.cellWidth
        height: view.cellHeight
        color: "transparent"

        Rectangle {
            anchors.fill: parent
            anchors.margins: 2
            color: "white"

            ColumnLayout {
                anchors.fill: parent

                Text {
                    text: "Nederlands"
                    font.family: "Segoe UI"
                    color: "dodgerblue"
                    font.pixelSize: 20
                }

                Text {
                    text: "Dutch"
                    font.family: "Segoe UI"
                    font.pixelSize: 13
                }

            }

        }

    }
}
