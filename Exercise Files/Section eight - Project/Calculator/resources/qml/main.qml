import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "custom"

ApplicationWindow {
    visible: true
    width: 320
    height: 580

    property bool computed: false
    property bool portrait: width < height
    property string screenProblem: "0"
    property string bg_problem: "0"
    property string evaluation: ""

    signal btn_click(string num)
    signal mem_click(string mem_str)
    signal uniClick(string code, string repl)
    signal deleteText()

    onBtn_click: {
        let stat = num;

        if(computed) {
            screenProblem = '0';
            bg_problem = '0';
            computed = false;
        }

        if (screenProblem != '0') {
            screenProblem += stat;
            bg_problem += stat;
        }else if(stat == '.' & screenProblem == '0') {
            screenProblem = '0.'
            bg_problem = '0.'
        } else {
            screenProblem = stat;
            bg_problem = stat;
        }

        if (scr_lab.width > answer_sheet.width) {
            flicker.flick(-512, 0);
        }



    }

    onUniClick: {
        var stat = '<span style="font-family: Segoe MDL2 Assets; font-size: 18px;" >' + code + '</span>';

        if (screenProblem !== 0) {
            screenProblem += stat;
            bg_problem += repl;
        } else {
            screenProblem = stat;
            bg_problem = repl;
        }

        if (scr_lab.width > answer_sheet.width) {
            flicker.flick(-512, 0);
        }

    }

    onDeleteText: {
        let len = screenProblem.length - 1;
        let new_string = screenProblem.substring(0, len);

        if (new_string == '') {
            new_string = '0';
        }
        screenProblem = new_string;

    }


    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        Rectangle {
            id: answer_sheet
            Layout.fillWidth: true
            Layout.preferredHeight: 128

            ColumnLayout {
                width: parent.width
                anchors.right: parent.right
                anchors.rightMargin: 8
                anchors.verticalCenter: parent.verticalCenter

                Rectangle {
                    Layout.preferredWidth: scr_lab.width
                    Layout.preferredHeight: 48
                    Layout.maximumWidth: parent.parent.width
                    Layout.alignment: Qt.AlignRight

                    Flickable {
                        id: flicker
                        width: parent.width
                        height: parent.height
                        contentWidth: scr_lab.width
                        contentHeight: scr_lab.height
                        flickableDirection: Flickable.HorizontalFlick

                        Label {
                            id: scr_lab
                            text: screenProblem
                            textFormat: Text.RichText
                            leftPadding: 8
                            font.family: "Segoe UI Semilight"
                            font.pixelSize: 42
                            font.bold: true
                        }
                    }

                }

                Rectangle {
                    Layout.preferredWidth: eval_lab.width
                    Layout.preferredHeight: 48
                    Layout.maximumWidth: parent.parent.width
                    Layout.alignment: Qt.AlignRight

                    Flickable {
                        width: parent.width
                        height: parent.height
                        contentWidth: eval_lab.width
                        contentHeight: eval_lab.height
                        flickableDirection: Flickable.HorizontalFlick

                        Label {
                            id: eval_lab
                            text: evaluation
                            textFormat: Text.RichText
                            leftPadding: 8
                            font.family: "Segoe UI Semilight"
                            font.pixelSize: 24
                            font.bold: true
                            color: "dodgerblue"
                        }
                    }

                }

            }

            Rectangle {// border
                anchors.bottom: parent.bottom
                width: parent.width
                height: 1
                color: "#ebebeb"
            }

        }

        Rectangle {// buttons
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "transparent"

            Rectangle {// s size
                anchors.fill: parent
                color: "#ebebeb"
                visible: portrait

                GridLayout {
                    anchors.fill: parent
                    columns: 4
                    rowSpacing: 1
                    columnSpacing: 1

                    CalcButton {
                        text: "mc"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1
                        bg_color: "#f1f1f1"
                        txt_color: "#75000000"

                        onClicked: mem_click(this.text)


                    }

                    CalcButton {
                        text: "m+"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1
                        bg_color: "#f1f1f1"
                        txt_color: "#75000000"

                        onClicked: mem_click(this.text)


                    }

                    CalcButton {
                        text: "m-"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1
                        bg_color: "#f1f1f1"
                        txt_color: "#75000000"

                        onClicked: mem_click(this.text)


                    }

                    CalcButton {
                        text: "mr"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1
                        bg_color: "#f1f1f1"
                        txt_color: "#75000000"

                        onClicked: mem_click(this.text)


                    }

                    CalcButton {
                        text: "C"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1
                        bg_color: "#f1f1f1"
                        txt_color: "dodgerblue"

                        onClicked: screenProblem = '0'


                    }

                    CalcButton {
                        text: "\uE94A"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1
                        bg_color: "#f1f1f1"
                        txt_color: "dodgerblue"

                        onClicked: uniClick(this.text, '/')


                    }

                    CalcButton {
                        text: "\uE947"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1
                        bg_color: "#f1f1f1"
                        txt_color: "dodgerblue"

                        onClicked: uniClick(this.text, '*')


                    }

                    CalcButton {
                        text: "\uE94F"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1
                        bg_color: "#f1f1f1"
                        txt_color: "dodgerblue"

                        onClicked: deleteText()


                    }

                    CalcButton {
                        text: "7"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1

                        onClicked: btn_click(this.text)

                    }

                    CalcButton {
                        text: "8"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1

                        onClicked: btn_click(this.text)


                    }

                    CalcButton {
                        text: "9"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1

                        onClicked: btn_click(this.text)


                    }

                    CalcButton {
                        text: "\uE949"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1
                        bg_color: "#f1f1f1"
                        txt_color: "dodgerblue"

                        onClicked: uniClick(this.text, '-')

                    }

                    CalcButton {
                        text: "4"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1

                        onClicked: btn_click(this.text)


                    }

                    CalcButton {
                        text: "5"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1

                        onClicked: btn_click(this.text)

                    }

                    CalcButton {
                        text: "6"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1

                        onClicked: btn_click(this.text)


                    }

                    CalcButton {
                        text: "\uE948"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1
                        txt_color: "dodgerblue"
                        bg_color: "#f1f1f1"

                        onClicked: uniClick(this.text, '+')


                    }

                    CalcButton {
                        text: "1"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1

                        onClicked: btn_click(this.text)


                    }

                    CalcButton {
                        text: "2"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1

                        onClicked: btn_click(this.text)


                    }

                    CalcButton {
                        text: "3"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1

                        onClicked: btn_click(this.text)


                    }

                    CalcButton {
                        text: "\uE94E"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 2
                        Layout.columnSpan: 1
                        bg_color: "dodgerblue"
                        txt_color: "white"

                        onClicked: {
                            computed = true;
                            Calculator.compute(bg_problem)
                        }


                    }

                    CalcButton {
                        text: "\uE94C"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1

                        onClicked: uniClick(this.text, '%')


                    }

                    CalcButton {
                        text: "0"
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1

                        onClicked: btn_click(this.text)


                    }

                    CalcButton {
                        text: "."
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.rowSpan: 1
                        Layout.columnSpan: 1

                        onClicked: btn_click(this.text)


                    }




                }

            }

            Rectangle {// fullsize
                anchors.fill: parent
                visible: !portrait
                color: "transparent"

                RowLayout {
                    anchors.fill: parent
                    anchors.leftMargin: 48
                    anchors.rightMargin: 48
                    anchors.topMargin: 54
                    anchors.bottomMargin: 54
                    spacing: 48

                    Rectangle {// functions
                        Layout.fillWidth: true
                        Layout.maximumWidth: 620
                        Layout.fillHeight: true
                        Layout.minimumHeight: 320
                        color: "#ebebeb"

                        GridLayout {
                            anchors.fill: parent
                            anchors.margins: 1
                            rowSpacing: 1
                            columnSpacing: 1
                            columns: 4

                            CalcButton {
                                text: "mc"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1
                                bg_color: "#f1f1f1"
                                txt_color: "#75000000"

                                onClicked: mem_click(this.text)


                            }

                            CalcButton {
                                text: "m+"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1
                                bg_color: "#f1f1f1"
                                txt_color: "#75000000"

                                onClicked: mem_click(this.text)


                            }

                            CalcButton {
                                text: "m-"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1
                                bg_color: "#f1f1f1"
                                txt_color: "#75000000"

                                onClicked: mem_click(this.text)


                            }

                            CalcButton {
                                text: "mr"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1
                                bg_color: "#f1f1f1"
                                txt_color: "#75000000"

                                onClicked: mem_click(this.text)


                            }

                            CalcButton {
                                text: "C"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1
                                bg_color: "#f1f1f1"
                                txt_color: "dodgerblue"

                                onClicked: screenProblem = '0'


                            }

                            CalcButton {
                                text: "\uE94A"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1
                                bg_color: "#f1f1f1"
                                txt_color: "dodgerblue"

                                onClicked: uniClick(this.text, '/')


                            }

                            CalcButton {
                                text: "\uE947"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1
                                bg_color: "#f1f1f1"
                                txt_color: "dodgerblue"

                                onClicked: uniClick(this.text, '*')


                            }

                            CalcButton {
                                text: "\uE94E"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 2
                                Layout.columnSpan: 1
                                bg_color: "dodgerblue"
                                txt_color: "white"
                                onClicked: {
                                    computed = true;
                                    Calculator.compute(bg_problem)
                                }


                            }

                            CalcButton {
                                text: "\uE94F"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1
                                bg_color: "#f1f1f1"
                                txt_color: "dodgerblue"

                                onClicked: deleteText()


                            }

                            CalcButton {
                                text: "\uE949"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1
                                bg_color: "#f1f1f1"
                                txt_color: "dodgerblue"

                                onClicked: uniClick(this.text, '-')



                            }

                            CalcButton {
                                text: "\uE948"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1
                                txt_color: "dodgerblue"
                                bg_color: "#f1f1f1"

                                onClicked: uniClick(this.text, '+')


                            }






                        }

                    }

                    Rectangle {// numbers
                        Layout.fillWidth: true
                        Layout.maximumWidth: 480
                        Layout.fillHeight: true
                        Layout.minimumHeight: 320
                        Layout.alignment: Qt.AlignRight
                        color: "#ebebeb"

                        GridLayout {
                            anchors.fill: parent
                            anchors.margins: 1
                            rowSpacing: 1
                            columnSpacing: 1
                            columns: 3

                            CalcButton {
                                text: "7"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1

                                onClicked: btn_click(this.text)


                            }

                            CalcButton {
                                text: "8"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1

                                onClicked: btn_click(this.text)

                            }

                            CalcButton {
                                text: "9"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1

                                onClicked: btn_click(this.text)


                            }

                            CalcButton {
                                text: "4"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1

                                onClicked: btn_click(this.text)

                            }

                            CalcButton {
                                text: "5"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1

                                onClicked: btn_click(this.text)

                            }

                            CalcButton {
                                text: "6"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1

                                onClicked: btn_click(this.text)

                            }

                            CalcButton {
                                text: "1"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1

                                onClicked: btn_click(this.text)

                            }

                            CalcButton {
                                text: "2"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1

                                onClicked: btn_click(this.text)

                            }

                            CalcButton {
                                text: "3"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1

                                onClicked: btn_click(this.text)

                            }

                            CalcButton {
                                text: "\uE94C"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1

                                onClicked: uniClick(this.text, '%')


                            }

                            CalcButton {
                                text: "0"
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1

                                onClicked: btn_click(this.text)

                            }

                            CalcButton {
                                text: "."
                                Layout.fillWidth: true
                                Layout.fillHeight: true
                                Layout.rowSpan: 1
                                Layout.columnSpan: 1

                                onClicked: btn_click(this.text)

                            }



                        }

                    }

                }

            }

        }


    }

    Connections {
        target: Calculator

        onEvaluated: {
            evaluation = _compute
        }

    }


}
