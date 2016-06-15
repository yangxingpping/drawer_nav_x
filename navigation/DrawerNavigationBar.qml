// ekke (Ekkehard Gentz) @ekkescorner
import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtGraphicalEffects 1.0
import "../common"

Drawer {
    id: myBar
    z: 1
    leftPadding: 0
    property real activeOpacity: iconFolder == "black" ?  0.87 : 1.0
    property real inactiveOpacity: iconFolder == "black" ?  0.56 : 0.87 //  0.26 : 0.56
    width: Math.min(240,  Math.min(appWindow.width, appWindow.height) / 3 * 2 )
    height: appWindow.height
    ColumnLayout {
        id: myButtons
        focus: false
        anchors.left: parent.left
        anchors.right: parent.right
        spacing: 0
        Item {
            anchors.left: parent.left
            anchors.right: parent.right
            height: 120
            Rectangle {
                anchors.fill: parent
                color: primaryColor
            }
            Item {
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                height: 56
                Column {
                    anchors.verticalCenter: parent.verticalCenter
                    leftPadding: 16
                    rightPadding: 16
                    LabelBody {
                        text: "first Line"
                        font.weight: Font.Medium
                        color: textOnPrimary
                    }
                    LabelBody {
                        text: "second line"
                        color: textOnPrimary
                    }
                }
            }
        }
        Item {
            height: 16
        }

        Repeater {
            model: navigationModel
            DrawerNavigationButton {
                id: myButton
                Layout.fillWidth: true
            }
        } // repeater

        HorizontalDivider {
        }
        //
    } // ColumnLayout
    VerticalDivider{
        id: myBarDivider
        anchors.left: myButtons.right
    }
} // sideNavigationBar
