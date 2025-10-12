# qml_evaluatestring

Évalue une chaîne JS.

## Syntaxe

- r = qml_evaluatestring(string_to_eval)

## Argument d'entrée

- string_to_eval - une chaîne : code JS.

## Argument de sortie

- r - a double, logical, int ou string.

## Description

<p>Évalue une chaîne JS.</p>

<p>Si la valeur retournée ne peut pas être convertie en type de base, elle sera convertie en chaîne.</p>

## Exemple

```matlab
qml_evaluatestring('a = 2 + 4')
```

## Voir aussi

[qml_evaluatefile](../qml_engine/qml_evaluatefile.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
