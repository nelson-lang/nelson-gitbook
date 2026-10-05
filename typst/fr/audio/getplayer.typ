#import "nelson_help.typ": *

= getplayer <audio:getplayer>

Créer un objet audioplayer associé.

== Syntaxe

- #raw("playerObject = getplayer(recorder)");

== Argument d'entrée

/ recorder: objet audiorecorder : objet enregistreur audio créé par #strong[audiorecorder];.

== Argument de sortie

/ playerObject: objet audioplayer associé à l'objet audiorecorder spécifié.

== Description

#strong[getplayer(recorder)]; crée l'objet #strong[audioplayer]; associé à l'objet #strong[audiorecorder]; spécifié.


== Exemple

Contrôler l'enregistrement et la lecture audio

``````matlab

recObj = audiorecorder;
record(recObj);
disp('Recording in progress now ...')
pause(recObj);
isrecording(recObj)
playerObj = getplayer(recObj);
play(playerObj);
isplaying(playerObj)
resume(recObj)
stop(recObj)
playerObj = getplayer(recObj);
play(playerObj)
      
``````


== Voir aussi

#nlink(<audio:audiorecorder>)[audiorecorder];, #nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:play>)[play];, #nlink(<audio:audioplayer_pause>)[pause];, #nlink(<audio:resume>)[resume];, #nlink(<audio:stop>)[stop];, #nlink(<audio:isrecording>)[isrecording];, #nlink(<audio:isplaying>)[isplaying];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
