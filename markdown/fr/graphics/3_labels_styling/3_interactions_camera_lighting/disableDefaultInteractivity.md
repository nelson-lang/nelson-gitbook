# disableDefaultInteractivity

Desactive les interactions integrees des axes.

## 📝 Syntaxe

- disableDefaultInteractivity(ax)

## 📥 Argument d'entrée

- ax - un objet graphique scalaire : un axes.

## 📄 Description


Par defaut, les axes ont des interactions integrees activees : glisser le curseur sur les axes deplace le contenu (ou le fait pivoter pour une vue 3-D), et la molette zoome. 

<b>disableDefaultInteractivity(ax)</b> desactive ces interactions integrees pour les axes <b>ax</b>. 

La barre d'outils des axes et les modes pan, zoom et rotation actives depuis la barre d'outils ou par programme ne sont pas affectes. 

Utilisez <b>enableDefaultInteractivity</b> pour reactiver les interactions integrees.

## 💡 Exemple



```matlab
plot(1:1000, sin(1:1000))
ax = gca();
disableDefaultInteractivity(ax);

```


## 🔗 Voir aussi

[enableDefaultInteractivity](../../../graphics/3_labels_styling/3_interactions_camera_lighting/enableDefaultInteractivity.md), [pan](../../../graphics/3_labels_styling/3_interactions_camera_lighting/pan.md), [zoom](../../../graphics/3_labels_styling/3_interactions_camera_lighting/zoom.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
