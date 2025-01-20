import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 300
    title: "Transitions"

    Rectangle {
        id:firstRectangle
        width: 100
        height: 100
        color:"blue"
        radius: 10
        border.color: "red"
        border.width: 10
        anchors.centerIn: parent



        states: [
            State {
                name:"genisletilmis"
                PropertyChanges {
                    target:firstRectangle
                    width: 300
                    height: 300
                    radius: 30

                    color:"green"
                    border.color: "black"
                    border.width: 30
                }
            }

        ]
        transitions : [
            Transition {
                NumberAnimation { properties: "width,height,radius,border.width" ; duration: 1000 }
                ColorAnimation { properties: "color,border.color" ; duration: 1000 }
            }

        ]
        MouseArea {
            anchors.fill: parent
            onClicked: {
                firstRectangle.state = firstRectangle.state === "genisletilmis" ? " " : "genisletilmis"
            }
        }

    }


}
