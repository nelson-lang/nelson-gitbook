# stop

Arrête un objet audioplayer.

## Syntaxe

- stop(playObj)

## Argument d'entrée

- playObj - un objet audioplayer.

## Description

        stop arrête un objet audioplayer.

## Exemple

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
sleep(2)
stop(playObj)
delete(playObj)
playObj
```

## Voir aussi

[audioplayer](../audio/audioplayer.md), [play](../audio/play.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
