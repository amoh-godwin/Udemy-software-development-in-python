import QtQuick 2.10
import QtQuick.Controls 2.3

Button {
    id: ctrl

    background: Rectangle {
        implicitWidth: 122
        implicitHeight: 36
        color: ctrl.pressed ? Qt.darker("tomato") : ctrl.hovered ? Qt.lighter("tomato") : "tomato"
        radius: 4
    }

    contentItem: Text {
        text: ctrl.text
        font: ctrl.font
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        color: "white"
    }

}
