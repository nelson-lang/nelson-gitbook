# audiorecorder_set

Définit la propriété d'un objet ou d'une interface à la valeur spécifiée.

## 📝 Syntaxe

- set(h, propertyname, value)
- audiorecorder_set(h, propertyname, value)
- h.propertyname = value

## 📥 Argument d'entrée

- h - un objet audiorecorder.
- propertyname - une chaîne de caractères : le nom de la propriété de l'objet audiorecorder.
- value - une chaîne de caractères, un booléen, un double ...

## 📄 Description

La fonction définit la propriété spécifiée dans la chaîne propertyname à la valeur donnée.

## 💡 Exemple

```matlab
recObj = audiorecorder()
recObj.Tag = 'my audio object'
```

## 🔗 Voir aussi

[audiorecorder_get](../audio/audiorecorder_get.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.16.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
