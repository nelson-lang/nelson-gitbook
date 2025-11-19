# keys

Clés du dictionnaire.

## 📝 Syntaxe

- k = keys(d)
- k = keys(d, 'cell')

## 📥 Argument d'entrée

- d - scalaire : objet dictionnaire.

## 📤 Argument de sortie

- k - clés.

## 📄 Description

<b>k = keys(d)</b> récupère un tableau contenant les clés du dictionnaire spécifié,<b>d</b>.

<b>k = keys(d, 'cell')</b> renvoie éventuellement les clés sous forme de tableau cellulaire.

## 💡 Exemple

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
k = keys(d)
k = keys(d, 'cell')

```

## 🔗 Voir aussi

[dictionary](../dictionary/dictionary.md), [values](../dictionary/values.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.5.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
