# record

Enregistrer de l'audio dans un objet audiorecorder.

## 📝 Syntaxe

- record(recorderObj)
- record(recorderObj, length)

## 📥 Argument d'entrée

- recorderObj - objet audiorecorder : objet enregistreur audio créé par <b>audiorecorder</b>.
- length - double : durée de l'enregistrement en secondes.

## 📄 Description

<b>record(recorderObj)</b> démarre l'enregistrement audio à partir d'un périphérique d'entrée en utilisant l'objet <b>audiorecorder</b> spécifié.

<b>record(recorderObj, length)</b> enregistre l'audio pendant le nombre de secondes spécifié.

L'objet <b>audiorecorder</b> définit la fréquence d'échantillonnage, la profondeur en bits et d'autres propriétés de l'enregistrement.

## 💡 Exemple

Enregistrer 5 secondes de votre voix avec un microphone

```matlab

myVoice = audiorecorder;
myVoice.StartFcn = 'disp(''Start speaking.'')';
myVoice.StopFcn = 'disp(''End of recording.'')';
record(myVoice, 5);
play(myVoice);

```

## 🔗 Voir aussi

[audiorecorder](../audio/audiorecorder.md), [play](../audio/play.md), [recordblocking](../audio/recordblocking.md), [pause](../audio/audiorecorder_pause.md), [resume](../audio/resume.md), [stop](../audio/stop.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.16.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
