import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 800
    height: 600

    title: qsTr('Swipe View')

    SwipeView {
        id: view
        anchors.fill: parent
        currentIndex: indicator.currentIndex

        Rectangle {
            color: "dodgerblue"
        }

        Rectangle {
            color: "pink"
        }

        Rectangle {
            color: "gold"
        }

    }

    PageIndicator {
        id: indicator
        count: view.count
        interactive: true
        currentIndex: view.currentIndex
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

}
