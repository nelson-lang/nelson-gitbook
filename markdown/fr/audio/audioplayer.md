# audioplayer

Objet audioplayer.

## 📝 Syntaxe

- playerObj = audioplayer(y, fs)
- playerObj = audioplayer(y, fs, nbits)
- playerObj = audioplayer(y, fs, nbits, id)

## 📥 Argument d'entrée

- y - un vecteur ou une matrice : int8,uint8, int16, single ou double.
- fs - une valeur double : fréquence d'échantillonnage en Hz.
- nbits - une valeur double : nombre de bits par échantillon (16 par défaut).
- id - une valeur double : identifiant du périphérique (-1 par défaut).

## 📤 Argument de sortie

- playerObj - audioplayer objet

## 📄 Description

<b>audioplayer</b> renvoie un objet audioplayer pour lire des données sur un périphérique de sortie.

L'objet audioplayer utilise une portée globale et doit être supprimé par l'utilisateur.

<b>audioplayer</b> peut lire des données multicanaux si votre carte son le supporte.

<b>Propriétés de audioplayer</b> :

| Propriété     | Type / Valeurs                              | Description                                                                                                       |
| ------------- | ------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| SampleRate    | scalaire positif                            | Taux d'échantillonnage en Hz. Défini via Fs lors de la création de l'objet ; ajustable par la suite.              |
| BitsPerSample | Lecture seule : 8, 16, 24                   | Bits par échantillon, déterminés par l'argument nBits.                                                            |
| NumChannels   | Lecture seule : 1, 2                        | Nombre de canaux mono (1) ou stéréo (2) rapporté par le lecteur.                                                  |
| DeviceID      | Lecture seule : entier                      | Identifiant du périphérique audio fourni via l'argument ID.                                                       |
| CurrentSample | Lecture seule : entier positif              | Échantillon actuellement en lecture ; lorsqu'il est inactif, le prochain échantillon que play/reprise utilisera.  |
| TotalSamples  | Lecture seule : entier non négatif          | Nombre total d'échantillons dans les données audio.                                                               |
| Running       | Lecture seule : 'off' ou 'on'               | État du lecteur audio.                                                                                            |
| StartFcn      | vecteur de caractères ou handle de fonction | Callback exécuté au début de la lecture ; les premiers arguments sont l'audioplayer et une structure d'événement. |
| StopFcn       | vecteur de caractères ou handle de fonction | Callback exécuté à la fin de la lecture ; les premiers arguments sont l'audioplayer et une structure d'événement. |
| TimerFcn      | vecteur de caractères ou handle de fonction | Callback exécuté périodiquement pendant la lecture ; l'intervalle est contrôlé par TimerPeriod.                   |
| TimerPeriod   | 0.05 (par défaut) ou scalaire positif       | Secondes entre les callbacks TimerFcn.                                                                            |
| Tag           | scalaire de chaîne ou vecteur de caractères | Étiquette pour l'objet audioplayer.                                                                               |
| UserData      | [] (par défaut) ou tout type de données     | Données arbitraires définies par l'utilisateur stockées avec l'objet.                                             |
| Type          | Lecture seule : 'audioplayer'               | Identifiant du nom de la classe pour l'objet.                                                                     |

## 💡 Exemples

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
sleep(2)
delete(playObj)
playObj
```

Exemple de callback

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16);
playObj.StartFcn = @(src, event) disp('Playback started');
playObj.StopFcn = @(src, event) disp('Playback stopped');
playObj
play(playObj)

```

## 🔗 Voir aussi

[delete](../handle/delete.md), [play](../audio/play.md), [stop](../audio/stop.md), [resume](../audio/resume.md), [pause](../audio/audioplayer_pause.md).

## 🕔 Historique

| Version | 📄 Description                               |
| ------- | -------------------------------------------- |
| 1.0.0   | version initiale                             |
| 1.16.0  | Callback StartFcn, StopFcn, TimerFcn ajoutés |

<!--
## 👤 Auteur

Allan CORNET
-->
