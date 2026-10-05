# isordinal

Determiner si un tableau categoriel est ordinal.

## 📝 Syntaxe

- tf = isordinal(A)

## 📥 Argument d'entrée

- A - Valeur d'entree.

## 📤 Argument de sortie

- tf - Scalaire logique qui vaut <b>true</b> pour les tableaux categoriels ordinaux.

## 📄 Description


<b>isordinal</b> retourne <b>true</b> lorsque <b>A</b> est categoriel et que l'ordre des categories est significatif. 

Les tableaux ordinaux prennent en charge les comparaisons relationnelles basees sur l'ordre des categories.

## 💡 Exemple

Creer puis tester un tableau ordinal.

```matlab
A = categorical({'low','high'}, {'low','high'}, 'Ordinal', true); tf = isordinal(A)
```


## 🔗 Voir aussi

[categorical](../categorical/categorical.md), [isprotected](../categorical/isprotected.md), [reordercats](../categorical/reordercats.md), [categories](../categorical/categories.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
