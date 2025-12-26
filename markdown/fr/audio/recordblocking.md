# recordblocking

Enregistrer de l'audio dans un objet audiorecorder ; bloquer le contrôle jusqu'à la fin de l'enregistrement.

## 📝 Syntaxe

- recordblocking(recorderObj, length)

## 📥 Argument d'entrée

- recorderObj - objet audiorecorder : objet enregistreur audio créé par <b>audiorecorder</b>.
- length - double : durée de l'enregistrement en secondes.

## 📄 Description

<b>recordblocking(recorderObj, length)</b> enregistre l'audio à partir d'un périphérique d'entrée pendant le nombre de secondes spécifié. Cette méthode ne rend pas le contrôle tant que l'enregistrement n'est pas terminé.

L'objet <b>audiorecorder</b> définit la fréquence d'échantillonnage, la profondeur en bits et d'autres propriétés de l'enregistrement.

## 💡 Exemple

Enregistrer 5 secondes de votre voix avec un microphone, et la lire

```matlab

myVoice = audiorecorder;
disp('Start speaking.');
recordblocking(myVoice, 5);
disp('End of recording. Playing back ...');
play(myVoice);

```

## 🔗 Voir aussi

[audiorecorder](../audio/audiorecorder.md), [play](../audio/play.md), [recordblocking](../audio/recordblocking.md), [pause](../audio/pause.md), [resume](../audio/resume.md), [stop](../audio/stop.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.16.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
