import QtQuick
import QtQuick.Controls.Fusion
import "components"

Rectangle {
    id: lineEditor
    width: 300
    height: 375
    color: aog.backgroundColor
    border.width: 1
    border.color: aog.blackDayWhiteNight
    TopLine{
        id: topLine
        titleText: "Edit AB"
    }
    Row{
        anchors.top: topLine. bottom
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        id: lineNudge
        width: children.width
        spacing: 35
        height: children.height
        IconButtonTransparent{
            id: leftNudger
            icon.source: "/images/ArrowLeft.png"
        }
            SpinBoxDecimal{
            width: leftNudger.width
            height: 50
            anchors.verticalCenter: parent.verticalCenter
                text: qsTr("cm")
                from: 0
                value: 7.5
                to: 9999
            }

        IconButtonTransparent{
            icon.source: "/images/ArrowRight.png"
        }
    }
    Row{
        id: middleIcons
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: lineNudge.bottom
        anchors.topMargin: 35
        width: children.width
        spacing: 35
        height: children.height
        IconButtonTransparent{
            icon.source: "/images/ABSwapPoints.png"
        }
        IconButtonTransparent{
            icon.source: "/images/SnapToPivot.png"
        }

    }
    Row{
        id: bottomIcons
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: middleIcons.bottom
        anchors.topMargin: 35
        width: children.width
        spacing: 15
        height: children.height
        IconButtonText{
            icon.source: "/images/Cancel64.png"
            onClicked: lineEditor.visible = false
            color1: "transparent"
            color2: "transparent"
            color3: "transparent"
            text: "Cancel"
            width: 75
            height: 75
        }
        IconButtonText{
            icon.source: "/images/FileDontSave.png"
            color1: "transparent"
            color2: "transparent"
            color3: "transparent"
            text: "For Now"
            width: 75
            height: 75
            onClicked: lineEditor.visible = false
        }
        IconButtonText{
            icon.source: "/images/FileSave.png"
            color1: "transparent"
            color2: "transparent"
            color3: "transparent"
            text: "Save"
            width: 75
            height: 75
            onClicked: lineEditor.visible = false
        }
    }
}
