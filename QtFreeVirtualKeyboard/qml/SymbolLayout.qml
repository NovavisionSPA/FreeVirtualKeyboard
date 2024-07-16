import QtQuick 2.0
import QtQuick.Layouts 1.3

Item {
    property var inputPanel

    function setFocusfromLeft() {
        _1_.forceActiveFocus();
    }

    property bool secondPage
    onVisibleChanged: {
        if (!visible) {
            secondPage = false
        }
    }

    onSecondPageChanged: {
        if (secondPage) {
            tilde.forceActiveFocus();
        } else {
            _1_.forceActiveFocus();
        }
    }

    ColumnLayout {
        id: page1
        anchors.fill: parent
        visible: !secondPage

        RowLayout {
            property real keyWeight: 160
            Key {
                id: _1_
                btnKey: Qt.Key_1
                btnText: "1"
                inputPanelRef: inputPanel
                leftKey: hideKey
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
                rightKey: _4_
            }
            Key {
                id: _4_
                btnKey: Qt.Key_4
                btnText: "4"
                inputPanelRef: inputPanel
                leftKey: _3_
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
                rightKey: _7_
            }
            Key {
                id: _7_
                btnKey: Qt.Key_7
                btnText: "7"
                inputPanelRef: inputPanel
                leftKey: _6_
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
                rightKey: _0_
            }
            Key {
                id: _0_
                btnKey: Qt.Key_0
                btnText: "0"
                inputPanelRef: inputPanel
                leftKey: _9_
                rightKey: backspace
            }
            BackspaceKey {
                id: backspace
                inputPanelRef: inputPanel
                leftKey: _0_
                rightKey: _at_
            }
        }
        RowLayout {
            property real keyWeight: 160
            Key {
                id: blank1
                weight: 56
                functionKey: true
                showPreview: false
                btnBackground: "transparent"
                leftKey: backspace
                rightKey: _at_
            }
            Key {
                id: _at_
                btnKey: Qt.Key_At
                btnText: "@"
                inputPanelRef: inputPanel
                leftKey: blank1
                rightKey: _hash_
            }
            Key {
                id: _hash_
                btnKey: Qt.Key_NumberSign
                btnText: "#"
                inputPanelRef: inputPanel
                leftKey: _at_
                rightKey: _percent_
            }
            Key {
                id: _percent_
                btnKey: Qt.Key_Percent
                btnText: "%"
                inputPanelRef: inputPanel
                leftKey: _hash_
                rightKey: _ampersand_
            }
            Key {
                id: _ampersand_
                btnKey: Qt.Key_Ampersand
                btnText: "&"
                inputPanelRef: inputPanel
                leftKey: _percent_
                rightKey: _asterisk_
            }
            Key {
                id: _asterisk_
                btnKey: Qt.Key_Asterisk
                btnText: "*"
                inputPanelRef: inputPanel
                leftKey: _ampersand_
                rightKey: _minus_
            }
            Key {
                id: _minus_
                btnKey: Qt.Key_Minus
                btnText: "-"
                inputPanelRef: inputPanel
                leftKey: _asterisk_
                rightKey: _plus_
            }
            Key {
                id: _plus_
                btnKey: Qt.Key_Plus
                btnText: "+"
                inputPanelRef: inputPanel
                leftKey: _minus_
                rightKey: _parenLeft_
            }
            Key {
                id: _parenLeft_
                btnKey: Qt.Key_ParenLeft
                btnText: "("
                inputPanelRef: inputPanel
                leftKey: _plus_
                rightKey: _parenRight_
            }
            Key {
                id: _parenRight_
                btnKey: Qt.Key_ParenRight
                btnText: ")"
                inputPanelRef: inputPanel
                leftKey: _parenLeft_
                rightKey: enterKey
            }
            HideKey {
                id: enterKey
                weight: 283
                inputPanelRef: inputPanel
                btnDisplayedText: "ENTER"
                leftKey: _parenRight_
                rightKey: pageToggle1
            }
        }
        RowLayout {
            property real keyWeight: 156
            Key {
                id: pageToggle1
                weight: 204
                btnDisplayedText: "1/2"
                showPreview: false
                functionKey: true
                onClicked: secondPage = !secondPage
                leftKey: enterKey
                rightKey: exclam
            }
            Key {
                id: exclam
                btnKey: Qt.Key_Exclam
                btnText: "!"
                inputPanelRef: inputPanel
                leftKey: pageToggle1
                rightKey: quoteDbl
            }
            Key {
                id: quoteDbl
                btnKey: Qt.Key_QuoteDbl
                btnText: '"'
                inputPanelRef: inputPanel
                leftKey: exclam
                rightKey: less
            }
            Key {
                id: less
                btnKey: Qt.Key_Less
                btnText: "<"
                inputPanelRef: inputPanel
                leftKey: quoteDbl
                rightKey: greater
            }
            Key {
                id: greater
                btnKey: Qt.Key_Greater
                btnText: ">"
                inputPanelRef: inputPanel
                leftKey: less
                rightKey: apostrophe
            }
            Key {
                id: apostrophe
                btnKey: Qt.Key_Apostrophe
                btnText: "'"
                inputPanelRef: inputPanel
                leftKey: greater
                rightKey: colon
            }
            Key {
                id: colon
                btnKey: Qt.Key_Colon
                btnText: ":"
                inputPanelRef: inputPanel
                leftKey: apostrophe
                rightKey: semicolon
            }
            Key {
                id: semicolon
                btnKey: Qt.Key_Semicolon
                btnText: ";"
                inputPanelRef: inputPanel
                leftKey: colon
                rightKey: slash
            }
            Key {
                id: slash
                btnKey: Qt.Key_Slash
                btnText: "/"
                inputPanelRef: inputPanel
                leftKey: semicolon
                rightKey: question
            }
            Key {
                id: question
                btnKey: Qt.Key_Question
                btnText: "?"
                inputPanelRef: inputPanel
                leftKey: slash
                rightKey: pageToggle2
            }
            Key {
                id: pageToggle2
                weight: 204
                btnDisplayedText: "1/2"
                showPreview: false
                functionKey: true
                onClicked: secondPage = !secondPage
                leftKey: question
                rightKey: symbolKey
            }
        }
        RowLayout {
            property real keyWeight: 154
            SymbolKey {
                id: symbolKey
                weight: 217
                leftKey: pageToggle2
                rightKey: spaceKey
            }
            SpaceKey {
                id: spaceKey
                weight: 1168
                inputPanelRef: inputPanel
                leftKey: symbolKey
                rightKey: dot
            }
            Key {
                id: dot
                btnKey: Qt.Key_Period
                btnText: "."
                inputPanelRef: inputPanel
                leftKey: spaceKey
                rightKey: hideKey
            }
            HideKey {
                id: hideKey
                weight: 205
                leftKey: dot
                rightKey: _1_
            }
        }
    }

    ColumnLayout {
        id: page2
        anchors.fill: parent
        visible: secondPage

        RowLayout {
            property real keyWeight: 160
            Key {
                id: tilde
                btnKey: Qt.Key_AsciiTilde
                btnText: "~"
                inputPanelRef: inputPanel
                leftKey: hideKey2
                rightKey: grave
            }
            Key {
                id: grave
                btnKey: Qt.Key_Agrave
                btnText: "`"
                inputPanelRef: inputPanel
                leftKey: tilde
                rightKey: bar
            }
            Key {
                id: bar
                btnKey: Qt.Key_Bar
                btnText: "|"
                inputPanelRef: inputPanel
                leftKey: grave
                rightKey: periodcentered
            }
            Key {
                id: periodcentered
                btnKey: Qt.Key_periodcentered
                btnText: "·"
                inputPanelRef: inputPanel
                leftKey: bar
                rightKey: sqrt
            }
            Key {
                id: sqrt
                btnKey: 0x221A
                btnText: "√"
                inputPanelRef: inputPanel
                leftKey: periodcentered
                rightKey: division
            }
            Key {
                id: division
                btnKey: Qt.Key_division
                btnText: "÷"
                inputPanelRef: inputPanel
                leftKey: sqrt
                rightKey: multiply
            }
            Key {
                id: multiply
                btnKey: Qt.Key_multiply
                btnText: "×"
                inputPanelRef: inputPanel
                leftKey: division
                rightKey: half
            }
            Key {
                id: half
                btnKey: Qt.Key_onehalf
                btnText: "½"
                alternativeKeys: "¼⅓¾⅞"
                inputPanelRef: inputPanel
                leftKey: multiply
                rightKey: braceLeft
            }
            Key {
                id: braceLeft
                btnKey: Qt.Key_BraceLeft
                btnText: "{"
                inputPanelRef: inputPanel
                leftKey: half
                rightKey: braceRight
            }
            Key {
                id: braceRight
                btnKey: Qt.Key_BraceRight
                btnText: "}"
                inputPanelRef: inputPanel
                leftKey: braceLeft
                rightKey: backspace2
            }
            BackspaceKey {
                id: backspace2
                inputPanelRef: inputPanel
                leftKey: braceRight
                rightKey: dollar
            }
        }
        RowLayout {
            property real keyWeight: 160
            Key {
                id: blank2
                weight: 56
                functionKey: true
                showPreview: false
                btnBackground: "transparent"
                leftKey: backspace2
                rightKey: dollar
            }
            Key {
                id: dollar
                btnKey: Qt.Key_Dollar
                btnText: "$"
                inputPanelRef: inputPanel
                leftKey: blank2
                rightKey: euro
            }
            Key {
                id: euro
                btnKey: 0x20AC
                btnText: "€"
                inputPanelRef: inputPanel
                leftKey: dollar
                rightKey: pound
            }
            Key {
                id: pound
                btnKey: 0xC2
                btnText: "£"
                inputPanelRef: inputPanel
                leftKey: euro
                rightKey: cent
            }
            Key {
                id: cent
                btnKey: 0xA2
                btnText: "¢"
                inputPanelRef: inputPanel
                leftKey: pound
                rightKey: yen
            }
            Key {
                id: yen
                btnKey: 0xA5
                btnText: "¥"
                inputPanelRef: inputPanel
                leftKey: cent
                rightKey: equal
            }
            Key {
                id: equal
                btnKey: Qt.Key_Equal
                btnText: "="
                inputPanelRef: inputPanel
                leftKey: yen
                rightKey: section
            }
            Key {
                id: section
                btnKey: Qt.Key_section
                btnText: "§"
                inputPanelRef: inputPanel
                leftKey: equal
                rightKey: bracketLeft
            }
            Key {
                id: bracketLeft
                btnKey: Qt.Key_BracketLeft
                btnText: "["
                inputPanelRef: inputPanel
                leftKey: section
                rightKey: bracketRight
            }
            Key {
                id: bracketRight
                btnKey: Qt.Key_BracketRight
                btnText: "]"
                inputPanelRef: inputPanel
                leftKey: bracketLeft
                rightKey: enterKey2
            }
            HideKey {
                id: enterKey2
                weight: 283
                inputPanelRef: inputPanel
                btnDisplayedText: "ENTER"
                leftKey: bracketRight
                rightKey: pageToggle2_2
            }
        }
        RowLayout {
            property real keyWeight: 156
            Key {
                id: pageToggle2_2
                weight: 204
                btnDisplayedText: "2/2"
                showPreview: false
                functionKey: true
                onClicked: secondPage = !secondPage
                leftKey: enterKey2
                rightKey: underscore
            }
            Key {
                id: underscore
                btnKey: Qt.Key_Underscore
                btnText: "_"
                inputPanelRef: inputPanel
                leftKey: pageToggle2_2
                rightKey: tm
            }
            Key {
                id: tm
                btnKey: 0x2122
                btnText: '™'
                inputPanelRef: inputPanel
                leftKey: underscore
                rightKey: registered
            }
            Key {
                id: registered
                btnKey: 0x00AE
                btnText: '®'
                inputPanelRef: inputPanel
                leftKey: tm
                rightKey: guillemotLeft
            }
            Key {
                id: guillemotLeft
                btnKey: Qt.Key_guillemotleft
                btnText: '«'
                inputPanelRef: inputPanel
                leftKey: registered
                rightKey: guillemotRight
            }
            Key {
                id: guillemotRight
                btnKey: Qt.Key_guillemotright
                btnText: '»'
                inputPanelRef: inputPanel
                leftKey: guillemotLeft
                rightKey: quoteLeft
            }
            Key {
                id: quoteLeft
                btnKey: 0x201C
                btnText: '“'
                inputPanelRef: inputPanel
                leftKey: guillemotRight
                rightKey: quoteRight
            }
            Key {
                id: quoteRight
                btnKey: 0x201D
                btnText: '”'
                inputPanelRef: inputPanel
                leftKey: quoteLeft
                rightKey: backslash
            }
            Key {
                id: backslash
                btnKey: Qt.Key_Backslash
                btnText: "\\"
                inputPanelRef: inputPanel
                leftKey: quoteRight
                rightKey: circum
            }
            Key {
                id: circum
                btnKey: Qt.Key_AsciiCircum
                btnText: "^"
                inputPanelRef: inputPanel
                leftKey: backslash
                rightKey: pageToggle2_3
            }
            Key {
                id: pageToggle2_3
                weight: 204
                btnDisplayedText: "2/2"
                showPreview: false
                functionKey: true
                onClicked: secondPage = !secondPage
                leftKey: circum
                rightKey: symbolKey2
            }
        }
        RowLayout {
            property real keyWeight: 154
            SymbolKey {
                id: symbolKey2
                weight: 217
                leftKey: pageToggle2_3
                rightKey: spaceKey2
            }
            SpaceKey {
                id: spaceKey2
                weight: 1168
                inputPanelRef: inputPanel
                leftKey: symbolKey2
                rightKey: dot2
            }
            Key {
                id: dot2
                btnKey: Qt.Key_Period
                btnText: "."
                inputPanelRef: inputPanel
                leftKey: spaceKey2
                rightKey: hideKey2
            }
            HideKey {
                id: hideKey2
                weight: 205
                leftKey: dot2
                rightKey: tilde
            }
        }
    }
}
