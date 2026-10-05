#import "nelson_help.typ": *

= recordblocking <audio:recordblocking>

Enregistrer de l'audio dans un objet audiorecorder ; bloquer le contrôle jusqu'à la fin de l'enregistrement.

== Syntaxe

- #raw("recordblocking(recorderObj, length)");

== Argument d'entrée

/ recorderObj: objet audiorecorder : objet enregistreur audio créé par #strong[audiorecorder];.
/ length: double : durée de l'enregistrement en secondes.

== Description

#strong[recordblocking(recorderObj, length)]; enregistre l'audio à partir d'un périphérique d'entrée pendant le nombre de secondes spécifié. Cette méthode ne rend pas le contrôle tant que l'enregistrement n'est pas terminé.

 L'objet #strong[audiorecorder]; définit la fréquence d'échantillonnage, la profondeur en bits et d'autres propriétés de l'enregistrement.


== Exemple

Enregistrer 5 secondes de votre voix avec un microphone, et la lire

``````matlab

myVoice = audiorecorder;
disp('Start speaking.');
recordblocking(myVoice, 5);
disp('End of recording. Playing back ...');
play(myVoice);
      
``````


== Voir aussi

#nlink(<audio:audiorecorder>)[audiorecorder];, #nlink(<audio:play>)[play];, #nlink(<audio:recordblocking>)[recordblocking];, #nlink(<audio:audiorecorder_pause>)[pause];, #nlink(<audio:resume>)[resume];, #nlink(<audio:stop>)[stop];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
