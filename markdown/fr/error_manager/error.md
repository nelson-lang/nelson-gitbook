# error

Lever une erreur.

## Syntaxe

- error(id, msg)
- error(msg)
- error(error_structure)

## Argument d'entrée

- id - une chaîne : identifiant d'erreur.
- msg - une chaîne de caractères.
- error_structure - structure du message d'erreur.

## Description

<p>error arrête l'exécution du script en cours.</p>

<p>error('') sera ignorée et le script continuera à s'exécuter.</p>

<p>L'identifiant inclut un ou plusieurs champs composants et un champ mnémonique (exemple : 'nelson:matrix:empty').</p>

## Exemples

```matlab
error('your error message.')
error('nelson:identifier', 'your error message.')

error('')
```

```matlab
 1 / [1 2 3]
a = lasterror()
lasterror('reset')
b = lasterror()
error(a)
c = lasterror()
```

## Voir aussi

[MException](../error_manager/MException.md), [lasterror](../error_manager/lasterror.md), [warning](../error_manager/warning.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
