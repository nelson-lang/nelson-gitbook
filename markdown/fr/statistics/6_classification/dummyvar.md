# dummyvar

Cree des variables indicatrices depuis des variables de groupe.

## 📝 Syntaxe

- D = dummyvar(group)

## 📄 Description

<b>dummyvar</b> cree une matrice numerique de colonnes indicatrices pour les variables de groupe dans <b>group</b>.

Chaque colonne de matrice numerique, vecteur categoriel, vecteur texte ou element de cellule dans <b>group</b> contribue un bloc de variables indicatrices. Les valeurs de groupe manquantes produisent des lignes <b>NaN</b> dans leur bloc.

## 💡 Exemple

```matlab
Colors = categorical({'Red'; 'Blue'; 'Green'; 'Red'; 'Green'; 'Blue'});
D = dummyvar(Colors)
```

## 🔗 Voir aussi

[grp2idx](../../statistics/grp2idx.md), [anova1](../../statistics/anova1.md), [x2fx](../../statistics/x2fx.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
