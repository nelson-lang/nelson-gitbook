# standardizeMissing

Convertit des indicateurs en valeurs manquantes standard.

## 📝 Syntaxe

- B = standardizeMissing(A, indicators)

## 📥 Argument d'entrée

- A - Tableau ou table d'entree.
- indicators - Valeurs a traiter comme manquantes.

## 📤 Argument de sortie

- B - Donnees avec valeurs manquantes standardisees.

## 📄 Description


<b>standardizeMissing</b> remplace les indicateurs par des valeurs manquantes standard comme NaN pour les variables numeriques.

## 💡 Exemple



```matlab
T = table([1; -99; 3], 'VariableNames', {'A'});
R = standardizeMissing(T, -99)
```


## 🔗 Voir aussi

[fillmissing](../data_analysis/fillmissing.md), [rmmissing](../data_analysis/rmmissing.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
