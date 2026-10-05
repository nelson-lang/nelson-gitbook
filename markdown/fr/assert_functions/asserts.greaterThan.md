# asserts.greaterThan

Verifie que chaque valeur est strictement superieure a une limite.

## 📝 Syntaxe

- asserts.greaterThan(value, limit)
- [res, msg] = asserts.greaterThan(value, limit)

## 📥 Argument d'entrée

- value - Scalaire ou tableau reel numerique ou logique.
- limit - Scalaire ou tableau reel numerique ou logique. L'expansion scalaire est supportee.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


L'assertion reussit lorsque value > limit pour chaque element compare. 

Les tableaux doivent avoir les memes dimensions sauf si une entree est scalaire.

## 💡 Exemples

Scalar expansion

```matlab
asserts.greaterThan([2 3], 1);
```
Capture a relation failure

```matlab
[res, msg] = asserts.greaterThan([0 3], 1);
```


## 🔗 Voir aussi

[asserts.greaterOrEqual](../assert_functions/asserts.greaterOrEqual.md), [asserts.inRange](../assert_functions/asserts.inRange.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
