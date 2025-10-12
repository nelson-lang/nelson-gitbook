# switch

instruction switch.

## Syntaxe

- switch(expression), case test_expression_1, statements, case test_expression_2, statements, otherwise statements, end

## Description

<p>
            L'instruction switch est utilisée pour exécuter sélectivement du code en fonction de la valeur d'un scalaire ou d'une chaîne.</p>

<p>
                La clause otherwise est optionnelle.</p>

## Exemples

demo_switch.m

```matlab
function c = demo_switch(a)
 switch(a)
    case {'hello', 'world'}
      c = 'message';
    case {'red', 'green', 'blue'}
      c = 'color';
    otherwise
      c = 'not sure';
  end
end

```

```matlab
demo_switch('hello')
demo_switch('red')
demo_switch('?')

```

## Voir aussi

[for](../interpreter/for.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
