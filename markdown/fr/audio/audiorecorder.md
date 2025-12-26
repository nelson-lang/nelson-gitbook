# audiorecorder

Objet pour enregistrer de l'audio.

## 📝 Syntaxe

- recorder = audiorecorder()
- recorder = audiorecorder(Fs, nBits, nChannels)
- recorder = audiorecorder(Fs, nBits, nChannels, ID)

## 📥 Argument d'entrée

- Fs - une valeur double : fréquence d'échantillonnage en Hz (par défaut : 8000).
- nBits - une valeur double : nombre de bits par échantillon (par défaut : 8 ; valides : 8, 16, 24).
- nChannels - une valeur double : nombre de canaux (par défaut : 1 ; valides : 1, 2).
- ID - une valeur double : identifiant du périphérique audio (par défaut : -1).

## 📤 Argument de sortie

- recorder - objet audiorecorder

## 📄 Description

<b>audiorecorder</b> crée un objet audiorecorder pour enregistrer de l'audio à partir d'un périphérique d'entrée tel qu'un microphone.

L'objet audiorecorder fournit des propriétés et des méthodes pour contrôler l'enregistrement audio, y compris la mise en pause, la reprise et la définition de rappels.

<b>Creation:</b>

- <b>recorder = audiorecorder()</b> crée un objet audiorecorder avec les propriétés par défaut : SampleRate = 8000, BitsPerSample = 8, NumChannels = 1.
- <b>recorder = audiorecorder(Fs, nBits, nChannels)</b> définit la fréquence d'échantillonnage, le nombre de bits par échantillon et le nombre de canaux.
- <b>recorder = audiorecorder(Fs, nBits, nChannels, ID)</b> définit le périphérique d'entrée audio à l'identifiant spécifié.

<b>Propriétés de audiorecorder :</b>

| Propriété     | Type / Valeurs                              | Description                                                                                           |
| ------------- | ------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| SampleRate    | scalaire positif (Lecture seule)            | Fréquence d'échantillonnage en Hz.                                                                    |
| BitsPerSample | Lecture seule : 8, 16, 24                   | Bits par échantillon.                                                                                 |
| NumChannels   | Lecture seule : 1, 2                        | Nombre de canaux audio.                                                                               |
| DeviceID      | entier (Lecture seule)                      | Identifiant du périphérique audio.                                                                    |
| CurrentSample | entier positif (Lecture seule)              | Échantillon actuellement enregistré.                                                                  |
| TotalSamples  | entier non négatif (Lecture seule)          | Longueur totale des données audio.                                                                    |
| Running       | Lecture seule : 'off' (par défaut) ou 'on'  | État de l'enregistreur audio.                                                                         |
| StartFcn      | vecteur de caractères ou handle de fonction | Callback exécuté au début de l'enregistrement.                                                        |
| StopFcn       | vecteur de caractères ou handle de fonction | Callback exécuté à la fin de l'enregistrement.                                                        |
| TimerFcn      | vecteur de caractères ou handle de fonction | Callback exécuté périodiquement pendant l'enregistrement ; l'intervalle est contrôlé par TimerPeriod. |
| TimerPeriod   | 0.05 (par défaut) ou scalaire positif       | Secondes entre les callbacks TimerFcn.                                                                |
| Tag           | scalaire de chaîne ou vecteur de caractères | Étiquette pour l'objet audiorecorder.                                                                 |
| UserData      | [] (par défaut) ou tout type de données     | Données arbitraires définies par l'utilisateur stockées avec l'objet.                                 |
| Type          | 'audiorecorder' (Lecture seule)             | Identifiant du nom de la classe pour l'objet.                                                         |

<b>Fonctions de l'objet :</b>

- <b>getaudiodata</b> - Stocker le signal audio enregistré dans un tableau numérique
- <b>getplayer</b> - Créer un objet audioplayer associé
- <b>isrecording</b> - éterminer si l'enregistrement est en cours
- <b>pause</b> - Mettre en pause l'enregistrement
- <b>play</b> - Lire l'audio à partir de l'objet audiorecorder
- <b>record</b> - Enregistrer l'audio dans l'objet audiorecorder
- <b>recordblocking</b> - Enregistrer l'audio et bloquer jusqu'à la fin
- <b>resume</b> - Reprendre l'enregistrement à partir de l'état en pause
- <b>stop</b> - Arrêter l'enregistrement

## 💡 Exemples

Enregistrer l'audio à partir du périphérique d'entrée

```matlab

Fs = 44100;
nBits = 16;
nChannels = 2;
ID = -1; % périphérique d'entrée audio par défaut
recObj = audiorecorder(Fs, nBits, nChannels, ID);
disp("Begin speaking.")
recDuration = 5; % record for 5 seconds
recordblocking(recObj, recDuration);
disp("End of recording.")
play(recObj);

```

Exemple de callback

```matlab

recObj = audiorecorder(8000, 8, 1);
recObj.StartFcn = @(src, event) disp('Enregistrement commencé');
recObj.StopFcn = @(src, event) disp('Enregistrement arrêté');
recordblocking(recObj, 2);

```

## 🔗 Voir aussi

[audioplayer](../audio/audioplayer.md), [getaudiodata](../audio/getaudiodata.md), [record](../audio/record.md), [recordblocking](../audio/recordblocking.md), [pause](../audio/pause.md), [resume](../audio/resume.md), [stop](../audio/stop.md), [getplayer](../audio/getplayer.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.16.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
