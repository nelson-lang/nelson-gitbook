# audioplayer_pause

Met en pause un objet audioplayer.

## Syntaxe

- pause(playObj)

## Argument d'entrée

- playObj - un objet audioplayer.

## Description

        pause met en pause un objet audioplayer.

## Exemple

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
sleep(2)
pause(playObj)
delete(playObj)
playObj
```

## Voir aussi

[audioplayer](../audio/audioplayer.md), [stop](../audio/stop.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
