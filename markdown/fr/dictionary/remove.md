# remove

Supprimer des entrées du dictionnaire.

## 📝 Syntaxe

- db = remove(da, key)

## 📥 Argument d'entrée

- da - scalaire : un objet dictionnaire.
- key - scalaire ou tableau : clé

## 📤 Argument de sortie

- db - scalaire : un objet dictionnaire.

## 📄 Description

<b>db = remove(da, key)</b> supprime l'entrée associée à la clé du dictionnaire da.

<b>d = remove(d, key)</b> équivaut à <b>d[key] = []</b>.

## 💡 Exemple

```matlab
names = ["Apple" "Banana" "Kiwi"];
wheels = [1 2 3];
d = dictionary(wheels, names)
d = remove(d, 2)

```

## 🔗 Voir aussi

[dictionary](../dictionary/dictionary.md), [insert](../dictionary/insert.md), [lookup](../dictionary/lookup.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.5.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
