# acquirevar

Récupère la valeur d'une variable depuis une portée de variables spécifiée.

## Syntaxe

- value = acquirevar(scope, variable_name)

## Argument d'entrée

- scope - une chaîne : 'global', 'base', 'caller', 'local'.
- variable_name - une chaîne : nom du symbole à chercher.

## Argument de sortie

- value - valeur de la variable recherchée.

## Description

<p>
            acquirevar cherche un symbole dans une portée spécifique et copie sa valeur dans la portée courante.</p>

## Exemple

```matlab
 Y = 'variable in base scope';
function myfun()
  disp(acquirevar('base', 'Y')
end
myfun()
```

## Voir aussi

[assignin](../memory_manager/assignin.md), [who](../memory_manager/who.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
