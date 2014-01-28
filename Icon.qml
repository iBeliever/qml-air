/*
 * QML Air - A lightweight and mostly flat UI widget collection for QML
 * Copyright (C) 2014 Michael Spencer
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
import QtQuick 2.0

Widget {
    id: widget
    property string name

    property alias color: text.color
    property var size

    color: "transparent"

    width: text.width
    height: text.height

    mouseEnabled: false
    property bool shadow: false

    property var icons: {
        "check-circle": "",
        "check-square-o": "",
        "save": "",
        "square-o": "",
        "times": "",
        "plus": "",
        "bell-o": "",
        "bell": "",
        "chevron-left": "",
        "chevron-right": "",
        "cog": "",
        "minus": "",
        "dashboard": "",
        "calendar-empty": "",
        "calendar": "",
        "bars":"",
        "inbox": "",
        "list": "",
        "long-list": "",
        "comment": "",
        "download": "",
        "tasks": "",
        "bug": "",
        "code-fork": "",
        "clock-o": "",
        "pencil-square-o":"",
        "check-square-o":"",
        "picture-o":"",
        "trash": "",
        "code": "",
        "users": "",
        "exchange": ""
    }

    property alias weight: text.font.weight

    FontLoader { id: fontAwesome; source: Qt.resolvedUrl("FontAwesome.otf") }

    Text {
        id: text
        anchors.centerIn: parent

        font.family: fontAwesome.name
        font.weight: Font.Light
        text: widget.icons.hasOwnProperty(widget.name) ? widget.icons[widget.name] : ""
        color: widget.enabled ? styleObject.color : styleObject.color_disabled
        style: shadow ? Text.Raised : Text.Normal
        styleColor: Qt.rgba(0,0,0,0.9)
        font.pixelSize: units.fontSize(widget.size)

        Behavior on color {
            ColorAnimation { duration: 200 }
        }
    }
}
