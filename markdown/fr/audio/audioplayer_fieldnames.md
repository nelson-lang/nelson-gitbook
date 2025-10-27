# audioplayer_fieldnames

Retourne les noms des propriétés d'un objet audioplayer.

## 📝 Syntaxe

- l = audioplayer_fieldnames(h)
- l = fieldnames(h)

## 📥 Argument d'entrée

- h - un objet audioplayer.

## 📤 Argument de sortie

- l - une cellule de chaînes.

## 📄 Description

<b>fieldnames</b> retourne une cellule de chaînes avec les noms des propriétés.

## 💡 Exemple

```matlab
signal = rand(2, 44100) - 0.5;
playObj = audioplayer(signal, 44100, 16)
fieldnames(playObj)
delete(playObj)
clear playObj
```

## 🔗 Voir aussi

[audioplayer_set](../audio/audioplayer_set.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
