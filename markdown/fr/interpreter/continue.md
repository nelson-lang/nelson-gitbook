# continue

continuer l'exécution dans une boucle.

## Syntaxe

- continue

## Description

<p>
            L'instruction continue peut être utilisée à l'intérieur d'une boucle for ou while.</p>

<p>
                L'instruction continue est utilisée pour transférer le contrôle à l'itération suivante d'une boucle.</p>

## Exemple

```matlab

for i=1:10
  if (i == 5)
    continue;
    disp('never here')
    disp(i)
  else
    disp(i)
  end
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
