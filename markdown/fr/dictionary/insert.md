# insert

Ajouter des entrées à un dictionnaire.

## 📝 Syntaxe

- db = insert(da, key, value)
- db = insert(da, key, value, 'Overwrite', tf)

## 📥 Argument d'entrée

- da - scalaire : un objet dictionnaire.
- key - scalaire ou tableau : clé
- value - scalaire ou tableau : valeur. la taille de key doit être compatible avec la taille de value.
- tf - true force l'écrasement, false n'écrase pas et ignore le changement

## 📤 Argument de sortie

- db - scalaire : un objet dictionnaire.

## 📄 Description

<b>db = insert(da, key, value)</b> ajoute la paire clé-valeur au dictionnaire <b>da</b>.

Si la clé existe déjà, sa valeur est mise à jour.

<b>d = insert(d, key, value)</b> équivaut à <b>d[key] = value</b>.

<b>db = insert(da, key, value, 'overwrite', tf)</b> spécifie si l'on doit écraser une valeur existante pour la clé en fonction du paramètre booléen Overwrite.

## 💡 Exemple

```matlab
names = ["Apple" "Banana" "Kiwi"];
wheels = [1 2 3];
d = dictionary(wheels, names)
d = insert(d, [2 4] ,["Orange" "Citra"], 'Overwrite', false)
```

## 🔗 Voir aussi

[dictionary](../dictionary/dictionary.md), [remove](../dictionary/remove.md), [lookup](../dictionary/lookup.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.5.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
