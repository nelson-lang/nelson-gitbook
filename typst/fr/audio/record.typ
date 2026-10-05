#import "nelson_help.typ": *

= record <audio:record>

Enregistrer de l'audio dans un objet audiorecorder.

== Syntaxe

- #raw("record(recorderObj)");
- #raw("record(recorderObj, length)");

== Argument d'entrée

/ recorderObj: objet audiorecorder : objet enregistreur audio créé par #strong[audiorecorder];.
/ length: double : durée de l'enregistrement en secondes.

== Description

#strong[record(recorderObj)]; démarre l'enregistrement audio à partir d'un périphérique d'entrée en utilisant l'objet #strong[audiorecorder]; spécifié.

 #strong[record(recorderObj, length)]; enregistre l'audio pendant le nombre de secondes spécifié.

 L'objet #strong[audiorecorder]; définit la fréquence d'échantillonnage, la profondeur en bits et d'autres propriétés de l'enregistrement.


== Exemple

Enregistrer 5 secondes de votre voix avec un microphone

``````matlab

myVoice = audiorecorder;
myVoice.StartFcn = 'disp(''Start speaking.'')';
myVoice.StopFcn = 'disp(''End of recording.'')';
record(myVoice, 5);
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
