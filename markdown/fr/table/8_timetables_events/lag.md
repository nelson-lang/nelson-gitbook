# lag

Decaler les donnees d'une timetable par lignes.

## 📝 Syntaxe

- TT2 = lag(TT, n)

## 📥 Argument d'entrée

- TT - Timetable d'entree.
- n - Decalage entier en lignes.

## 📤 Argument de sortie

- TT2 - Timetable decalee.

## 📄 Description


<b>lag</b> decale les variables d'une timetable de <b>n</b> lignes en conservant les temps de lignes.

## 💡 Exemple


```matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
lag(TT)

```


## 🔗 Voir aussi

[timetable](../../table/1_create_convert_tables/timetable.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
