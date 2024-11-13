import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 640
    height: 480

    Button {
        Text {
            id: buttonText
            text: qsTr("Button 1")
            anchors.centerIn: parent
            color: "white"
        }
        width: 120
        height: 40
        font.family: "Haas Grot Text R Web, Helvetica Neue, Helvetica, Arial, sans-serif"
        font.pixelSize: 14
        font.bold: true
        background: Rectangle {
            color: "#EA4C89"
            radius: 8
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Button clicked")
            }
            onReleased: {
                parent.background.color = "#EA4C89"
            }

            onPressed: {
                parent.background.color = "#F082AC"
            }
        }
        contentItem: Text {
            anchors.centerIn: parent
            color: "#FFFFFF"
            text: parent.text
        }
        onPressed: {
            parent.background.color = "#F082AC"
        }
    }
}
