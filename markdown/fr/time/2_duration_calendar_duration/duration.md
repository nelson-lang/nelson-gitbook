# duration

Cree des durees de temps ecoule.

## 📝 Syntaxe

- d = duration(h, m, s)
- d = duration(h, m, s, ms)
- d = duration(text)
- d = duration(text, 'InputFormat', fmt)
- d = duration(x)

## 📥 Argument d'entrée

- inputs - Heures, minutes, secondes, millisecondes optionnelles, texte de duree ou matrice numerique N par 3.

## 📤 Argument de sortie

- output - Un tableau duration contenant des secondes ecoulees et un format d affichage.

## 📄 Description


Cree des durees de temps ecoule. 

Le constructeur accepte des composants numeriques et des textes separes par deux-points. Utilisez hours, minutes, seconds, milliseconds, days et years pour construire ou convertir par unite. 

<b>string</b> renvoie le texte affiche de chaque element et <b><missing></b> pour une duree <b>NaN</b> ; l'affichage, <b>char</b> et <b>cellstr</b> conservent le texte NaN (<b>cellstr(d, fmt)</b> utilise le format <b>fmt</b>). <b>duration(missing)</b>, et l'affectation de <b>missing</b> dans un tableau duration, donnent <b>NaN</b>. 

<b>duration.empty(m, n, ...)</b> renvoie un tableau duration vide. Une comparaison avec <b>missing</b> est fausse (<b>~=</b> est vraie), comme avec une duree <b>NaN</b>. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
d = duration(1, 2, 3)
seconds(d)
duration('1:02', 'InputFormat', 'mm:ss')
string(seconds([1 NaN]))

```


## 🔗 Voir aussi

[datetime](../../time/1_create_date_time_arrays/datetime.md), [duration](../../time/2_duration_calendar_duration/duration.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
