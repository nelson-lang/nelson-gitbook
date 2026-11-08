# skip\_testsuite

Sauter la suite de tests selon une condition

## 📝 Syntaxe

- skip\_testsuite()
- skip\_testsuite(reason)
- skip\_testsuite(condition)
- skip\_testsuite(condition, reason)

## 📥 Argument d'entrée

- condition - logique: vrai (par défaut) ou faux
- reason - une chaîne : raison pour laquelle la suite de tests est sautée

## 📄 Description


La fonction<b>skip\_testsuite</b> permet de sauter une suite de tests en fonction d'une condition spécifiée. 

<b>skip\_testsuite</b> est un wrapper de compatibilite au dessus de <b>nelson.unittest.skip</b>. 

<b>condition</b> : Une expression booléenne qui détermine si la suite de tests doit être sautée. Si <b>condition</b> évalue à <b>true</b>, la suite de tests sera sautée. 

<b>reason</b> : Une chaîne expliquant la raison du saut de la suite de tests. Ce paramètre est utile pour fournir du contexte aux autres développeurs ou pour vous-même si la suite est sautée.

## 💡 Exemple



```matlab
skip_testsuite(true, 'Test skipped')
```


## 🔗 Voir aussi

[test_run](../tests_manager/test_run.md), [nelson.unittest](../tests_manager/nelson_unittest.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.4.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
