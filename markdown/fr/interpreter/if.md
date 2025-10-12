# if

instruction conditionnelle.

## Syntaxe

- if conditional_expression_1, statements_1, elseif conditional_expression_2, statements_2, else statements_N end

## Description

<p>
            Les instructions if et else forment une structure de contrôle pour l'exécution conditionnelle.</p>

## Exemple

```matlab
i = 0;
if i == 0
  disp('ok')
elseif i == 1
  disp('not ok 1')
else
  disp('not ok 2')
end
```

## Voir aussi

[for](../interpreter/for.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
