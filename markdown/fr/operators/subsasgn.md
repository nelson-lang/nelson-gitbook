# subsasgn

Redéfinir l'affectation par indice.

## Syntaxe

- B = subsasgn(A, S, B)

## Argument d'entrée

- A - Objet utilisé dans l'opération d'indexation
- S - Structure avec deux champs : 'type' et 'subs'.
- B - La valeur assignée, située sur le côté droit de l'expression d'affectation.

## Argument de sortie

- R - Le résultat de l'affectation est l'objet modifié ; cet objet modifié est renvoyé en premier argument.

## Description

<p>
        B = subsasgn(A, S, B) assigne une valeur à un élément d'une cellule ou d'une matrice.</p>

## Exemple

Indexation par parenthèses

```matlab
R1 = {1, 'GoodBye', [1, 2;3, 4]};
S = substruct('{}', {1, 3});
R2 = subsasgn(R1, S, 'Hello')
```

## Voir aussi

[substruct](../elementary_functions/substruct.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
