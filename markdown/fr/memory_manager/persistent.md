# persistent

Variable persistante.

## Syntaxe

- persistent variable_name
- persistent('variable_name')
- persistent variable_name1, ..., variable_nameN

## Argument d'entrée

- variable_name - une chaîne : nom de la variable.

## Description

<p>
            persistent définit une variable identifiée par son nom variable_name comme persistante dans une fonction.</p>

<p>Avant d'utiliser une variable persistante, il est nécessaire d'initialiser sa valeur.</p>

## Exemples

function to define:

```matlab
function r = test_persistent_function()
 persistent calls;
 if isempty(calls)
    calls = 0;
 end
 disp(['nb calls to test_persistent_function: ', int2str(calls)]);
 r= calls;
 calls = calls + 1;
end
```

calls test_persistent_function

```matlab
for i = 1:30
  r = test_persistent_function();
end

```

## Voir aussi

[clear](../memory_manager/clear.md), [who](../memory_manager/who.md), [global](../memory_manager/global.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
