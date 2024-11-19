import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.VirtualKeyboard 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import User 1.0


Page{
    id: authorizationPage
    Rectangle{
        id: backer
        anchors.fill: parent
        color: "#bac5cc"


        Column{
            id: listing
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 200

            TextField{
                id: login
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.topMargin: 10
                anchors.top: listing.top
            }

            TextField{
                id: password
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.topMargin: 10
                anchors.top: login.bottom
            }

            RowLayout{
                id: checkGroup
                anchors.top: password.bottom
                anchors.horizontalCenter: parent.horizontalCenter

                Label{
                    id: programmerText
                    text: "Программист"
                    font.bold: true
                    font.pixelSize: 16
                }

                CheckBox{
                    id: programmer
                    checked: false
                    onCheckedChanged: {
                        User.isProgrammer = !User.isProgrammer
                        simpleUser.checkable = !simpleUser.checkable
                    }
                }

                CheckBox{
                    id: simpleUser
                    checked: false
                    onCheckedChanged: {
                        User.isSimpleUser = !User.isSimpleUser
                        programmer.checkable = !programmer.checkable
                    }
                }

                Label{
                    id: simpleUserText
                    text: "Пользователь"
                    font.bold: true
                    font.pixelSize: 16
                }
            }
        }


        Button{
            id: autorize
            text: "Авторизироваться"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.verticalCenter
            anchors.topMargin:  15
            onClicked:{
                if(User.isSimpleUser || User.isProgrammer)
                    User.isAutorize = true
                else
                    return
            }
        }
    }
}
