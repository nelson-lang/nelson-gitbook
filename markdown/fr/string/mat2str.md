# mat2str

Conversion matrice → chaîne.

## Syntaxe

- res = mat2str(M)
- res = mat2str(M, 'class')
- res = mat2str(M, P, 'class')

## Argument d'entrée

- M - une matrice 2D numérique ou logique.
- P - entier : précision, 15 par défaut.

## Argument de sortie

- res - une chaîne

## Description

<p>
                        mat2str convertit une matrice en chaîne.</p>

<p>Cette chaîne peut être utilisée pour reconstruire la matrice d'origine avec la fonction execstr.</p>

## Exemple

```matlab
R = mat2str(pi)
R = mat2str(pi, 'class')
R = mat2str(pi, 4)
R = mat2str(pi + i, 'class')
execstr(['RB = ', R])

```

## Voir aussi

[execstr](../core/execstr.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
