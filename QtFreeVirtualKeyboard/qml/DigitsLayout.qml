import QtQuick 2.0
import QtQuick.Layouts 1.3

import FreeVirtualKeyboard 1.0

ColumnLayout {

    property var inputPanel

    function setFocusfromLeft() {
        _7_.forceActiveFocus();
    }

    ColumnLayout {
        Layout.fillWidth: false
        Layout.fillHeight: true
        Layout.alignment: Qt.AlignHCenter
        Layout.preferredWidth: height

        RowLayout {
            property real keyWeight
            Key {
                id: _7_
                btnKey: Qt.Key_7
                btnText: "7"
                inputPanelRef: inputPanel
                leftKey: enter
                rightKey: _8_
            }

            Key {
                id: _8_
                btnKey: Qt.Key_8
                btnText: "8"
                inputPanelRef: inputPanel
                leftKey: _7_
                rightKey: _9_
            }
            Key {
                id: _9_
                btnKey: Qt.Key_9
                btnText: "9"
                inputPanelRef: inputPanel
                leftKey: _8_
                rightKey: backspace
            }
            BackspaceKey {
                id: backspace
                inputPanelRef: inputPanel
                leftKey: _9_
                rightKey: _4_
            }
        }
        RowLayout {
            property real keyWeight
            Key {
                id: _4_
                btnKey: Qt.Key_4
                btnText: "4"
                inputPanelRef: inputPanel
                leftKey: backspace
                rightKey: _5_
            }
            Key {
                id: _5_
                btnKey: Qt.Key_5
                btnText: "5"
                inputPanelRef: inputPanel
                leftKey: _4_
                rightKey: _6_
            }
            Key {
                id: _6_
                btnKey: Qt.Key_6
                btnText: "6"
                inputPanelRef: inputPanel
                leftKey: _5_
                rightKey: space
            }
            Key {
                id: space
                btnText: " "
                btnDisplayedText: "\u2423"
                repeatable: true
                showPreview: false
                btnKey: Qt.Key_Space
                inputPanelRef: inputPanel
                leftKey: _6_
                rightKey: _1_
            }
        }
        RowLayout {
            property real keyWeight
            Key {
                id: _1_
                btnKey: Qt.Key_1
                btnText: "1"
                inputPanelRef: inputPanel
                leftKey: space
                rightKey: _2_
            }
            Key {
                id: _2_
                btnKey: Qt.Key_2
                btnText: "2"
                inputPanelRef: inputPanel
                leftKey: _1_
                rightKey: _3_
            }
            Key {
                id: _3_
                btnKey: Qt.Key_3
                btnText: "3"
                inputPanelRef: inputPanel
                leftKey: _2_
                rightKey: hide
            }
            HideKey {
                id: hide
                inputPanelRef: inputPanel
                leftKey: _3_
                rightKey: _0_
            }
        }
        RowLayout {
            property real keyWeight
            Key {
                id: _0_
                btnKey: Qt.Key_0
                btnText: "0"
                inputPanelRef: inputPanel
                leftKey: hide
                rightKey: dot
            }
            Key {
                id: dot
                btnKey: Qt.locale(
                            ).decimalPoint === "," ? Qt.Key_Comma : Qt.Key_Period
                btnText: Qt.locale().decimalPoint === "," ? "," : "."

                inputPanelRef: inputPanel
                leftKey: _0_
                rightKey: enter
            }
            HideKey {
                id: enter
                weight: 33
                inputPanelRef: inputPanel
                leftKey: dot
                rightKey: _7_
                btnDisplayedText: "ENTER"
            }
//            EnterKey {
//                inputPanelRef: inputPanel
//            }
        }
    }
}
