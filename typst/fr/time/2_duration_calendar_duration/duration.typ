#import "../nelson_help.typ": *

= duration <time:2_duration_calendar_duration.duration>

Cree des durees de temps ecoule.

== Syntaxe

- #raw("d = duration(h, m, s)");
- #raw("d = duration(h, m, s, ms)");
- #raw("d = duration(text)");
- #raw("d = duration(text, 'InputFormat', fmt)");
- #raw("d = duration(x)");

== Argument d'entrée

/ inputs: Heures, minutes, secondes, millisecondes optionnelles, texte de duree ou matrice numerique N par 3.

== Argument de sortie

/ output: Un tableau duration contenant des secondes ecoulees et un format d affichage.

== Description

Cree des durees de temps ecoule.

 Le constructeur accepte des composants numeriques et des textes separes par deux-points. Utilisez hours, minutes, seconds, milliseconds, days et years pour construire ou convertir par unite.

 #strong[string]; renvoie le texte affiche de chaque element et #strong[\<missing\>]; pour une duree #strong[NaN]; ; l'affichage, #strong[char]; et #strong[cellstr]; conservent le texte NaN (#strong[cellstr(d, fmt)]; utilise le format #strong[fmt];). #strong[duration(missing)];, et l'affectation de #strong[missing]; dans un tableau duration, donnent #strong[NaN];.

 #strong[duration.empty(m, n, ...)]; renvoie un tableau duration vide. Une comparaison avec #strong[missing]; est fausse (#strong[\~\=]; est vraie), comme avec une duree #strong[NaN];.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
d = duration(1, 2, 3)
seconds(d)
duration('1:02', 'InputFormat', 'mm:ss')
string(seconds([1 NaN]))

``````


== Voir aussi

#nlink(<time:1_create_date_time_arrays.datetime>)[datetime];, #nlink(<time:2_duration_calendar_duration.duration>)[duration];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
