import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: qsTr('Image')

    Rectangle {
        anchors.centerIn: parent
        width: 512
        height: 512

        Image {
            //width: 512
            //height: 512
            sourceSize.width: 512
            sourceSize.height: 512
            source: "../Images/sunset_with_a_deer.jpg"
            //fillMode: Image.TileHorizontally
        }

    }

}
