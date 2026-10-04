# asserts.sameSize

Verifie que deux valeurs ont la meme taille.

## 📝 Syntaxe

- asserts.sameSize(left, right)
- [res, msg] = asserts.sameSize(left, right)

## 📥 Argument d'entrée

- left - premiere valeur.
- right - seconde valeur.

## 📤 Argument de sortie

- res - true si les deux valeurs ont la meme taille.
- msg - message d'echec de l'assertion.

## 📄 Description

<b>asserts.sameSize</b> compare les dimensions.

## Fonction(s) utilisée(s)

size

## 💡 Exemple

Verifier des tailles identiques :

```matlab
asserts.sameSize(ones(2, 3), zeros(2, 3));
```

## 🔗 Voir aussi

[asserts.size](../assert_functions/asserts.size.md), [asserts.numel](../assert_functions/asserts.numel.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
