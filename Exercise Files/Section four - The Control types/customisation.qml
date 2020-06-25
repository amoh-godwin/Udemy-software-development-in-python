import QtQuick 2.10
import QtQuick.Controls 2.3

ApplicationWindow {
    visible: true
    width: 400
    height: 300

    Row {
        anchors.centerIn: parent

        CustomButton {
            text: "Submit Here"
        }

    }

}
