# break

sortir d'une boucle.

## Syntaxe

- break

## Description

<p>
            L'instruction break est utilisée pour sortir prématurément d'une boucle.</p>

<p>
                L'instruction break peut être utilisée à l'intérieur d'une boucle for ou while.</p>

## Exemple

```matlab

for i = 1:10
  if i == 5
   disp('i == 5');
   break;
  end
  disp(i)
end

```

## Voir aussi

[return](../interpreter/abort.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
