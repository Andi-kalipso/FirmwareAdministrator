import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.VirtualKeyboard 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import User 1.0


Page{
    id: simpleUserPage
    Rectangle{
        id: backer
        anchors.fill: parent
        color: "#5da365"

        Button{
            id: autorize
            text: "Выйти из пользователя"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30
            anchors.rightMargin: 30
            anchors.right: parent.right
            onClicked:{
                User.isAutorize = false
                User.isSimpleUser = false
                User.isProgrammer = false
            }
        }
    }
}
