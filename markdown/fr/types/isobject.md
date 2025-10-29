# isobject

Renvoie vrai si la variable var est un objet.

## 📝 Syntaxe

- res = isobject(var)

## 📥 Argument d'entrée

- var - une variable

## 📤 Argument de sortie

- res - un logique : vrai ou faux

## 📄 Description

<b>isobject</b> renvoie 1 logique (vrai) si l'argument est un objet et 0 logique (faux) sinon.

## 💡 Exemple

```matlab
A = 3;
res = isobject(A)

addpath([modulepath('overload', 'root'), '/examples/complex']);
A = complexObj(1, 2);
res = isobject(A)

```

## 🔗 Voir aussi

[isa](../types/isa.md), [ishandle](../types/ishandle.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
