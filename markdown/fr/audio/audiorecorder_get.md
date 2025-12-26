# audiorecorder_get

Obtenir la valeur d'une propriété depuis l'interface audiorecorder.

## 📝 Syntaxe

- v = get(h, propertyname)
- v = audiorecorder_get(h, propertyname)
- v = h.propertyname

## 📥 Argument d'entrée

- h - un objet audiorecorder.
- propertyname - une chaîne de caractères : le nom de la propriété de l'objet audiorecorder.

## 📤 Argument de sortie

- v - une variable nelson.

## 📄 Description

La fonction retourne la valeur de la propriété spécifiée dans la chaîne propertyname.

## 💡 Exemple

```matlab
recObj = audiorecorder()
recObj.Running

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
