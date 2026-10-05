# soundsc

Met à l'échelle les données et joue comme son.

## 📝 Syntaxe

- soundsc(y)
- soundsc(y, Fs)
- soundsc(y, Fs, nBits)
- soundsc(y, Fs, nBits, yRange)

## 📥 Argument d'entrée

- y - vecteur colonne ou matrice m-par-2.
- Fs - fréquence d'échantillonnage, un nombre positif, 8192 par défaut.
- nBits - profondeur de bits des valeurs d'échantillon : 8, 16 (par défaut), 24.
- yRange - plage des données audio à mettre à l'échelle : vecteur à deux éléments ou [-max(abs(y)),max(abs(y))] par défaut.

## 📄 Description


<b>soundsc</b> met à l'échelle les valeurs du signal audio <b>y </b> pour s'adapter à la plage de <b>–1.0</b> à<b>1.0</b> et joue comme son.

## 💡 Exemple



```matlab
signal = rand(2, 44100) - 0.5;
soundsc(signal, 44110, 16)

```


## 🔗 Voir aussi

[audioplayer](../audio/audioplayer.md), [playblocking](../audio/playblocking.md), [sound](../audio/sound.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
