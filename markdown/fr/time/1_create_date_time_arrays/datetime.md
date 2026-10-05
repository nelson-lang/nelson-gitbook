# datetime

Cree des tableaux datetime depuis des composants calendaires, du texte ou des representations numeriques.

## 📝 Syntaxe

- t = datetime()
- t = datetime(y, m, d)
- t = datetime(y, m, d, h, mi, s)
- t = datetime(text, 'InputFormat', fmt)
- t = datetime(x, 'ConvertFrom', kind)

## 📥 Argument d'entrée

- inputs - Annee, mois, jour, composants horaires optionnels, texte, valeurs numeriques et options nom-valeur comme Format, TimeZone, InputFormat, ConvertFrom, Epoch et TicksPerSecond.

## 📤 Argument de sortie

- output - Un tableau datetime contenant les dates serie, le format d affichage et la metadonnee de fuseau horaire.

## 📄 Description


Cree des tableaux datetime depuis des composants calendaires, du texte ou des representations numeriques. 

Utilisez datetime pour construire les valeurs temporelles manipulees par les autres fonctions du module. Les matrices numeriques a trois ou six colonnes sont interpretees comme vecteurs date; les composants scalaires et tableaux sont etendus a une taille commune. 

<b>string</b> renvoie le texte formate de chaque element et <b><missing></b> pour <b>NaT</b> ; l'affichage, <b>char</b> et <b>cellstr</b> conservent le texte NaT (<b>cellstr(d, fmt)</b> utilise le format <b>fmt</b>). <b>datetime(missing)</b>, et l'affectation de <b>missing</b> dans un tableau datetime, donnent <b>NaT</b>. 

<b>datetime.empty(m, n, ...)</b> renvoie un tableau datetime vide ; agrandir un tableau par affectation remplit les nouveaux elements avec <b>NaT</b>. Une comparaison avec <b>missing</b> est fausse (<b>~=</b> est vraie), comme avec <b>NaT</b>. 

<b>TimeZone</b> nomme un fuseau horaire (par exemple <b>'Europe/Paris'</b>, <b>'UTC'</b>, un decalage fixe <b>'+05:30'</b>, un decalage duration, ou <b>'local'</b> pour le fuseau du systeme). Le modifier sur un datetime qui a un fuseau conserve les memes instants et deplace l'heure affichee ; sur un datetime sans fuseau il conserve l'heure affichee. Les entrees <b>posixtime</b> et <b>juliandate</b> sont des instants UTC. Des datetime de fuseaux differents se comparent, se soustraient et se concatenent par instant (dans le fuseau du premier operande) ; un datetime avec fuseau ne se combine jamais avec un datetime sans fuseau. Une heure sautee par un changement d'heure est placee apres le saut, une heure ambigue est l'heure d'hiver, et les durees fixes comptent le temps ecoule. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Exemple

Utilisation de base.

```matlab
t = datetime(2024, 5, 17, 13, 14, 15)
[y, m, d] = ymd(t)
posixtime(datetime(1970, 1, 2))

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
