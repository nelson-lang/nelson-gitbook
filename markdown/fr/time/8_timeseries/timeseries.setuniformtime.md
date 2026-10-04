# timeseries.setuniformtime

Definit un vecteur de temps a pas uniforme.

## 📝 Syntaxe

- tsOut = setuniformtime(ts, 'StartTime', startTime, 'Interval', step, 'Length', n)

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.
- startTime - Temps du premier echantillon.
- step - Pas uniforme entre les echantillons.
- n - Nombre d'echantillons.

## 📤 Argument de sortie

- tsOut - Objet timeseries de sortie avec un vecteur de temps a pas uniforme.

## 📄 Description

<b>setuniformtime</b> Genere un vecteur de temps uniforme a partir des parametres nom-valeur et l'assigne a l'objet.

## 💡 Exemple

```matlab
ts = timeseries([1; 2; 3; 4]);
ts = setuniformtime(ts, 'StartTime', 0, 'Interval', 2, 'Length', 4);
ts.Time

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
