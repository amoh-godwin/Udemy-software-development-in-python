import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "Customs"

ApplicationWindow {
    visible: true
    width: 800
    height: 600

    title: qsTr('Custom Type')

    ColumnLayout {
        width: parent.width
        height: 600

        CustomType {
            color: "dodgerblue"
        }

        RoundRectangle {
            color: "brown"
        }

        RoundRectangle {
            color: "gold"
        }


        CustomType {
            //
        }
    }



}
