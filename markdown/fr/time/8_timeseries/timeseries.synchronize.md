# timeseries.synchronize

Synchronise deux objets timeseries ou plus.

## 📝 Syntaxe

- [ts1Out, ts2Out] = synchronize(ts1, ts2)
- [out1, out2, out3] = synchronize(ts1, ts2, ts3)

## 📥 Argument d'entrée

- ts1 - Premier objet timeseries.
- ts2 - Second objet timeseries.

## 📤 Argument de sortie

- ts1Out - Premier objet timeseries reechantillonne sur le vecteur de temps commun.
- ts2Out - Second objet timeseries reechantillonne sur le vecteur de temps commun.

## 📄 Description

<b>synchronize</b> Construit un vecteur de temps commun a partir de tous les objets d'entree et reechantillonne chaque serie sur ce vecteur.

## 💡 Exemple

```matlab
a = timeseries([1; 2], [1; 2]);
b = timeseries([10; 30], [1; 3]);
[a2, b2] = synchronize(a, b);
b2.Time

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
