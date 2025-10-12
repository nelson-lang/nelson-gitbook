# skip_testsuite

Sauter la suite de tests selon une condition

## Syntaxe

- skip_testsuite()
- skip_testsuite(reason)
- skip_testsuite(condition)
- skip_testsuite(condition, reason)

## Argument d'entrée

- condition - logique: vrai (par défaut) ou faux
- reason - une chaîne : raison pour laquelle la suite de tests est sautée

## Description

<p>La fonction skip_testsuite permet de sauter une suite de tests en fonction d'une
            condition spécifiée.</p>

<p>condition : Une expression booléenne qui détermine si la suite de tests doit être
            sautée. Si condition évalue à true, la suite de tests sera sautée.</p>

<p>reason : Une chaîne expliquant la raison du saut de la suite de tests. Ce
            paramètre est utile pour fournir du contexte aux autres développeurs ou pour vous-même
            si la suite est sautée.</p>

## Exemple

```matlab
skip_testsuite(true, 'Test skipped')
```

## Voir aussi

[test_run](../tests_manager/test_run.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.4.0   | version initiale |

## Auteur

Allan CORNET
