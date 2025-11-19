# weekday

Renvoie le jour de la semaine.

## 📝 Syntaxe

- number = weekday(D)
- [number, name] = weekday(D)
- [number, name] = weekday(D, form)
- [number, name] = weekday(D, language)
- [number, name] = weekday(D, form, language)

## 📥 Argument d'entrée

- D - numéros de date série ou texte représentant des dates et heures (vecteur, matrice, vecteur de caractères, cellule de vecteurs de caractères, tableau de chaînes ou tableau de caractères).
- form - une chaîne : 'short' (par défaut) ou 'long'.
- language - une chaîne : 'fr_FR' (par défaut) ou 'local'.

## 📤 Argument de sortie

- number - tableau d'entiers dans l'intervalle [1, 7].
- name - tableau de caractères. Si 'local' est utilisé et que la traduction du nom du jour est disponible, la sortie utilisera la langue locale courante.

## 📄 Description

<b>weekday</b> renvoie le jour de la semaine sous forme numérique dans<b>number</b> et sous forme textuelle dans <b>name</b>.

## 💡 Exemple

```matlab

[DayNumber, DayName] = weekday(datenum('12-21-2012'), 'long', 'fr_FR')
[DayNumber, DayName] = weekday(datenum('12-21-2012'), 'long', 'local')

```

## 🔗 Voir aussi

[datevec](../time/datevec.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
