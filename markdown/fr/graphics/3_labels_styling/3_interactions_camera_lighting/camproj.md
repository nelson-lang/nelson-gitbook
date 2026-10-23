# camproj

Définit ou interroge le type de projection de la caméra.

## 📝 Syntaxe

- camproj
- p = camproj
- camproj('orthographic')
- camproj('perspective')
- camproj(ax, ...)

## 📥 Argument d'entrée

- ax - Un objet graphique scalaire : des axes.
- type - Le type de projection : 'orthographic' ou 'perspective'.

## 📤 Argument de sortie

- p - Le type de projection actuel.

## 📄 Description


<b>camproj</b> définit ou interroge la propriété <b>Projection</b> d'un axes. 

Une projection <b>orthographic</b> conserve les lignes parallèles parallèles et une taille apparente indépendante de la distance. Une projection <b>perspective</b> ajoute l'effet de perspective : les objets plus éloignés de la caméra paraissent plus petits.

## 💡 Exemple



```matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
camproj('perspective');
p = camproj()
```


## 🔗 Voir aussi

[camva](../../../graphics/3_labels_styling/3_interactions_camera_lighting/camva.md), [campos](../../../graphics/3_labels_styling/3_interactions_camera_lighting/campos.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
