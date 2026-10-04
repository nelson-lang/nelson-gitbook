# thetaticklabels

Definit ou retourne les etiquettes angulaires des axes polaires.

## 📝 Syntaxe

- labels = thetaticklabels()
- thetaticklabels(labels)
- thetaticklabels('auto')
- thetaticklabels('manual')
- m = thetaticklabels('mode')
- thetaticklabels(ax, ...)

## 📥 Argument d'entrée

- labels - Tableau de cellules, tableau de chaines, vecteur de caracteres ou valeurs numeriques converties en etiquettes.
- 'auto' - Genere les etiquettes angulaires depuis les valeurs de graduation angulaire.
- 'manual' - Conserve les etiquettes angulaires courantes.
- 'mode' - Retourne le mode des etiquettes angulaires.
- ax - Axes polaire cible.

## 📤 Argument de sortie

- labels - Tableau de cellules d'etiquettes angulaires.
- m - 'auto' ou 'manual'.

## 📄 Description

<b>thetaticklabels</b> retourne ou definit les etiquettes affichees a cote des graduations angulaires.

La definition d'etiquettes passe le mode a <b>manual</b>. Le nombre d'etiquettes affichees est aligne sur le nombre de graduations angulaires visibles.

## 💡 Exemple

Definir des etiquettes angulaires personnalisees.

```matlab

polarplot(linspace(0, 2*pi, 80), ones(1, 80));
thetaticks(0:90:360);
thetaticklabels({'E'; 'N'; 'W'; 'S'; 'E'});
labels = thetaticklabels()

```

## 🔗 Voir aussi

[thetaticks](../../../graphics/3_labels_styling/1_axes_appearance/thetaticks.md), [rticklabels](../../../graphics/3_labels_styling/1_axes_appearance/rticklabels.md), [polarplot](../../../graphics/1_plots/2_polar_plots/polarplot.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
