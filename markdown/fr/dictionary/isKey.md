# isKey

Vérifie si le dictionnaire contient la clé

## 📝 Syntaxe

- tf = isKey(d)

## 📥 Argument d'entrée

- d - scalaire : objet dictionnaire.

## 📤 Argument de sortie

- tf - scalaire logique : true si la clé existe, false sinon.

## 📄 Description

<b>tf = isKey(d, key)</b> renvoie true logique si la clé spécifiée existe dans le dictionnaire configuré, et false logique si elle n'existe pas.

Si <b>d</b> est un dictionnaire non configuré, <b>isKey</b> lève une erreur.

Si <b>key</b> est un tableau de plusieurs clés, alors tf est un tableau logique de la même taille.

## 💡 Exemple

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
tf = isKey(d, "John")
tf = isKey(d, ["biil" , "Yannis")
```

## 🔗 Voir aussi

[dictionary](../dictionary/dictionary.md), [configureDictionary](../dictionary/configureDictionary.md), [keys](../dictionary/keys.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.5.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
