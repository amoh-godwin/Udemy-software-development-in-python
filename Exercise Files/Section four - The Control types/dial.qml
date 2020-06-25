import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 800
    height: 500

    title: "Dial"

    Dial {
        id: dial
        from: 0
        to: 75
        anchors.centerIn: parent

        onMoved: tf.text = this.value.toFixed()

    }

    TextField {
        id: tf
        text: dial.value
        anchors.top: dial.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

}
