# play

Lit un objet audioplayer.

## 📝 Syntaxe

- play(playObj)
- play(playObj, start)
- play(playObj, [start end])

## 📥 Argument d'entrée

- playObj - un objet audioplayer.
- start - une valeur entière : premier échantillon à lire.
- end - une valeur entière : dernier échantillon à lire.

## 📄 Description

<b>play</b> lit un objet audioplayer.

## 💡 Exemple

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
play(playObj)
sleep(2)
delete(playObj)
playObj
```

## 🔗 Voir aussi

[audioplayer](../audio/audioplayer.md), [playblocking](../audio/playblocking.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
