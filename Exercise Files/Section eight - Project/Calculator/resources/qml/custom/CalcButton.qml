import QtQuick 2.10
import QtQuick.Controls 2.3

Button {
    id: ctrl

    property color bg_color: "white"
    property color txt_color: "black"

    background: Rectangle {
        color: ctrl.pressed ? Qt.darker(bg_color, 1.25) : bg_color
    }

    contentItem: Text {
        text: ctrl.text
        padding: ctrl.padding
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "Segoe MDL2 Assets"
        font.pixelSize: 18
        color: txt_color
    }

}
