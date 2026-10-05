# summary

Resumer les variables de table ou les valeurs categorielles.

## 📝 Syntaxe

- S = summary(T)
- summary(A)

## 📥 Argument d'entrée

- T - Table d'entree.
- A - Tableau categoriel d'entree.

## 📤 Argument de sortie

- S - Structure contenant les informations de resume des variables de table.

## 📄 Description


<b>summary</b> retourne la taille et le type de chaque variable de table. 

Les variables numeriques de table incluent aussi le minimum, le maximum, la moyenne, la mediane, l'ecart type et le nombre de valeurs manquantes. 

Pour les tableaux categoriels, <b>summary</b> affiche le nombre d'elements pour chaque categorie et pour les valeurs non definies.

## 💡 Exemples

Resumer une table.

```matlab
T = table([1; 2; 3], ["a"; "b"; "c"], 'VariableNames', {'A', 'Label'});
S = summary(T)
```
Afficher les comptes categoriels.

```matlab
A = categorical({'red','blue','red',''});
summary(A)
```


## 🔗 Voir aussi

[table](../table/1_create_convert_tables/table.md), [categorical](../categorical/categorical.md), [countcats](../categorical/countcats.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
