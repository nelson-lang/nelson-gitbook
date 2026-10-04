# grp2idx

Cree un vecteur d'indices depuis une variable de groupe.

## 📝 Syntaxe

- [g, gN] = grp2idx(s)
- [g, gN, gL] = grp2idx(s)

## 📄 Description

<b>grp2idx</b> convertit une variable de groupe en indices numeriques.

<b>gN</b> est un tableau de cellules de noms de groupes. <b>gL</b> contient les niveaux de groupes dans un type proche de l'entree lorsque c'est possible. Les valeurs de groupe manquantes produisent des indices <b>NaN</b>.

## 💡 Exemple

```matlab
s = {'red', 'blue', 'red', ''};
[g, gN, gL] = grp2idx(s)
```

## 🔗 Voir aussi

[grpstats](../../statistics/grpstats.md), [tabulate](../../statistics/tabulate.md), [crosstab](../../statistics/crosstab.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
