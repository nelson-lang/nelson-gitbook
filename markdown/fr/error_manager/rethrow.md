# rethrow

relancer une erreur.

## Syntaxe

- rethrow(MException)

## Argument d'entrée

- MException - objet MException

## Description

<p>rethrow(MException) relance l'erreur spécifiée par MException.</p>

## Exemple

```matlab

try
  a
catch ME
  disp(ME)
  rethrow(ME)
end

```

## Voir aussi

[MException](../error_manager/MException.md), [throw](../error_manager/throw.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
