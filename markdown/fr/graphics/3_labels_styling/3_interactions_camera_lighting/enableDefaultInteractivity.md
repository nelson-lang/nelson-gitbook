# enableDefaultInteractivity

Active les interactions integrees des axes.

## 📝 Syntaxe

- enableDefaultInteractivity(ax)

## 📥 Argument d'entrée

- ax - un objet graphique scalaire : un axes.

## 📄 Description


<b>enableDefaultInteractivity(ax)</b> reactive les interactions integrees des axes <b>ax</b> apres qu'elles ont ete desactivees avec <b>disableDefaultInteractivity</b>. 

Avec les interactions integrees activees, glisser le curseur sur les axes deplace le contenu (ou le fait pivoter pour une vue 3-D) et la molette zoome. 

C'est l'etat par defaut d'un nouvel axes.

## 💡 Exemple



```matlab
plot(1:1000, sin(1:1000))
ax = gca();
disableDefaultInteractivity(ax);
enableDefaultInteractivity(ax);

```


## 🔗 Voir aussi

[disableDefaultInteractivity](../../../graphics/3_labels_styling/3_interactions_camera_lighting/disableDefaultInteractivity.md), [pan](../../../graphics/3_labels_styling/3_interactions_camera_lighting/pan.md), [zoom](../../../graphics/3_labels_styling/3_interactions_camera_lighting/zoom.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
