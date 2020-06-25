import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 800
    height: 600

    title: qsTr('Stack View')

    StackView {
        id: view
        anchors.fill: parent
        initialItem: first
    }

    Component {
        id: first

        Rectangle {
            color: "dodgerblue"

            Button {
                text: qsTr('Push to Second')

                onClicked: view.push(third)

            }

        }

    }

    Component {
        id: second

        Rectangle {
            color: "pink"

            Button {
                text: qsTr('Push to Third')

                onClicked: view.push(third)

            }

        }

    }


    Component {
        id: third

        Rectangle {
            color: "gold"

            Button {
                text: qsTr('Pop out')

                onClicked: view.pop()

            }

        }

    }
}
