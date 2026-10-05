# categorical

Créer un tableau catégoriel.

## 📝 Syntaxe

- C = categorical(A)
- C = categorical(A, valueset)
- C = categorical(A, valueset, categoryNames)
- C = categorical(..., 'Ordinal', tf)
- C = categorical(..., 'Protected', tf)

## 📥 Argument d'entrée

- A - Valeurs d'entrée : texte, string, numérique, logique ou catégoriel.
- valueset - Ensemble explicite de valeurs qui définissent les catégories.
- categoryNames - Noms associés aux catégories définies par <b>valueset</b>.
- tf - Scalaire logique qui active l'ordre ordinal ou la protection des catégories.

## 📤 Argument de sortie

- C - Tableau catégoriel de même taille que <b>A</b>.

## 📄 Description


<b>categorical</b> stocke les valeurs répétées sous forme de codes entiers et d'une liste de noms de catégories. 

Les valeurs texte vides, les strings manquants ou les valeurs absentes d'un <b>valueset</b> explicite deviennent des éléments catégoriels non définis. 

Les tableaux ordinaux utilisent l'ordre des catégories pour les comparaisons relationnelles et sont automatiquement protégés. 

<b>contains</b>, <b>startsWith</b>, <b>endsWith</b> et <b>matches</b> acceptent un tableau catégoriel en entrée : ils testent le nom de catégorie de chaque élément avec le motif (texte, cellule de textes, tableau de chaînes ou objet pattern, avec l'option facultative <b>'IgnoreCase'</b>) et renvoient un tableau logique de même taille. Les éléments non définis renvoient false. Chaque nom de catégorie n'est testé qu'une seule fois. 

Concaténer un tableau catégoriel avec du texte (<b>["z" C]</b>, <b>['z' C]</b>, <b>[{'z'} C]</b>) ou <b>missing</b> convertit les autres opérandes : le résultat garde les catégories du premier opérande catégoriel et ajoute les nouvelles valeurs dans l'ordre des opérandes ; le texte vide et <b>missing</b> sont non définis. Les tableaux ordinaux et protégés refusent les valeurs qui ne sont pas déjà des catégories, et les autres classes (numériques, logiques, tableaux de chaînes à plusieurs éléments) sont refusées.

## 💡 Exemples

Créer des catégories à partir de valeurs texte.

```matlab
C = categorical({'red','blue','red'}); categories(C)
```
Créer un tableau ordinal avec un ordre explicite.

```matlab
C = categorical({'low','high','mid'}, {'low','mid','high'}, 'Ordinal', true); C > 'mid'
```
Rechercher les éléments dont le nom de catégorie correspond à un motif.

```matlab
C = categorical({'winter storm','fire','Thunder Storm',''}); contains(C, "storm", 'IgnoreCase', true)
```


## 🔗 Voir aussi

[categories](../categorical/categories.md), [iscategorical](../categorical/iscategorical.md), [isundefined](../categorical/isundefined.md), [isordinal](../categorical/isordinal.md), [isprotected](../categorical/isprotected.md), [contains](../string/3_find_replace/contains.md), [startsWith](../string/3_find_replace/startsWith.md), [endsWith](../string/3_find_replace/endsWith.md), [matches](../string/8_compare_text/matches.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
