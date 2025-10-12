# strjust

Justifie les chaînes

## Syntaxe

- J = strjust(str)
- J = strjust(str, side)

## Argument d'entrée

- str - vecteur de caractères, cellule de caractères ou tableau de chaînes.
- side - 'left', 'center', 'right' (par défaut).

## Argument de sortie

- J - texte justifié

## Description

<p>J = strjust(str, side) renvoie le texte justifié du côté spécifié par side.</p>

## Exemples

```matlab

S = ["left"; "center"; "right"];
J = strjust (S, 'left')
J = strjust (S, 'center')
J = strjust (S, 'right')
```

```matlab
J = strjust('                 text', 'center')
```

## Voir aussi

[blanks](../string/blanks.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
