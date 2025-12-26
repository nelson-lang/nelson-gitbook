# isrecording

déterminer si l'enregistrement est en cours.

## 📝 Syntaxe

- isrecording(recorder)

## 📥 Argument d'entrée

- recorder - objet audiorecorder : objet enregistreur audio créé par <b>audiorecorder</b>.

## 📤 Argument de sortie

- tf - logique : 1 si l'enregistrement est en cours, 0 sinon.

## 📄 Description

<b>isrecording(recorder)</b> détermine si l'enregistrement est en cours pour l'objet <b>audiorecorder</b> spécifié.

## 💡 Exemple

Contrôler l'enregistrement et la lecture audio

```matlab

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

```

## 🔗 Voir aussi

[audiorecorder](../audio/audiorecorder.md), [audioplayer](../audio/audioplayer.md), [play](../audio/play.md), [pause](../audio/pause.md), [resume](../audio/resume.md), [stop](../audio/stop.md), [isrecording](../audio/isrecording.md), [isplaying](../audio/isplaying.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.16.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
