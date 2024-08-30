import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

import FreeVirtualKeyboard 1.0

Button {
    id: key

    property real weight: parent.keyWeight

    property string btnText: ""
    property string btnDisplayedText: text
    property int btnKey: Qt.Key_unknown

    property color btnBackground: InputPanel.btnBackgroundColor
    property int btnRadius: 5

    property color txtColor: InputPanel.btnTextColor
    property string txtFont: InputPanel.btnTextFontFamily

    property color btnBackgroundBackup
    property color txtColorBackup

    property string btnIcon: ""

    property var alternativeKeys: []

    property var inputPanelRef

    property alias repeatable: key.autoRepeat
    property bool showPreview: true

    property bool functionKey: false

    property var rightKey
    property var leftKey

    property bool encoderLongPressed: false

    Keys.onRightPressed: rightKey.forceActiveFocus()
    Keys.onLeftPressed: leftKey.forceActiveFocus()

    Component.onCompleted: {
        btnBackgroundBackup = btnBackground;
        txtColorBackup = txtColor;
    }


    onFocusChanged: {
        if (appCore.environmentManager.hasEncoder) {
            if (focus) {
                txtColor = "black"
                btnBackground = "white"
            } else {
                txtColor = txtColorBackup
                btnBackground = btnBackgroundBackup
            }
            encoderLongPressed = false;
        }
    }

    Layout.minimumWidth: key.implicitWidth
    Layout.minimumHeight: key.implicitHeight
    Layout.preferredWidth: weight
    Layout.fillWidth: true
    Layout.fillHeight: true

    background: Rectangle {
        id: btnBackgroundItem
        color: btnBackground
        radius: btnRadius
    }

    contentItem: Item {
        Text {
            id: btnTextItem
            text: btnDisplayedText == "" ? btnText : btnDisplayedText
            color: txtColor
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

            font {
                family: txtFont
                weight: Font.Normal
                pixelSize: key.height * 0.4
                capitalization: InputEngine.uppercase ? Font.AllUppercase : Font.MixedCase
            }
        }

        Image {
            id: btnIconItem
            source: btnIcon
            visible: btnDisplayedText === ""
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
        }
    }

    Timer {
        id: longPressTimer

        interval: 800
        repeat: false
        running: false

        onTriggered: {
            enabled = false
            inputPanelRef.hideKeyPopup()
            inputPanelRef.showAlternativesKeyPopup(key)
            enabled = true
        }
    }

    onPressed: {
        if (inputPanelRef !== null && showPreview) {
            inputPanelRef.showKeyPopup(key)
        }
    }

    onPressedChanged: {
        if (pressed) {
            opacity = 0.7
            if (alternativeKeys.length > 0) {
                longPressTimer.running = true
            }
        } else {
            opacity = 1
            longPressTimer.running = false
        }
    }

    onReleased: clickVirtualKey()

    Keys.onPressed: clickVirtualKey()

    Keys.onReleased: onClicked()

    // MEMO: Menu è l'evento scelto arbitrariamente per corrispondere al long press dell'encoder
    Keys.onMenuPressed: {
        if (!encoderLongPressed && alternativeKeys.length > 0) {
            inputPanelRef.showAlternativesKeyPopup(key)
        }
        encoderLongPressed = true;
    }

    function clickVirtualKey() {
        inputPanel.focusObj.forceActiveFocus()
        if (!functionKey) {
            InputEngine.virtualKeyClick(
                        btnKey, InputEngine.uppercase ? btnText.toUpperCase() : btnText,
                        InputEngine.uppercase ? Qt.ShiftModifier : 0)
        }
        forceActiveFocus()
    }
}
