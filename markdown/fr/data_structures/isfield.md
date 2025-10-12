# isfield

Vérifie si un nom de champ existe dans une structure.

## Syntaxe

- res = isfield(S, name)
- res = isfield(S, C)

## Argument d'entrée

- S - une structure
- name - une chaîne
- C - un tableau cellulaire

## Argument de sortie

- res - un logique

## Description

<p>
                        isfield(S, name) renvoie vrai si name est un nom de champ de S.</p>

## Exemples

```matlab
S.Nelson = 1;
isfield(S, 'Nel')
isfield(S, 'Nelson')
```

```matlab
S.nel = 1;
S.son = 2;
isfield(S,{ 1, 'nel'; 2, 'son'})
```

## Voir aussi

[fieldnames](../types/fieldnames.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
