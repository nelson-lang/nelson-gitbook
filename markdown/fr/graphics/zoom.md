# zoom

Activer le mode zoom.

## 📝 Syntaxe

- zoom
- zoom option
- zoom(factor)
- zoom(fig, ...)
- zoom(ax, ...)

## 📥 Argument d'entrée

- option - chaîne : 'on', 'off', 'reset', 'out', 'xon', 'yon' ou 'toggle'.
- factor - nombre positif : Pour zoomer, indiquez un facteur supérieur à 1. Pour dézoomer, spécifiez un facteur entre 0 et 1. Lors du dézoom, les axes se dézoomeront d'un facteur de 1/factor.
- fig - Objet figure : Figure cible
- ax - une valeur scalaire d'objet graphique : conteneur parent, spécifié comme un axes.

## 📄 Description

Utilisez le mode zoom pour ajuster dynamiquement les limites des axes pour une exploration interactive des données.

Activez ou désactivez le mode zoom et configurez des paramètres de base supplémentaires à l'aide de la fonction zoom.

Le mode zoom est compatible avec divers graphiques tels que les graphiques en ligne, en barres, les histogrammes et les graphiques de surface. Ces graphiques disposent généralement d'icônes de zoom avant et arrière sur la barre d'outils pour faciliter la fonctionnalité de zoom.

<b>zoom option</b> configure le mode zoom pour tous les axes de la figure actuelle.

Par exemple, <b>zoom('on')</b> active le mode zoom, <b>zoom('xon')</b> active le mode zoom exclusivement pour la dimension x, tandis que <b>zoom('off')</b> désactive complètement le mode zoom.

Une fois le mode zoom activé, vous pouvez ajuster la vue des axes à l'aide du curseur, de la molette de défilement ou du clavier :

Curseur : Cliquez pour zoomer au niveau de la position du curseur ; Faites glisser pour zoomer sur une région rectangulaire.

Molette de défilement : Faites défiler vers le haut pour zoomer, faites défiler vers le bas pour dézoomer.

Clavier : Appuyez sur la flèche haut (↑) pour zoomer, et sur la flèche bas (↓) pour dézoomer.

L'option de mode zoom peut être spécifiée en utilisant l'une des valeurs suivantes :

<b>'toggle'</b> : Bascule le mode zoom. Si le mode zoom est désactivé, 'toggle' revient à l'option de zoom la plus récemment utilisée parmi 'on', 'xon' ou 'yon'. Cette option se comporte de la même manière que l'appel de zoom sans aucun argument.

<b>'xon'</b> : Active le mode zoom exclusivement pour la dimension x.

<b>'yon'</b> : Active le mode zoom exclusivement pour la dimension y.

<b>'on'</b> : Active le mode zoom.

<b>'off'</b> : Désactive le mode zoom. Notez que certaines interactions par défaut peuvent persister indépendamment du mode d'interaction.

<b>'reset'</b> : Établit le niveau de zoom actuel comme niveau de zoom de base. Une fois défini, des actions ultérieures comme le dézoom, le double-clic dans les axes ou le clic sur l'icône <b>Restaurer la vue</b> sur la barre d'outils des axes ramèneront les axes à ce niveau de zoom de base.

<b>'out'</b> : Restaure les axes actuels à leur niveau de zoom de base.

## 💡 Exemple

```matlab
surf(peaks)
zoom on
zoom reset
zoom(1.5);
sleep(5);
zoom out
```

## 🔗 Voir aussi

[rotate3d](../graphics/rotate3d.md), [pan](../graphics/pan.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.2.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
