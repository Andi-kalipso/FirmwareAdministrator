import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.VirtualKeyboard 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import User 1.0


Page{
    id: programmerPage
    Rectangle{
        id: backer
        anchors.fill: parent
        color: "#6e613f"

        Button{
            id: connectButton
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Подключиться"
        }

        Button{

        }




















        Button{
            id: autorize
            text: "Выйти из пользователя"
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.bottomMargin: 30
            anchors.rightMargin: 30
            onClicked:{
                User.isAutorize = false
                User.isSimpleUser = false
                User.isProgrammer = false
            }
        }
    }
}
