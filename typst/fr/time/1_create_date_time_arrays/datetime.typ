#import "../nelson_help.typ": *

= datetime <time:1_create_date_time_arrays.datetime>

Cree des tableaux datetime depuis des composants calendaires, du texte ou des representations numeriques.

== Syntaxe

- #raw("t = datetime()");
- #raw("t = datetime(y, m, d)");
- #raw("t = datetime(y, m, d, h, mi, s)");
- #raw("t = datetime(text, 'InputFormat', fmt)");
- #raw("t = datetime(x, 'ConvertFrom', kind)");

== Argument d'entrée

/ inputs: Annee, mois, jour, composants horaires optionnels, texte, valeurs numeriques et options nom-valeur comme Format, TimeZone, InputFormat, ConvertFrom, Epoch et TicksPerSecond.

== Argument de sortie

/ output: Un tableau datetime contenant les dates serie, le format d affichage et la metadonnee de fuseau horaire.

== Description

Cree des tableaux datetime depuis des composants calendaires, du texte ou des representations numeriques.

 Utilisez datetime pour construire les valeurs temporelles manipulees par les autres fonctions du module. Les matrices numeriques a trois ou six colonnes sont interpretees comme vecteurs date; les composants scalaires et tableaux sont etendus a une taille commune.

 #strong[string]; renvoie le texte formate de chaque element et #strong[\<missing\>]; pour #strong[NaT]; ; l'affichage, #strong[char]; et #strong[cellstr]; conservent le texte NaT (#strong[cellstr(d, fmt)]; utilise le format #strong[fmt];). #strong[datetime(missing)];, et l'affectation de #strong[missing]; dans un tableau datetime, donnent #strong[NaT];.

 #strong[datetime.empty(m, n, ...)]; renvoie un tableau datetime vide ; agrandir un tableau par affectation remplit les nouveaux elements avec #strong[NaT];. Une comparaison avec #strong[missing]; est fausse (#strong[\~\=]; est vraie), comme avec #strong[NaT];.

 #strong[TimeZone]; nomme un fuseau horaire (par exemple #strong['Europe\/Paris'];, #strong['UTC'];, un decalage fixe #strong['+05:30'];, un decalage duration, ou #strong['local']; pour le fuseau du systeme). Le modifier sur un datetime qui a un fuseau conserve les memes instants et deplace l'heure affichee ; sur un datetime sans fuseau il conserve l'heure affichee. Les entrees #strong[posixtime]; et #strong[juliandate]; sont des instants UTC. Des datetime de fuseaux differents se comparent, se soustraient et se concatenent par instant (dans le fuseau du premier operande) ; un datetime avec fuseau ne se combine jamais avec un datetime sans fuseau. Une heure sautee par un changement d'heure est placee apres le saut, une heure ambigue est l'heure d'hiver, et les durees fixes comptent le temps ecoule.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
t = datetime(2024, 5, 17, 13, 14, 15)
[y, m, d] = ymd(t)
posixtime(datetime(1970, 1, 2))

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
