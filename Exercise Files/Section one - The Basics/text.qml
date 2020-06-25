import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: qsTr('Text')

    Text {
        anchors.centerIn: parent
        width: 400
        text: qsTr('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi placerat, erat ut eleifend fermentum, purus diam pharetra mi, quis fringilla lectus ipsum sit amet arcu. Proin eu augue vitae neque consectetur volutpat a ac nunc. Nunc ac bibendum orci. Maecenas varius erat dolor, condimentum ali')
        font.family: "Segoe UI Semilight"
        elide: Text.ElideLeft
        font.pixelSize: 24
        //wrapMode: Text.WordWrap
        color: "dodgerblue"
    }
}
