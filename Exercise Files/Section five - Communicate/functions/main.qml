import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 800
    height: 500
    title: qsTr('Functions')

    property string user: "John"


    Rectangle {
        anchors.fill: parent
        visible: true

        Label {
            id: welc
            anchors.centerIn: parent
            text: qsTr('Welcome')
            font.pixelSize: 48
            color: "darkgrey"
            opacity: 0
        }

        Label {
            id: usr
            anchors.centerIn: parent
            text: qsTr(user)
            font.pixelSize: 48
            color: "darkgrey"
            opacity: 0
        }

        SequentialAnimation {
            id: animator
            loops: Animator.Infinite
            OpacityAnimator {
                target: welc
                from: 0
                to: 1
                duration:1500
            }
            OpacityAnimator {
                target: welc
                from: 1
                to: 0
                duration:1500
            }
            OpacityAnimator {
                target: usr
                from: 0
                to: 1
                duration:1500
            }
            OpacityAnimator {
                target: usr
                from: 1
                to: 0
                duration:1500
            }
            running: false
        }


    }

    Rectangle {
        id: btn_cont
        anchors.fill: parent
        visible: true

        Button {
            anchors.centerIn: parent
            text: qsTr('Click to Start')
            onClicked: {
                btn_cont.visible = false
                animator.running = true
                chatty.getUserName()
            }
        }
    }


    Connections {
        target: chatty

        onReturn_user: {
            var username = emitter
            user = username
        }
    }

}
