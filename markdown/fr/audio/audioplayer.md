# audioplayer

Objet lecteur audio.

## Syntaxe

- playerObj = audioplayer(y, fs)
- playerObj = audioplayer(y, fs, nbits)
- playerObj = audioplayer(y, fs, nbits, id)

## Argument d'entrée

- y - un vecteur ou matrice : int8, uint8, int16, single ou double.
- fs - une valeur double : taux d'échantillonnage en Hz.
- nbits - une valeur double : bits par échantillon (16 par défaut).
- id - une valeur double : identifiant du périphérique (-1 par défaut).

## Argument de sortie

- playerObj - objet audioplayer

## Description

<p>
            audioplayer retourne un objet audioplayer pour jouer des données sur un périphérique de sortie.</p>

<p>L'objet audioplayer utilise une portée globale et doit être supprimé par l'utilisateur.</p>

<p>
                audioplayer peut jouer des données multi-canaux si votre carte son le supporte.</p>

## Exemple

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
sleep(2)
delete(playObj)
playObj
```

## Voir aussi

[delete](../handle/delete.md), [play](../audio/play.md), [stop](../audio/stop.md), [resume](../audio/resume.md), [pause](../audio/pause.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
