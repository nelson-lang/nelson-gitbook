# playblocking

Lit un objet audioplayer de manière bloquante.

## 📝 Syntaxe

- playblocking(playObj)
- playblocking(playObj, start)
- playblocking(playObj, [start end])

## 📥 Argument d'entrée

- playObj - un objet audioplayer.
- start - une valeur entière : premier échantillon à lire.
- end - une valeur entière : dernier échantillon à lire.

## 📄 Description

<b>playblocking</b> lit un objet audioplayer jusqu'à ce que la lecture soit terminée.

## 💡 Exemple

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
playblocking(playObj)
delete(playObj)
playObj
```

## 🔗 Voir aussi

[audioplayer](../audio/audioplayer.md), [play](../audio/play.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
