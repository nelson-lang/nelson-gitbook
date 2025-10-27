# resume

Reprend un objet audioplayer.

## 📝 Syntaxe

- resume(playObj)

## 📥 Argument d'entrée

- playObj - un objet audioplayer.

## 📄 Description

<b>resume</b> reprend un objet audioplayer.

## 💡 Exemple

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
pause(playObj)
stop(playObj)
resume(playObj)
playObj
```

## 🔗 Voir aussi

[audioplayer_pause](../audio/audioplayer_pause.md), [play](../audio/play.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
