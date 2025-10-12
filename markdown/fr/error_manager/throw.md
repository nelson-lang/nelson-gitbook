# throw

lancer une erreur.

## Syntaxe

- throw(MException)

## Argument d'entrée

- MException - objet MException

## Description

<p>throw(MException) lance une exception basée sur les informations contenues dans l'objet MException.</p>

## Exemple

```matlab

ME = MException('nelson:errorId', 'my error')
throw(ME)
```

## Voir aussi

[MException](../error_manager/MException.md), [rethrow](../error_manager/rethrow.md), [throwAsCaller](../error_manager/throwAsCaller.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
