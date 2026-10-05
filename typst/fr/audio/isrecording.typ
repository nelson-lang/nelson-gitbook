#import "nelson_help.typ": *

= isrecording <audio:isrecording>

déterminer si l'enregistrement est en cours.

== Syntaxe

- #raw("isrecording(recorder)");

== Argument d'entrée

/ recorder: objet audiorecorder : objet enregistreur audio créé par #strong[audiorecorder];.

== Argument de sortie

/ tf: logique : 1 si l'enregistrement est en cours, 0 sinon.

== Description

#strong[isrecording(recorder)]; détermine si l'enregistrement est en cours pour l'objet #strong[audiorecorder]; spécifié.


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
pause(2);
stop(recObj)
playerObj = getplayer(recObj);
play(playerObj)
isplaying(playerObj)
      
``````


== Voir aussi

#nlink(<audio:audiorecorder>)[audiorecorder];, #nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:play>)[play];, #nlink(<audio:audiorecorder_pause>)[pause];, #nlink(<audio:resume>)[resume];, #nlink(<audio:stop>)[stop];, #nlink(<audio:isrecording>)[isrecording];, #nlink(<audio:isplaying>)[isplaying];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
