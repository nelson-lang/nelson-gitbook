# legend

Ajoute une légende aux axes.

## Syntaxe

- legend()
- legend(label1, ..., labelN)
- legend(labels)
- legend('off')
- legend('hide')
- legend('show')
- legend('toggle')
- legend('boxon')
- legend('boxoff')
- legend(ax, ...)
- legend(..., 'Location', lcn)
- legend(..., propertyName, propertyValue)
- L = legend(...)

## Argument d'entrée

- label1, ..., labelN - Définit les étiquettes de la légende : vecteurs ligne de caractères.
- labels - Cellule de vecteurs de caractères ou tableau de chaînes.
- 'off' - Supprime la légende.
- 'toggle' - Active/désactive la visibilité de la légende.
- 'hide' - Masque la légende.
- 'show' - Affiche la légende.
- 'boxon' - Affiche un encadré autour de la légende.
- 'boxoff' - Masque l'encadré autour de la légende.
- ax - Axes à rendre courant.
- lcn - Emplacement de la légende : une chaîne ('NE' par défaut).
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères.
- propertyValue - Une valeur.

## Argument de sortie

- L - Un objet graphique : type axes.

## Description

<p>
            legend crée une légende dans la figure courante.
        </p>

<p>
            Emplacement de la légende sur le graphique :
        </p>

<p></p>

<p>'northeast' ou 'NE' : En haut à droite (par défaut).</p>

<p>'north' ou 'N' : En haut au centre.</p>

<p>'south' ou 'S' : En bas au centre.</p>

<p>'east' ou 'E' : Au milieu à droite.</p>

<p>'west' ou 'W' : Au milieu à gauche.</p>

<p>'northwest' ou 'NW' : En haut à gauche.</p>

<p>'southeast' ou 'SE' : En bas à droite.</p>

<p>'southwest' ou 'SW' : En bas à gauche.</p>

## Exemple

```matlab
f = figure();
x = linspace(0,10);
y1 = sin(x);
y2 = cos(x);
ax = gca();
plot(ax, x, y1);
plot(ax, x, y2);
legend('sin(x)', 'cos(x)', 'Location', 'N')
```

<img src="legend.svg" align="middle"/>

## Voir aussi

[title](../graphics/title.md), [text](../graphics/text.md), [plot](../graphics/plot.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
