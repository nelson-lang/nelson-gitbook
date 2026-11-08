# findgroups

Trouve les groupes et renvoie les numéros de groupe.

## 📝 Syntaxe

- G = findgroups(A)
- [G, ID] = findgroups(A)
- [G, ID1, ..., IDn] = findgroups(A1, ..., An)

## 📥 Argument d'entrée

- A, A1, ..., An - variables de regroupement ayant le même nombre d'éléments.

## 📤 Argument de sortie

- G - numéros de groupe ; les valeurs manquantes valent <b>NaN</b>.
- ID - les identifiants de groupe, une sortie par variable de regroupement.

## 📄 Description


<b>G = findgroups(A)</b> renvoie un vecteur de numéros de groupe construit à partir de la variable de regroupement <b>A</b>. 

Utilisez <b>G</b> avec <b>splitapply</b> pour appliquer une fonction à chaque groupe.

## 💡 Exemple



```matlab
[G, id] = findgroups([10; 20; 10; 30; 20])
```


## 🔗 Voir aussi

[splitapply](../data_analysis/splitapply.md), [accumarray](../data_analysis/accumarray.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
