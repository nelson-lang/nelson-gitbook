#import "nelson_help.typ": *

= getaudiodata <audio:getaudiodata>

Stocker le signal audio enregistré dans un tableau numérique.

== Syntaxe

- #raw("y = getaudiodata(recorder)");
- #raw("y = getaudiodata(recorder, dataType)");

== Argument d'entrée

/ recorder: objet audiorecorder : objet enregistreur audio créé par #strong[audiorecorder];.
/ dataType: chaîne de caractères ou vecteur de caractères : type de données du signal audio de sortie. Valeurs valides : 'double' (par défaut), 'single', 'int16', 'int8', 'uint8'.

== Argument de sortie

/ y: tableau numérique : données du signal audio. Le nombre de colonnes dépend du nombre de canaux.

== Description

#strong[getaudiodata]; renvoie les données audio enregistrées à partir d'un objet #strong[audiorecorder]; sous forme de tableau numérique.

 #strong[y \= getaudiodata(recorder)]; renvoie les données audio sous forme de tableau double.

 #strong[y \= getaudiodata(recorder, dataType)]; renvoie les données audio converties au type de données spécifié.

 Le nombre de colonnes dans #strong[y]; correspond au nombre de canaux dans l'enregistrement (1 pour mono, 2 pour stéréo).

 La plage de valeurs de #strong[y]; dépend de #strong[dataType]; :

 

#table(
  columns: 2,
  [Type de données], [Plage de valeurs d'échantillons], 
  [int8], [-128 à 127], 
  [uint8], [0 à 255], 
  [int16], [-32 768 à 32 767], 
  [single ou double], [-1 à 1], 
)

== Exemples

Obtenir des données à partir d'un objet enregistreur audio

``````matlab

recObj = audiorecorder;
disp('Start speaking.')
recordblocking(recObj, 5);
disp('End of Recording.');
doubleArray = getaudiodata(recObj);
plot(doubleArray);
title('Audio Signal (double)');
      
``````

Obtenir l'audio sous forme de tableau int8

``````matlab

recObj = audiorecorder;
recordblocking(recObj, 2);
int8Array = getaudiodata(recObj, 'int8');
plot(int8Array);
title('Audio Signal (int8)');
      
``````


== Voir aussi

#nlink(<audio:audiorecorder>)[audiorecorder];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
