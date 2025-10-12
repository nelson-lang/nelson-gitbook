# warning

Afficher un message d'avertissement.

## Syntaxe

- warning()
- warning(msg)
- warning(id, msg)
- warning(state)
- warning(state, id)
- st = warning()
- warning(st)

## Argument d'entrée

- id - une chaîne : identifiant pour l'avertissement.
- msg - une chaîne : message d'avertissement.
- state - une chaîne : 'on', 'off', 'aserror', 'all' ou 'query'.
- st - une structure : définir les paramètres d'avertissement.

## Argument de sortie

- st - une structure : paramètres d'avertissement.

## Description

<p>warning affiche un message d'avertissement.</p>

<p>warning('') réinitialise l'état de lastwarn.</p>

## Exemples

```matlab
warning('your warning message.')
```

```matlab
warning('on', 'myModule:identifier');
warning('myModule:identifier', 'my message 1 on');
warning('off', 'myModule:identifier');
warning('myModule:identifier', 'my message 2 off');
warning('aserror', 'myModule:identifier');
warning('myModule:identifier', 'my message 3 as error');


```

## Voir aussi

[lasterror](../error_manager/lasterror.md), [error](../error_manager/error.md), [lastwarn](../error_manager/lastwarn.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
