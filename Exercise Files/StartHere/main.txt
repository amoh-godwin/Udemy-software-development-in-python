import QtQuick 2.10
import QtQuick.Controls 2.3

ApplicationWindow {

    visible: true
    width: 400
    height: 400
    title: "First Window"

    Label {
        id: lbl
        anchors.centerIn: parent
        text: "Hello World"
        font.pixelSize: 32

    }


}
