# soundsc

Met à l'échelle les données et joue comme son.

## Syntaxe

- soundsc(y)
- soundsc(y, Fs)
- soundsc(y, Fs, nBits)
- soundsc(y, Fs, nBits, yRange)

## Argument d'entrée

- y - vecteur colonne ou matrice m-par-2.
- Fs - fréquence d'échantillonnage, un nombre positif, 8192 par défaut.
- nBits - profondeur de bits des valeurs d'échantillon : 8, 16 (par défaut), 24.
- yRange - plage des données audio à mettre à l'échelle : | vecteur à deux éléments ou [-max(abs(y)),max(abs(y))] par défaut.

## Description

<p>
            soundsc met à l'échelle les valeurs du signal audio ypour s'adapter à la plage de –1.0 à 1.0 et joue comme son.
	</p>

## Exemple

```matlab
signal = rand(2, 44100) - 0.5;
soundsc(signal, 44110, 16)

```

## Voir aussi

[audioplayer](../audio/audioplayer.md), [playblocking](../audio/playblocking.md), [sound](../audio/sound.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
