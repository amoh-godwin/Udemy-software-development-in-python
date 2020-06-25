import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "customs"

ApplicationWindow {
    visible: true
    width: 500
    height: 600

    title: qsTr('List View')

    Rectangle {
        width: parent.width
        height: parent.height

        ListView {
            anchors.fill: parent
            anchors.margins: 24
            model: 18
            delegate: HospitalContactDelegate {}
            focus: true
        }

    }

}
