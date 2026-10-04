# asserts.greaterOrEqual

Verifie que chaque valeur est superieure ou egale a une limite.

## 📝 Syntaxe

- asserts.greaterOrEqual(value, limit)
- [res, msg] = asserts.greaterOrEqual(value, limit)

## 📥 Argument d'entrée

- value - Scalaire ou tableau reel numerique ou logique.
- limit - Scalaire ou tableau reel numerique ou logique. L'expansion scalaire est supportee.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description

L'assertion reussit lorsque value >= limit pour chaque element compare.

Les tableaux doivent avoir les memes dimensions sauf si une entree est scalaire.

## 💡 Exemples

Element-wise comparison

```matlab
asserts.greaterOrEqual([2 3], [2 3]);
```

Capture a relation failure

```matlab
[res, msg] = asserts.greaterOrEqual([0 3], 1);
```

## 🔗 Voir aussi

[asserts.greaterThan](../assert_functions/asserts.greaterThan.md), [asserts.inRange](../assert_functions/asserts.inRange.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
