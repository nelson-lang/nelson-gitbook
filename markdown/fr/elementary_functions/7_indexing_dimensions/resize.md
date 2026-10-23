# resize

Redimensionne un tableau par troncature ou remplissage.

## 📝 Syntaxe

- B = resize(A, m)
- B = resize(A, sz)
- B = resize(A, sz, 'FillValue', v)

## 📥 Argument d'entrée

- A - le tableau à redimensionner.
- m - une longueur scalaire, pour redimensionner un vecteur.
- sz - un vecteur de taille <b>[m n ...]</b> donnant la taille du résultat.
- v - la valeur de remplissage des éléments ajoutés (défaut <b>0</b> pour un tableau numérique).

## 📤 Argument de sortie

- B - le tableau redimensionné, de la taille demandée et de la classe de <b>A</b>.

## 📄 Description


<b>resize</b> renvoie un tableau de la taille demandée. Le long de chaque dimension, les éléments de <b>A</b> au-delà de la nouvelle taille sont supprimés et les positions au-delà des données d'origine sont remplies avec une valeur de remplissage, qui vaut <b>0</b> pour un tableau numérique sauf si <b>'FillValue'</b> est fourni. Une taille scalaire redimensionne la longueur d'un vecteur en conservant son orientation.

## 💡 Exemple



```matlab
resize([1 2 3], 6)
```


## 🔗 Voir aussi

[reshape](../../elementary_functions/1_array_creation_shape/reshape.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
