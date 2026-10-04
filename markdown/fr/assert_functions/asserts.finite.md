# asserts.finite

Verifie que chaque entree numerique est finie.

## 📝 Syntaxe

- asserts.finite(value)
- [res, msg] = asserts.finite(value)

## 📥 Argument d'entrée

- value - Scalaire ou tableau numerique ou logique.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description

L'assertion reussit lorsque chaque entree est finie.

NaN, Inf et -Inf font echouer cette assertion.

## 💡 Exemples

Finite values

```matlab
asserts.finite([1 2 3]);
```

Capture an infinite value

```matlab
[res, msg] = asserts.finite([1 Inf]);
```

## 🔗 Voir aussi

[asserts.nonNan](../assert_functions/asserts.nonNan.md), [asserts.real](../assert_functions/asserts.real.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
