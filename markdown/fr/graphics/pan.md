# pan

Activer le mode déplacement (pan).

## 📝 Syntaxe

- pan
- pan option
- pan(fig, ...)
- pan(ax, ...)

## 📥 Argument d'entrée

- option - Chaîne de caractères : 'on', 'off', 'out', 'xon', 'yon' ou 'toggle'.
- fig - Objet figure : figure cible
- ax - Valeur scalaire d'objet graphique : conteneur parent, spécifié comme axes.

## 📄 Description

Utilisez le mode déplacement (pan) pour ajuster dynamiquement les limites des axes lors de l'exploration interactive des données.

Activez ou désactivez le mode déplacement et configurez des options de base supplémentaires avec la fonction pan.

Le mode déplacement est compatible avec divers graphiques comme les courbes, barres, histogrammes et surfaces. Ces graphiques disposent généralement d'une icône de déplacement dans la barre d'outils pour faciliter cette fonctionnalité.

<b>pan option</b> configure le mode déplacement pour tous les axes de la figure courante.

Une fois le mode déplacement activé, vous pouvez ajuster la vue des axes avec le curseur ou le clavier :

Curseur : cliquez et faites glisser le curseur dans les axes.

Clavier : pour déplacer horizontalement, utilisez les flèches gauche (←) ou droite (->). Pour déplacer verticalement, utilisez les flèches haut (↑) ou bas (↓).

L'option du mode déplacement peut être spécifiée avec l'une des valeurs suivantes :

<b>
        'toggle'
      </b> : Bascule le mode déplacement. Si le mode est désactivé, 'toggle' revient à la dernière option utilisée parmi 'on', 'xon' ou 'yon'. Ce comportement est identique à l'appel de pan sans argument.

<b>
        'xon'
      </b> : Active le mode déplacement uniquement sur l'axe x.

<b>
        'yon'
      </b> : Active le mode déplacement uniquement sur l'axe y.

<b>
        'on'
      </b> : Active le mode déplacement.

<b>
        'off'
      </b> : Désactive le mode déplacement. Certaines interactions par défaut peuvent persister quel que soit le mode d'interaction.

## 💡 Exemple

```matlab
surf(peaks)
pan on

```

## 🔗 Voir aussi

[rotate3d](../graphics/rotate3d.md), [zoom](../graphics/zoom.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.2.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
