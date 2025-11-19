# skip_testsuite

Sauter la suite de tests selon une condition

## 📝 Syntaxe

- skip_testsuite()
- skip_testsuite(reason)
- skip_testsuite(condition)
- skip_testsuite(condition, reason)

## 📥 Argument d'entrée

- condition - logique: vrai (par défaut) ou faux
- reason - une chaîne : raison pour laquelle la suite de tests est sautée

## 📄 Description

La fonction<b>skip_testsuite</b> permet de sauter une suite de tests en fonction d'une condition spécifiée.

<b>condition</b> : Une expression booléenne qui détermine si la suite de tests doit être sautée. Si <b>condition</b> évalue à <b>true</b>, la suite de tests sera sautée.

<b>reason</b> : Une chaîne expliquant la raison du saut de la suite de tests. Ce paramètre est utile pour fournir du contexte aux autres développeurs ou pour vous-même si la suite est sautée.

## 💡 Exemple

```matlab
skip_testsuite(true, 'Test skipped')
```

## 🔗 Voir aussi

[test_run](../tests_manager/test_run.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.4.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
