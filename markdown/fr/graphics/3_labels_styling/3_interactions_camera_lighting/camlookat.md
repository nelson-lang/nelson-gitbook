# camlookat

Pointe la caméra vers un objet.

## 📝 Syntaxe

- camlookat
- camlookat(obj)
- camlookat(ax)

## 📥 Argument d'entrée

- obj - Un objet graphique à regarder (par exemple une surface ou une ligne).
- ax - Des axes dont le contenu est cadré.

## 📄 Description


<b>camlookat</b> définit la cible de la caméra au centre de l'objet et déplace la caméra le long de la direction de visée actuelle de sorte que l'objet remplisse la vue. Sans argument, elle cadre les axes courants.

## 💡 Exemple



```matlab
f = figure();
[x, y, z] = sphere(20);
s = surf(x + 5, y - 3, z);
axis equal;
camlookat(s);
```


## 🔗 Voir aussi

[camtarget](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camtarget.md), [campos](../../../graphics/3_labels_styling/3_interactions_camera_lighting/campos.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
