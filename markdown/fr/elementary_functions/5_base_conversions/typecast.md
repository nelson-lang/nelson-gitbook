# typecast

Convertit le type sans modifier les données sous-jacentes.

## 📝 Syntaxe

- Y = typecast(X, type)

## 📥 Argument d'entrée

- X - une variable : scalaire ou vecteur numérique plein et non complexe.
- type - une chaîne de caractères : nom de la classe numérique de destination ('int8', 'int16', 'int32', 'int64', 'uint8', 'uint16', 'uint32', 'uint64', 'single' ou 'double').

## 📤 Argument de sortie

- Y - résultat de typecast : X réinterprété comme le type demandé.

## 📄 Description

<b>typecast</b> réinterprète les octets de <b>X</b> comme la classe numérique <b>type</b> sans modifier le motif d'octets sous-jacent.

Contrairement à <b>cast</b>, les valeurs numériques ne sont pas converties : seule l'interprétation de la même mémoire change. Le nombre d'octets de l'entrée doit être un multiple entier de la taille de la classe de destination.

Un vecteur colonne donne un vecteur colonne, sinon le résultat est un vecteur ligne.

## 💡 Exemple

```matlab
Y = typecast(single(1), 'uint32')
Z = typecast(uint32(1065353216), 'single')
```

## 🔗 Voir aussi

[cast](../../elementary_functions/cast.md), [swapbytes](../../elementary_functions/swapbytes.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.14.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
