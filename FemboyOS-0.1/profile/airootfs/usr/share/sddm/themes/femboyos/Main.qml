import QtQuick
import QtQuick.Controls

Rectangle {
    id: root
    width: 1920
    height: 1080
    color: "#171327"

    Image {
        anchors.fill: parent
        source: "file:///usr/share/backgrounds/FemboyOS/femboyos-wallpaper.png"
        fillMode: Image.PreserveAspectCrop
        opacity: 0.92
    }

    Rectangle {
        anchors.centerIn: parent
        width: 420
        height: 250
        radius: 28
        color: "#171327"
        opacity: 0.94
        border.width: 2
        border.color: "#ff8ed8"
    }

    Column {
        anchors.centerIn: parent
        spacing: 14

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "FemboyOS"
            color: "#f8eaff"
            font.pixelSize: 42
            font.bold: true
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Linux for a softer world ♡"
            color: "#b9c7ff"
            font.pixelSize: 18
        }

        TextField {
            width: 280
            placeholderText: "Пароль"
            echoMode: TextInput.Password
        }

        Button {
            width: 280
            text: "Войти ♡"
        }
    }
}
