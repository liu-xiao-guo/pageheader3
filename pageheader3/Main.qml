import QtQuick 2.4
import Ubuntu.Components 1.3

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "pageheader3.liu-xiao-guo"

    width: units.gu(60)
    height: units.gu(85)

    Page {
        header: PageHeader {
            title: "Ubuntu header"
            flickable: listView
            trailingActionBar.actions: [
                Action {
                    iconName: "info"
                    text: "Information"
                }
            ]
        }
        ListView {
            id: listView
            anchors.fill: parent
            model: 20
            delegate: ListItem {
                Label {
                    anchors.centerIn: parent
                    text: "Item " + index
                }
            }
        }
    }

}

