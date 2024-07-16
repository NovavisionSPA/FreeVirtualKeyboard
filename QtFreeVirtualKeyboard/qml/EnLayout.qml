import QtQuick 2.0
import QtQuick.Layouts 1.3

ColumnLayout {
    property var inputPanel

    function setFocusfromLeft() {
        q.forceActiveFocus();
    }

    RowLayout {
        property real keyWeight: 160
        Key {
            id: q
            btnKey: Qt.Key_Q
            btnText: "q"
            inputPanelRef: inputPanel
            rightKey: w
            leftKey: hideKey
        }
        Key {
            id: w
            btnKey: Qt.Key_W
            btnText: "w"
            inputPanelRef: inputPanel
            rightKey: e
            leftKey: q
        }
        Key {
            id: e
            btnKey: Qt.Key_E
            btnText: "e"
            alternativeKeys: "êëèé"
            inputPanelRef: inputPanel
            rightKey: r
            leftKey: w
        }
        Key {
            id: r
            btnKey: Qt.Key_R
            btnText: "r"
            alternativeKeys: "ŕř"
            inputPanelRef: inputPanel
            rightKey: t
            leftKey: e
        }
        Key {
            id: t
            btnKey: Qt.Key_T
            btnText: "t"
            alternativeKeys: "ţŧť"
            inputPanelRef: inputPanel
            rightKey: y
            leftKey: r
        }
        Key {
            id: y
            btnKey: Qt.Key_Y
            btnText: "y"
            alternativeKeys: "ÿýŷ"
            inputPanelRef: inputPanel
            rightKey: u
            leftKey: t
        }
        Key {
            id: u
            btnKey: Qt.Key_U
            btnText: "u"
            alternativeKeys: "űūũûüùú"
            inputPanelRef: inputPanel
            rightKey: i
            leftKey: y
        }
        Key {
            id: i
            btnKey: Qt.Key_I
            btnText: "i"
            alternativeKeys: "îïīĩìí"
            inputPanelRef: inputPanel
            rightKey: o
            leftKey: u
        }
        Key {
            id: o
            btnKey: Qt.Key_O
            btnText: "o"
            alternativeKeys: "œøõôöòó"
            inputPanelRef: inputPanel
            rightKey: p
            leftKey: i
        }
        Key {
            id: p
            btnKey: Qt.Key_P
            btnText: "p"
            inputPanelRef: inputPanel
            rightKey: backspace
            leftKey: o
        }
        BackspaceKey {
            id: backspace
            inputPanelRef: inputPanel
            rightKey: a
            leftKey: p
        }
    }
    RowLayout {
        property real keyWeight: 160
        Key {
            id: functionKey
            weight: 56
            functionKey: true
            showPreview: false
            btnBackground: "transparent"
        }
        Key {
            id: a
            btnKey: Qt.Key_A
            btnText: "a"
            alternativeKeys: "äåãâàá"
            inputPanelRef: inputPanel
            rightKey: s
            leftKey: backspace
        }
        Key {
            id: s
            btnKey: Qt.Key_S
            btnText: "s"
            alternativeKeys: "šşś"
            inputPanelRef: inputPanel
            rightKey: d
            leftKey: a
        }
        Key {
            id: d
            btnKey: Qt.Key_D
            btnText: "d"
            alternativeKeys: "đď"
            inputPanelRef: inputPanel
            rightKey: f
            leftKey: s
        }
        Key {
            id: f
            btnKey: Qt.Key_F
            btnText: "f"
            inputPanelRef: inputPanel
            rightKey: g
            leftKey: d
        }
        Key {
            id: g
            btnKey: Qt.Key_G
            btnText: "g"
            alternativeKeys: "ġģĝğ"
            inputPanelRef: inputPanel
            rightKey: h
            leftKey: f
        }
        Key {
            id: h
            btnKey: Qt.Key_H
            btnText: "h"
            inputPanelRef: inputPanel
            rightKey: j
            leftKey: g
        }
        Key {
            id: j
            btnKey: Qt.Key_J
            btnText: "j"
            inputPanelRef: inputPanel
            rightKey: k
            leftKey: h
        }
        Key {
            id: k
            btnKey: Qt.Key_K
            btnText: "k"
            inputPanelRef: inputPanel
            rightKey: l
            leftKey: j
        }
        Key {
            id: l
            btnKey: Qt.Key_L
            btnText: "l"
            alternativeKeys: "ĺŀłļľ"
            inputPanelRef: inputPanel
            rightKey: enter
            leftKey: k
        }
        HideKey {
            id: enter
            weight: 283
            inputPanelRef: inputPanel
            rightKey: shiftLeft
            leftKey: l
            btnDisplayedText: "ENTER"
        }
//        EnterKey {
//            id: enter
//            weight: 283
//            inputPanelRef: inputPanel
//            rightKey: shiftLeft
//            leftKey: l
//        }
    }
    RowLayout {
        property real keyWeight: 156
        ShiftKey {
            id: shiftLeft
            rightKey: z
            leftKey: enter
        }
        Key {
            id: z
            btnKey: Qt.Key_Z
            btnText: "z"
            alternativeKeys: "žż"
            inputPanelRef: inputPanel
            rightKey: x
            leftKey: shiftLeft
        }
        Key {
            id: x
            btnKey: Qt.Key_X
            btnText: "x"
            inputPanelRef: inputPanel
            rightKey: c
            leftKey: z
        }
        Key {
            id: c
            btnKey: Qt.Key_C
            btnText: "c"
            alternativeKeys: "çċčć"
            inputPanelRef: inputPanel
            rightKey: v
            leftKey: x
        }
        Key {
            id: v
            btnKey: Qt.Key_V
            btnText: "v"
            inputPanelRef: inputPanel
            rightKey: b
            leftKey: c
        }
        Key {
            id: b
            btnKey: Qt.Key_B
            btnText: "b"
            inputPanelRef: inputPanel
            rightKey: n
            leftKey: v
        }
        Key {
            id: n
            btnKey: Qt.Key_N
            btnText: "n"
            alternativeKeys: "ņńň"
            inputPanelRef: inputPanel
            rightKey: m
            leftKey: b
        }
        Key {
            id: m
            btnKey: Qt.Key_M
            btnText: "m"
            inputPanelRef: inputPanel
            rightKey: comma
            leftKey: n
        }
        Key {
            id: comma
            btnKey: Qt.Key_Comma
            btnText: ","
            inputPanelRef: inputPanel
            rightKey: period
            leftKey: m
        }
        Key {
            id: period
            btnKey: Qt.Key_Period
            btnText: "."
            inputPanelRef: inputPanel
            rightKey: shiftRight
            leftKey: comma
        }
        ShiftKey {
            id: shiftRight
            weight: 204
            rightKey: symbol
            leftKey: period
        }
    }
    RowLayout {
        property real keyWeight: 154
        SymbolKey {
            id: symbol
            weight: 217
            rightKey: space
            leftKey: shiftRight
        }
        SpaceKey {
            id: space
            weight: 1168
            inputPanelRef: inputPanel
            btnDisplayedText: "English"
            rightKey: apostrophe
            leftKey: symbol
        }
        Key {
            id: apostrophe
            btnKey: Qt.Key_Apostrophe
            btnText: "'"
            inputPanelRef: inputPanel
            rightKey: hideKey
            leftKey: space
        }
        HideKey {
            id: hideKey
            weight: 205
            leftKey: apostrophe
            rightKey: q
        }
    }
}
