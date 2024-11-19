import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.3
import User 1.0

ApplicationWindow{
    id: root
    height: 700
    width: 1200
    visible: true
    Rectangle{
        id: backer
        height: parent.height
        width: parent.width
        color: "#bac5cc"
    }

    Item{
        id: rootItem
        anchors.fill: parent
        anchors.margins: 0
        states:[
            State{
                name: "Autorization"
                when: User.isAutorize === false                                                                 // | авто + | программер  - | пользователь  - |
                PropertyChanges {
                    target: contentLoader
                    source: "qrc:/authorization.qml"
                }
            },
            State{
                name: "Programmer"
                when: User.isProgrammer && User.isAutorize && !User.isSimpleUser                                // | авто + | программер  + | пользователь  - |
                PropertyChanges {
                    target: contentLoader
                    source: "qrc:/programmerPage.qml"
                }
            },
            State{
                name: "StandartUser"
                when: User.isSimpleUser && User.isAutorize && !User.isProgrammer                                // | авто + | программер  - | пользователь  + |
                PropertyChanges {
                    target: contentLoader
                    source: "qrc:/simpleUserPage.qml"
                }
            }
        ]

        Loader {
            id: contentLoader
            anchors.fill: parent
        }
    }





}


