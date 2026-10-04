# asserts.notApprox

Verifie que deux valeurs numeriques ne sont pas approximativement egales.

## 📝 Syntaxe

- asserts.notApprox(computed, expected, relTol)
- asserts.notApprox(computed, expected, relTol, absTol)
- [res, msg] = asserts.notApprox(computed, expected, relTol)

## 📥 Argument d'entrée

- computed - Valeur numerique calculee.
- expected - Valeur qui ne doit pas etre approximativement egale a computed.
- relTol - Tolerance relative finie non negative.
- absTol - Tolerance absolue finie non negative optionnelle.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description

L'assertion reussit lorsque asserts.isapprox echouerait.

Les deux tolerances doivent etre des scalaires numeriques finis non negatifs.

## 💡 Exemples

Different numeric values

```matlab
asserts.notApprox(1, 2, eps);
```

Capture approximate equality

```matlab
[res, msg] = asserts.notApprox(1, 1, eps);
```

## 🔗 Voir aussi

[asserts.isapprox](../assert_functions/asserts.isapprox.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
