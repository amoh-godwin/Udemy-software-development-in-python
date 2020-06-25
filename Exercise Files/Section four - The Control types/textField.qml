import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 1024
    height: 640

    title: qsTr('TextField')

    TextField {
        placeholderText: "First Name"

        font.pixelSize: 14
    }

}
