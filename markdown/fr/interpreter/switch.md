# switch

instruction switch.

## 📝 Syntaxe

- switch(expression), case test_expression_1, statements, case test_expression_2, statements, otherwise statements, end

## 📄 Description

L'instruction <b>switch</b> est utilisée pour exécuter sélectivement du code en fonction de la valeur d'un scalaire ou d'une chaîne.

La clause <b>otherwise</b> est optionnelle.

## 💡 Exemples

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

## 🔗 Voir aussi

[for](../interpreter/for.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
