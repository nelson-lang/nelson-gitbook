# pan

Activer le mode déplacement (pan).

## Syntaxe

- pan
- pan option
- pan(fig, ...)
- pan(ax, ...)

## Argument d'entrée

- option - Chaîne de caractères : 'on', 'off', 'out', 'xon', 'yon' ou 'toggle'.
- fig - Objet figure : figure cible
- ax - Valeur scalaire d'objet graphique : conteneur parent, spécifié comme axes.

## Description

<p>Utilisez le mode déplacement (pan) pour ajuster dynamiquement les limites des axes lors de l'exploration interactive des données.</p>

<p>Activez ou désactivez le mode déplacement et configurez des options de base supplémentaires avec la fonction pan.</p>

<p>Le mode déplacement est compatible avec divers graphiques comme les courbes, barres, histogrammes et surfaces. Ces graphiques disposent généralement d'une icône de déplacement dans la barre d'outils pour faciliter cette fonctionnalité.</p>

<p>pan option configure le mode déplacement pour tous les axes de la figure courante.</p>

<p>Une fois le mode déplacement activé, vous pouvez ajuster la vue des axes avec le curseur ou le clavier :</p>

<p>Curseur : cliquez et faites glisser le curseur dans les axes.</p>

<p>Clavier : pour déplacer horizontalement, utilisez les flèches gauche (←) ou droite (→). Pour déplacer verticalement, utilisez les flèches haut (↑) ou bas (↓).</p>

<p></p>

<p>L'option du mode déplacement peut être spécifiée avec l'une des valeurs suivantes :</p>

<p>'toggle' : Bascule le mode déplacement. Si le mode est désactivé, 'toggle' revient à la dernière option utilisée parmi 'on', 'xon' ou 'yon'. Ce comportement est identique à l'appel de pan sans argument.</p>

<p>'xon' : Active le mode déplacement uniquement sur l'axe x.</p>

<p>'yon' : Active le mode déplacement uniquement sur l'axe y.</p>

<p>'on' : Active le mode déplacement.</p>

<p>'off' : Désactive le mode déplacement. Certaines interactions par défaut peuvent persister quel que soit le mode d'interaction.</p>

## Exemple

```matlab
surf(peaks)
pan on

```

## Voir aussi

[rotate3d](../graphics/rotate3d.md), [zoom](../graphics/zoom.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.2.0   | version initiale |

## Auteur

Allan CORNET
