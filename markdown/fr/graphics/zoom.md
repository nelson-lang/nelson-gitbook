# zoom

Activer le mode zoom.

## Syntaxe

- zoom
- zoom option
- zoom(factor)
- zoom(fig, ...)
- zoom(ax, ...)

## Argument d'entrée

- option - chaîne : 'on', 'off', 'reset', 'out', 'xon', 'yon' ou 'toggle'.
- factor - nombre positif : Pour zoomer, indiquez un facteur supérieur à 1. Pour dézoomer, spécifiez un facteur entre 0 et 1. Lors du dézoom, les axes se dézoomeront d'un facteur de 1/factor.
- fig - Objet figure : Figure cible
- ax - une valeur scalaire d'objet graphique : conteneur parent, spécifié comme un axes.

## Description

<p>Utilisez le mode zoom pour ajuster dynamiquement les limites des axes pour une exploration interactive des données.</p>

<p>Activez ou désactivez le mode zoom et configurez des paramètres de base supplémentaires à l'aide de la fonction zoom.</p>

<p>Le mode zoom est compatible avec divers graphiques tels que les graphiques en ligne, en barres, les histogrammes et les graphiques de surface. Ces graphiques disposent généralement d'icônes de zoom avant et arrière sur la barre d'outils pour faciliter la fonctionnalité de zoom.</p>

<p>zoom option configure le mode zoom pour tous les axes de la figure actuelle.</p>

<p>Par exemple, zoom('on') active le mode zoom, zoom('xon') active le mode zoom exclusivement pour la dimension x, tandis que zoom('off') désactive complètement le mode zoom.</p>

<p>Une fois le mode zoom activé, vous pouvez ajuster la vue des axes à l'aide du curseur, de la molette de défilement ou du clavier :</p>

<p>Curseur : Cliquez pour zoomer au niveau de la position du curseur ; Faites glisser pour zoomer sur une région rectangulaire.</p>

<p>Molette de défilement : Faites défiler vers le haut pour zoomer, faites défiler vers le bas pour dézoomer.</p>

<p>Clavier : Appuyez sur la flèche haut (↑) pour zoomer, et sur la flèche bas (↓) pour dézoomer.</p>

<p>L'option de mode zoom peut être spécifiée en utilisant l'une des valeurs suivantes :</p>

<p>'toggle' : Bascule le mode zoom. Si le mode zoom est désactivé, 'toggle' revient à l'option de zoom la plus récemment utilisée parmi 'on', 'xon' ou 'yon'. Cette option se comporte de la même manière que l'appel de zoom sans aucun argument.</p>

<p>'xon' : Active le mode zoom exclusivement pour la dimension x.</p>

<p>'yon' : Active le mode zoom exclusivement pour la dimension y.</p>

<p>'on' : Active le mode zoom.</p>

<p>'off' : Désactive le mode zoom. Notez que certaines interactions par défaut peuvent persister indépendamment du mode d'interaction.</p>

<p>'reset' : Établit le niveau de zoom actuel comme niveau de zoom de base. Une fois défini, des actions ultérieures comme le dézoom, le double-clic dans les axes ou le clic sur l'icône Restaurer la vue sur la barre d'outils des axes ramèneront les axes à ce niveau de zoom de base.</p>

<p>'out' : Restaure les axes actuels à leur niveau de zoom de base.</p>

## Exemple

```matlab
surf(peaks)
zoom on
zoom reset
zoom(1.5);
sleep(5);
zoom out
```

## Voir aussi

[rotate3d](../graphics/rotate3d.md), [pan](../graphics/pan.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.2.0   | version initiale |

## Auteur

Allan CORNET
