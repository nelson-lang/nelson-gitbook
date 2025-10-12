# title

Ajouter un titre.

## Syntaxe

- title(text)
- title(ax, text)
- title(..., propertyName, propertyValue)
- go = title(...)

## Argument d'entrée

- text - Texte à afficher : vecteur de caractères, chaîne scalaire, tableau de chaînes ou tableau de cellules.
- ax - Un objet graphique scalaire : conteneur parent, spécifié comme axes.
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères.
- propertyValue - Une valeur.

## Argument de sortie

- go - Un objet graphique : type texte.

## Description

<p>
            title('text') ajoute un titre aux axes actuels.
        </p>

<p>
            La propriété Visible est héritée du parent si elle n'est pas explicitement définie.
        </p>

## Exemple

```matlab
f = figure();
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
title('Unicode ドラゴンボールZ(ゼット)', 14);
```

<img src="title.svg" align="middle"/>

## Voir aussi

[texte](../graphics/text.md), [xlabel](../graphics/xlabel.md).

## Historique

| Version | Description                                                                         |
| ------- | ----------------------------------------------------------------------------------- |
| 1.0.0   | Version initiale                                                                    |
| 1.10.0  | La propriété Visible est héritée du parent si elle n'est pas explicitement définie. |

## Auteur

Allan CORNET
