import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 480
    height: 400

    RowLayout {
        width: parent.width
        height: parent.height
        spacing: 0

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "dodgerblue"
        }

        Rectangle {
            width: 48
            Layout.fillHeight: true
            color: "darkgrey"
        }

    }

}
