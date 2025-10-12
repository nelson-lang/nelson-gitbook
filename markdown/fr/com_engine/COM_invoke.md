# COM_invoke

Invoquer une méthode sur un objet ou interface COM.

## Syntaxe

- S = invoke(h, methodname, arg1, arg2, ...)
- S = COM_invoke(h, methodname, arg1, arg2, ...)

## Argument d'entrée

- h - un objet COM.
- methodname - une chaîne : le nom de la méthode invoquée sur l'objet COM.
- arg1, arg2, ... - une variable Nelson de type double, int, boolean, string, ... utilisée comme paramètres de la fonction COM invoquée.

## Argument de sortie

- S - un objet COM ou des données.

## Description

<p>Si la méthode retourne une interface COM, alors ole_invoke retourne un nouvel objet COM qui représente l'interface retournée.</p>

## Exemple

```matlab
pWord = actxserver('Word.Application')
pWord.Visible = true
invoke(pWord, 'Quit')
delete(pWord)
clear pWord
```

## Voir aussi

[COM_get](../com_engine/COM_get.md), [COM_set](../com_engine/COM_set.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
