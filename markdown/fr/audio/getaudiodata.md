# getaudiodata

Stocker le signal audio enregistré dans un tableau numérique.

## 📝 Syntaxe

- y = getaudiodata(recorder)
- y = getaudiodata(recorder, dataType)

## 📥 Argument d'entrée

- recorder - objet audiorecorder : objet enregistreur audio créé par <b>audiorecorder</b>.
- dataType - chaîne de caractères ou vecteur de caractères : type de données du signal audio de sortie. Valeurs valides : 'double' (par défaut), 'single', 'int16', 'int8', 'uint8'.

## 📤 Argument de sortie

- y - tableau numérique : données du signal audio. Le nombre de colonnes dépend du nombre de canaux.

## 📄 Description

<b>getaudiodata</b> renvoie les données audio enregistrées à partir d'un objet <b>audiorecorder</b> sous forme de tableau numérique.

<b>y = getaudiodata(recorder)</b> renvoie les données audio sous forme de tableau double.

<b>y = getaudiodata(recorder, dataType)</b> renvoie les données audio converties au type de données spécifié.

Le nombre de colonnes dans <b>y</b> correspond au nombre de canaux dans l'enregistrement (1 pour mono, 2 pour stéréo).

La plage de valeurs de <b>y</b> dépend de <b>dataType</b> :

| Type de données  | Plage de valeurs d'échantillons |
| ---------------- | ------------------------------- |
| int8             | -128 à 127                      |
| uint8            | 0 à 255                         |
| int16            | -32 768 à 32 767                |
| single ou double | -1 à 1                          |

## 💡 Exemples

Obtenir des données à partir d'un objet enregistreur audio

```matlab

recObj = audiorecorder;
disp('Start speaking.')
recordblocking(recObj, 5);
disp('End of Recording.');
doubleArray = getaudiodata(recObj);
plot(doubleArray);
title('Audio Signal (double)');

```

Obtenir l'audio sous forme de tableau int8

```matlab

recObj = audiorecorder;
recordblocking(recObj, 2);
int8Array = getaudiodata(recObj, 'int8');
plot(int8Array);
title('Audio Signal (int8)');

```

## 🔗 Voir aussi

[audiorecorder](../audio/audiorecorder.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.16.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
