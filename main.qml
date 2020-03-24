import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Controls 2.4
import QtMultimedia 5.9


Window {
    id: win
    visible: true
//    width: 800
//    height: 480


    Item {                       //rotation Screen
        id: main_screen
        rotation: 270
       width: parent.height
       height: parent.width
       x: (parent.width - parent.height) / 2
       y: -(parent.width - parent.height) / 2

    Audio{
        id: player
        playlist: Playlist {
            id: playlist
            PlaylistItem { source: "http://air.radioulitka.ru:8000/ulitka_128"; }
            PlaylistItem { source: "http://ic7.101.ru:8000/v13_1"; }
        }
        //source: "http://air.radioulitka.ru:8000/ulitka_128"
        autoLoad : true
       // autoPlay: true

    }

    BorderImage {
        id: borderImage
        width: 480
        height: 800
        rotation: 0
        anchors.fill: parent
        source: "album-cover.jpg"
    }

    Button {
        id: button1
        text: "Play/Stop"
        display: AbstractButton.TextOnly
        font.capitalization: Font.AllLowercase
        font.wordSpacing: -0.5
        font.pointSize: 10
        font.letterSpacing: 0.2
        font.family: "Tahoma"
        //  rotation: 0
        anchors.centerIn: parent
        onClicked: {
           if (player.playbackState===1)
               player.stop()
           else
               player.play()
        }
    }

}
}











/*##^## Designer {
    D{i:2;anchors_height:100;anchors_width:100;anchors_x:939;anchors_y:"-149"}
}
 ##^##*/
