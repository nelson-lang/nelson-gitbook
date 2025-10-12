# isplaying

obtenir des informations sur la lecture audio en cours.

## Syntaxe

- isplaying(playObj)

## Argument d'entrée

- play - un objet audioplayer.

## Argument de sortie

- play - un booléen.

## Description

        isplaying obtient des informations sur la lecture audio en cours.

## Exemple

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
isplaying(playObj)
pause(playObj)
isplaying(playObj)
delete(playObj)
playObj
```

## Voir aussi

[audioplayer](../audio/audioplayer.md), [playblocking](../audio/playblocking.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
