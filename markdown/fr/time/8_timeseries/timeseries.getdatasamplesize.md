# timeseries.getdatasamplesize

Renvoie la taille d'un echantillon de donnees.

## 📝 Syntaxe

- sz = getdatasamplesize(ts)

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.

## 📤 Argument de sortie

- sz - Taille d'un seul echantillon de donnees.

## 📄 Description

<b>getdatasamplesize</b> Renvoie les dimensions d'un seul echantillon, sans la dimension temporelle.

## 💡 Exemple

```matlab
ts = timeseries([1 10; 2 20; 3 30], [1; 2; 3]);
getdatasamplesize(ts)

```

## 🔗 Voir aussi

[timeseries](../../time/timeseries.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
