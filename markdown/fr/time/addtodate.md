# addtodate

Modifier un numéro de date par champ.

## 📝 Syntaxe

- r = addtodate(d, q, f)

## 📥 Argument d'entrée

- d - numéro de date série.
- q - quantité à ajouter au champ de date
- f - 'year', 'month', 'day', 'hour', 'minute', 'second' ou 'millisecond'.

## 📤 Argument de sortie

- r - numéro de date résultant.

## 📄 Description

<b>r = addtodate(d, q, f)</b> ajoute la quantité <b>q</b> au champ de date indiqué <b>f</b> d'un numéro de date série scalaire <b>d</b>, et renvoie le numéro de date mis à jour <b>r</b>.

## 💡 Exemple

```matlab
t = datenum('07-Apr-2008 23:00:00');datevec(t)
t2 = addtodate(t, -2, 'hour');datevec(t2)
t3 = addtodate(t, 4, 'hour');datevec(t3)
```

## 🔗 Voir aussi

[datenum](../time/datenum.md), [datevec](../time/datevec.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
