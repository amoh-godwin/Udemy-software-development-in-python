import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "customs"

ApplicationWindow {
    visible: true
    width: 800
    height: 600

    title: qsTr('Grid View')


    GridView {
        id: view
        anchors.fill: parent
        cellWidth: 240
        cellHeight: 64

        model: 18

        delegate: LangDele {}
        focus: true

        highlight: Rectangle { color: "#e1e1e1" }

    }


}
