# audiorecorder_fieldnames

Retourne les noms des propriétés d'un objet audiorecorder.

## 📝 Syntaxe

- l = audiorecorder_fieldnames(h)
- l = fieldnames(h)

## 📥 Argument d'entrée

- h - un objet audiorecorder.

## 📤 Argument de sortie

- l - une cellule de chaînes de caractères.

## 📄 Description

<b>fieldnames</b> retourne une cellule de chaînes de caractères avec les noms des propriétés.

## 💡 Exemple

```matlab
recObj = audiorecorder()
fieldnames(recObj)
delete(recObj)
clear recObj
```

## 🔗 Voir aussi

[audiorecorder_set](../audio/audiorecorder_set.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.16.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
