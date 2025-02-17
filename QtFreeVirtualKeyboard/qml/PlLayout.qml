import QtQuick 2.0
import QtQuick.Layouts 1.3

ColumnLayout {

    property var inputPanel

    RowLayout {
        property real keyWeight: 160
        Key {
            btnKey: Qt.Key_Q
            btnText: "q"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_W
            btnText: "w"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_E
            btnText: "e"
            alternativeKeys: "ę"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_R
            btnText: "r"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_T
            btnText: "t"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_Y
            btnText: "y"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_U
            btnText: "u"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_I
            btnText: "i"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_O
            btnText: "o"
            alternativeKeys: "ó"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_P
            btnText: "p"
            inputPanelRef: inputPanel
        }
        BackspaceKey {
            inputPanelRef: inputPanel
        }
    }
    RowLayout {
        property real keyWeight: 160
        Key {
            weight: 56
            functionKey: true
            showPreview: false
            btnBackground: "transparent"
        }
        Key {
            btnKey: Qt.Key_A
            btnText: "a"
            alternativeKeys: "ą"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_S
            btnText: "s"
            alternativeKeys: "ś"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_D
            btnText: "d"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_F
            btnText: "f"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_G
            btnText: "g"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_H
            btnText: "h"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_J
            btnText: "j"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_K
            btnText: "k"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_L
            btnText: "l"
            alternativeKeys: "ł"
            inputPanelRef: inputPanel
        }
        EnterKey {
            weight: 283
            inputPanelRef: inputPanel
        }
    }
    RowLayout {
        property real keyWeight: 156
        ShiftKey {}
        Key {
            btnKey: Qt.Key_Z
            btnText: "z"
            alternativeKeys: "źż"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_X
            btnText: "x"
            alternativeKeys: "ź"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_C
            btnText: "c"
            alternativeKeys: "ć"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_V
            btnText: "v"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_B
            btnText: "b"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_N
            btnText: "n"
            alternativeKeys: "ń"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_M
            btnText: "m"
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_Comma
            btnText: ","
            inputPanelRef: inputPanel
        }
        Key {
            btnKey: Qt.Key_Period
            btnText: "."
            inputPanelRef: inputPanel
        }
        ShiftKey {
            weight: 204
        }
    }
    RowLayout {
        property real keyWeight: 154
        SymbolKey {
            weight: 217
        }
        SpaceKey {
            weight: 1168
            inputPanelRef: inputPanel
            btnDisplayedText: "Polski"
        }
        Key {
            btnKey: Qt.Key_Apostrophe
            btnText: "'"
            inputPanelRef: inputPanel
        }
        HideKey {
            weight: 205
        }
    }
}
