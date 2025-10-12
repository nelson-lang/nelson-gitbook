# waitforbuttonpress

Attendre un clic ou une pression sur une touche.

## Syntaxe

- w = waitforbuttonpress()

## Argument de sortie

- w - Une valeur double scalaire : 0 pour un clic de souris, 1 pour une pression sur une touche.

## Description

<p>
            w = waitforbuttonpress() met en pause l'exécution du code jusqu'à ce que l'utilisateur interagisse avec la figure actuelle en cliquant sur un bouton de la souris ou en appuyant sur une touche.
        </p>

## Exemple

```matlab

cf = gcf();
w = waitforbuttonpress;
axes;

```

## Voir aussi

[figure](../graphics/figure.md), [gcf](../graphics/gcf.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.7.0   | Version initiale |

## Auteur

Allan CORNET
