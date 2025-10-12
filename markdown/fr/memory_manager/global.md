# global

Définit une variable globale.

## Syntaxe

- global variable_name
- global(variable_name)
- global variable_name1 ... variable_nameN

## Argument d'entrée

- variable_name - une chaîne : nom de variable valide.

## Description

<p>
            global déclare une variable comme globale : elle permet d'affecter une valeur à une variable dans une portée de variables spécifiée.</p>

## Exemple

```matlab
function myfun()
global y;
y = 1;
end

myfun()
who
global y
who
disp(y)
who
clear global y
disp(y)
```

## Voir aussi

[clear](../memory_manager/clear.md), [who](../memory_manager/who.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
