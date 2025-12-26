# audiorecorder_delete

Supprime un objet audiorecorder.

## 📝 Syntaxe

- audiorecorder_delete(h)
- delete(h)

## 📥 Argument d'entrée

- h - un handle : un objet audiorecorder.

## 📄 Description

<b>delete(h)</b> libère l'objet audiorecorder.

N'oubliez pas de libérer ensuite h.

## 💡 Exemple

```matlab
audiorecorder_used(),delete(audiorecorder_used())
```

## 🔗 Voir aussi

[audiorecorder](../audio/audiorecorder.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.16.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
