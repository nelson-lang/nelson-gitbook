# asserts.lessOrEqual

Verifie que chaque valeur est inferieure ou egale a une limite.

## 📝 Syntaxe

- asserts.lessOrEqual(value, limit)
- [res, msg] = asserts.lessOrEqual(value, limit)

## 📥 Argument d'entrée

- value - Scalaire ou tableau reel numerique ou logique.
- limit - Scalaire ou tableau reel numerique ou logique. L'expansion scalaire est supportee.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description

L'assertion reussit lorsque value <= limit pour chaque element compare.

Les tableaux doivent avoir les memes dimensions sauf si une entree est scalaire.

## 💡 Exemples

Element-wise comparison

```matlab
asserts.lessOrEqual([1 2], [1 2]);
```

Capture a relation failure

```matlab
[res, msg] = asserts.lessOrEqual([1 4], 3);
```

## 🔗 Voir aussi

[asserts.lessThan](../assert_functions/asserts.lessThan.md), [asserts.inRange](../assert_functions/asserts.inRange.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
