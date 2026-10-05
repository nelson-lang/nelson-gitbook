#import "nelson_help.typ": *

= Date et Heure

Le module Time fournit des outils pour travailler avec les dates, les heures et les durées dans Nelson.

 Il permet d'interroger l'heure courante, de mesurer le temps écoulé, d'effectuer des calculs sur les dates et heures, de convertir entre différentes représentations temporelles et de gérer des opérations liées au calendrier telles que les années bissextiles et la fin de mois.

 Ce module permet une gestion précise du temps, la planification et la mesure de performance dans les scripts et applications.

== Creation de tableaux de date et heure

Fonctions pour creer des valeurs date et heure et des representations de date alternatives.

=== Functions

- #nlink(<time:1_create_date_time_arrays.NaT>)[NaT]: Cree des valeurs datetime not-a-time.
- #nlink(<time:1_create_date_time_arrays.calendar>)[calendar]: Calendar.
- #nlink(<time:1_create_date_time_arrays.clock>)[clock]: Renvoie la date et l'heure locales actuelles sous forme d'un vecteur date.
- #nlink(<time:1_create_date_time_arrays.date>)[date]: Retourne la date courante sous forme de vecteur de caractères.
- #nlink(<time:1_create_date_time_arrays.datenum>)[datenum]: d \= datenum(...) Convertit différents formats de date en numéro de date série.
- #nlink(<time:1_create_date_time_arrays.datetime>)[datetime]: Cree des tableaux datetime depuis des composants calendaires, du texte ou des representations numeriques.
- #nlink(<time:1_create_date_time_arrays.datevec>)[datevec]: Convertit un numéro de date série en vecteur date.
- #nlink(<time:1_create_date_time_arrays.eomdate>)[eomdate]: Renvoie le numero de date serie du dernier jour d un mois.
- #nlink(<time:1_create_date_time_arrays.eomday>)[eomday]: Retourne le dernier jour du mois.
- #nlink(<time:1_create_date_time_arrays.lweekdate>)[lweekdate]: Renvoie le dernier jour de semaine selectionne dans un mois.
- #nlink(<time:1_create_date_time_arrays.now>)[now]: Renvoie la date et l'heure courantes sous forme de numéro de date série.
- #nlink(<time:1_create_date_time_arrays.nweekdate>)[nweekdate]: Renvoie le n-ieme jour de semaine selectionne dans un mois.
- #nlink(<time:1_create_date_time_arrays.today>)[today]: Renvoie le numero de date serie du jour courant.

== Durees et durees calendaires

Fonctions pour durees de longueur fixe et durees calendaires.

=== Functions

- #nlink(<time:2_duration_calendar_duration.caldays>)[caldays]: Cree des durees calendaires contenant des jours entiers.
- #nlink(<time:2_duration_calendar_duration.calendarDuration>)[calendarDuration]: Cree des durees calendaires avec composants mois, jours et temps.
- #nlink(<time:2_duration_calendar_duration.calmonths>)[calmonths]: Cree des durees calendaires contenant des mois calendaires.
- #nlink(<time:2_duration_calendar_duration.calquarters>)[calquarters]: Cree des durees calendaires contenant des trimestres calendaires.
- #nlink(<time:2_duration_calendar_duration.calweeks>)[calweeks]: Cree des durees calendaires contenant des semaines entieres.
- #nlink(<time:2_duration_calendar_duration.calyears>)[calyears]: Cree des durees calendaires contenant des annees calendaires.
- #nlink(<time:2_duration_calendar_duration.days>)[days]: Cree des durees depuis des jours ou convertit des durees en jours.
- #nlink(<time:2_duration_calendar_duration.duration>)[duration]: Cree des durees de temps ecoule.
- #nlink(<time:2_duration_calendar_duration.hours>)[hours]: Cree des durees depuis des heures ou convertit des durees en heures.
- #nlink(<time:2_duration_calendar_duration.milliseconds>)[milliseconds]: Cree des durees depuis des millisecondes ou convertit des durees en millisecondes.
- #nlink(<time:2_duration_calendar_duration.minutes>)[minutes]: Cree des durees depuis des minutes ou convertit des durees en minutes.
- #nlink(<time:2_duration_calendar_duration.seconds>)[seconds]: Cree des durees depuis des secondes ou extrait les secondes de durees.
- #nlink(<time:2_duration_calendar_duration.years>)[years]: Cree des durees depuis des annees ou convertit des durees en annees.

== Composants de date et heure

Fonctions pour extraire et separer les composants de date et heure.

=== Functions

- #nlink(<time:3_date_time_components.day>)[day]: Extrait les informations de jour de valeurs de date et heure.
- #nlink(<time:3_date_time_components.hms>)[hms]: Separe les valeurs datetime ou duration en heures, minutes et secondes.
- #nlink(<time:3_date_time_components.hour>)[hour]: Composante heures de la date et de l'heure d'entrée.
- #nlink(<time:3_date_time_components.minute>)[minute]: Composante minutes de la date et de l'heure d'entrée.
- #nlink(<time:3_date_time_components.month>)[month]: Extrait les numeros ou noms de mois de valeurs de date et heure.
- #nlink(<time:3_date_time_components.quarter>)[quarter]: Extrait les numeros de trimestre de valeurs de date et heure.
- #nlink(<time:3_date_time_components.second>)[second]: Composante secondes de la date et de l'heure d'entrée.
- #nlink(<time:3_date_time_components.timeofday>)[timeofday]: Renvoie le temps ecoule depuis minuit pour des valeurs datetime.
- #nlink(<time:3_date_time_components.week>)[week]: Calcule les numeros de semaine dans l annee calendaire.
- #nlink(<time:3_date_time_components.weekday>)[weekday]: Renvoie le jour de la semaine.
- #nlink(<time:3_date_time_components.weeknum>)[weeknum]: Renvoie les numeros de semaine dans l annee calendaire.
- #nlink(<time:3_date_time_components.year>)[year]: Extrait les annees de valeurs de date et heure.
- #nlink(<time:3_date_time_components.ymd>)[ymd]: Separe les valeurs datetime en composants annee, mois et jour.

== Calculs et intervalles de dates

Fonctions pour decalages, differences, intervalles de dates et temps ecoule.

=== Functions

- #nlink(<time:4_date_arithmetic_ranges.addtodate>)[addtodate]: Modifier un numéro de date par champ.
- #nlink(<time:4_date_arithmetic_ranges.between>)[between]: Renvoie des durees calendaires entre deux valeurs datetime.
- #nlink(<time:4_date_arithmetic_ranges.caldiff>)[caldiff]: Renvoie les differences calendaires entre valeurs datetime adjacentes.
- #nlink(<time:4_date_arithmetic_ranges.dateshift>)[dateshift]: Decale des valeurs datetime vers des bornes calendaires ou jours de semaine choisis.
- #nlink(<time:4_date_arithmetic_ranges.etime>)[etime]: Temps écoulé entre des vecteurs de date.
- #nlink(<time:4_date_arithmetic_ranges.isbetween>)[isbetween]: Teste si des valeurs datetime appartiennent a un intervalle.
- #nlink(<time:4_date_arithmetic_ranges.months>)[months]: Renvoie les mois calendaires entiers entre deux dates.

== Requetes sur les tableaux de date et heure

Predicats et fonctions de requete pour dates, heures, durees et fuseaux horaires.

=== Functions

- #nlink(<time:5_query_date_time_arrays.iscalendarduration>)[iscalendarduration]: Teste si une entree est un tableau calendarDuration.
- #nlink(<time:5_query_date_time_arrays.isdatetime>)[isdatetime]: Teste si une entree est un tableau datetime.
- #nlink(<time:5_query_date_time_arrays.isdst>)[isdst]: Teste si des valeurs datetime avec fuseau sont en heure d ete.
- #nlink(<time:5_query_date_time_arrays.isduration>)[isduration]: Teste si une entree est un tableau duration.
- #nlink(<time:5_query_date_time_arrays.isnat>)[isnat]: Teste les elements datetime not-a-time.
- #nlink(<time:5_query_date_time_arrays.isregular>)[isregular]: Teste si des valeurs datetime sont regulierement espacees.
- #nlink(<time:5_query_date_time_arrays.istimeseries>)[istimeseries]: Determine si l entree est un objet timeseries.
- #nlink(<time:5_query_date_time_arrays.isweekend>)[isweekend]: Teste si des dates tombent un samedi ou un dimanche.
- #nlink(<time:5_query_date_time_arrays.leapseconds>)[leapseconds]: Renvoie les donnees de secondes intercalaires disponibles pour le module time.
- #nlink(<time:5_query_date_time_arrays.leapyear>)[leapyear]: Déterminer les années bissextiles.
- #nlink(<time:5_query_date_time_arrays.timezones>)[timezones]: Liste les noms de fuseaux horaires disponibles dans la base embarquee.
- #nlink(<time:5_query_date_time_arrays.tzoffset>)[tzoffset]: Renvoie les decalages UTC pour des valeurs datetime avec fuseau horaire.

== Texte et systemes de temps externes

Conversions entre valeurs de date et heure, texte et systemes numeriques de temps externes.

=== Functions

- #nlink(<time:6_text_and_external_time_systems.convertTo>)[convertTo]: Convertit des valeurs datetime vers des representations numeriques choisies.
- #nlink(<time:6_text_and_external_time_systems.datestr>)[datestr]: Convertit une date\/heure en représentation textuelle.
- #nlink(<time:6_text_and_external_time_systems.exceltime>)[exceltime]: Convertit des valeurs datetime en numeros de date serie tableur.
- #nlink(<time:6_text_and_external_time_systems.juliandate>)[juliandate]: Convertit des valeurs datetime en dates juliennes.
- #nlink(<time:6_text_and_external_time_systems.m2xdate>)[m2xdate]: Convertit des dates serie Nelson en numeros de date serie tableur.
- #nlink(<time:6_text_and_external_time_systems.posixtime>)[posixtime]: Convertit des valeurs datetime en secondes ecoulees depuis l epoque POSIX.
- #nlink(<time:6_text_and_external_time_systems.x2mdate>)[x2mdate]: Convertit des numeros de date serie tableur en dates serie Nelson ou datetime.
- #nlink(<time:6_text_and_external_time_systems.yyyymmdd>)[yyyymmdd]: Convertit des dates en nombres calendaires yyyymmdd.

== Timers et mesure du temps

Objets timer, planification, attentes et utilitaires de mesure du temps.

=== Functions

- #nlink(<time:7_timers.cputime>)[cputime]: Renvoie le temps CPU utilisé par votre session Nelson.
- #nlink(<time:7_timers.sleep>)[sleep]: Met en pause l'exécution du code.
- #nlink(<time:7_timers.start>)[start]: Demarrer un objet timer.
- #nlink(<time:7_timers.start>)[timer.start]: Demarrer un objet timer.
- #nlink(<time:7_timers.startat>)[startat]: Demarrer un timer a une date et une heure specifiees.
- #nlink(<time:7_timers.startat>)[timer.startat]: Demarrer un timer a une date et une heure specifiees.
- #nlink(<time:7_timers.stop>)[stop]: Arreter un objet timer en cours d'execution.
- #nlink(<time:7_timers.stop>)[timer.stop]: Arreter un objet timer en cours d'execution.
- #nlink(<time:7_timers.tic>)[tic]: Démarre un chronomètre.
- #nlink(<time:7_timers.time>)[time]: Renvoie l'heure actuelle en secondes ou en nanosecondes depuis l'époque (epoch).
- #nlink(<time:7_timers.timeit>)[timeit]: Mesure le temps nécessaire à l'exécution d'une fonction.
- #nlink(<time:7_timers.timer.delete>)[timer.delete]: Arreter et invalider des objets timer.
- #nlink(<time:7_timers.timer.delete>)[delete timer]: Arreter et invalider des objets timer.
- #nlink(<time:7_timers.timer.get>)[timer.get]: Obtenir les valeurs des proprietes de timer.
- #nlink(<time:7_timers.timer.get>)[get timer]: Obtenir les valeurs des proprietes de timer.
- #nlink(<time:7_timers.timer.isvalid>)[timer.isvalid]: Determiner quels handles de timer sont valides.
- #nlink(<time:7_timers.timer.isvalid>)[isvalid timer]: Determiner quels handles de timer sont valides.
- #nlink(<time:7_timers.timer.set>)[timer.set]: Definir les valeurs des proprietes de timer.
- #nlink(<time:7_timers.timer.set>)[set timer]: Definir les valeurs des proprietes de timer.
- #nlink(<time:7_timers.timer>)[timer]: Creer un objet timer qui execute des commandes apres un delai ou a intervalles repetes.
- #nlink(<time:7_timers.timer>)[objet timer]: Creer un objet timer qui execute des commandes apres un delai ou a intervalles repetes.
- #nlink(<time:7_timers.timer_callback_functions>)[Fonctions de callback de timer]: Definir les commandes executees lors des evenements de timer.
- #nlink(<time:7_timers.timer_callback_functions>)[callbacks de timer]: Definir les commandes executees lors des evenements de timer.
- #nlink(<time:7_timers.timer_callback_functions>)[fonctions de rappel de timer]: Definir les commandes executees lors des evenements de timer.
- #nlink(<time:7_timers.timer_queuing_conflicts>)[Conflits de file de timers]: Controler le comportement lorsque des callbacks de timer sont encore en file quand un timer a cadence fixe se declenche a nouveau.
- #nlink(<time:7_timers.timer_queuing_conflicts>)[gestion des conflits de file de timer]: Controler le comportement lorsque des callbacks de timer sont encore en file quand un timer a cadence fixe se declenche a nouveau.
- #nlink(<time:7_timers.timer_queuing_conflicts>)[busy mode timer]: Controler le comportement lorsque des callbacks de timer sont encore en file quand un timer a cadence fixe se declenche a nouveau.
- #nlink(<time:7_timers.timerfind>)[timerfind]: Trouver les objets timer visibles qui correspondent a des criteres de proprietes.
- #nlink(<time:7_timers.timerfindall>)[timerfindall]: Trouver tous les objets timer qui correspondent a des criteres de proprietes, y compris les timers caches.
- #nlink(<time:7_timers.toc>)[toc]: Lire le chronomètre (stopwatch).
- #nlink(<time:7_timers.wait>)[wait]: Attendre l'arret d'objets timer.
- #nlink(<time:7_timers.wait>)[timer.wait]: Attendre l'arret d'objets timer.

== Series temporelles

Series temporelles, collections, evenements, metadonnees et operations associees.

=== Functions

- #nlink(<time:8_timeseries.timeseries.addevent>)[timeseries.addevent]: Ajoute un evenement a un objet timeseries.
- #nlink(<time:8_timeseries.timeseries.addsample>)[timeseries.addsample]: Ajoute un echantillon a un objet timeseries.
- #nlink(<time:8_timeseries.timeseries.append>)[timeseries.append]: Ajoute des echantillons timeseries.
- #nlink(<time:8_timeseries.timeseries.delevent>)[timeseries.delevent]: Supprime un evenement d'un objet timeseries.
- #nlink(<time:8_timeseries.timeseries.delsample>)[timeseries.delsample]: Supprime des echantillons d'un objet timeseries.
- #nlink(<time:8_timeseries.timeseries.detrend>)[timeseries.detrend]: Supprime une tendance des donnees timeseries.
- #nlink(<time:8_timeseries.timeseries.display>)[timeseries.display]: Affiche un objet timeseries.
- #nlink(<time:8_timeseries.timeseries.eq>)[timeseries.eq]: Compare deux objets timeseries echantillon par echantillon.
- #nlink(<time:8_timeseries.timeseries.filter>)[timeseries.filter]: Filtre les donnees timeseries.
- #nlink(<time:8_timeseries.timeseries.get>)[timeseries.get]: Obtient la valeur d'une propriété d'un timeseries.
- #nlink(<time:8_timeseries.timeseries.getabstime>)[timeseries.getabstime]: Renvoie les temps d'echantillon absolus.
- #nlink(<time:8_timeseries.timeseries.getdatasamples>)[timeseries.getdatasamples]: Renvoie les echantillons de donnees par indice.
- #nlink(<time:8_timeseries.timeseries.getdatasamplesize>)[timeseries.getdatasamplesize]: Renvoie la taille d'un echantillon de donnees.
- #nlink(<time:8_timeseries.timeseries.getinterpmethod>)[timeseries.getinterpmethod]: Renvoie le nom de la methode d'interpolation.
- #nlink(<time:8_timeseries.timeseries.getqualitydesc>)[timeseries.getqualitydesc]: Renvoie les descriptions de qualite pour les codes de qualite.
- #nlink(<time:8_timeseries.timeseries.getsamples>)[timeseries.getsamples]: Renvoie un sous-ensemble timeseries par indice.
- #nlink(<time:8_timeseries.timeseries.getsampleusingtime>)[timeseries.getsampleusingtime]: Renvoie les echantillons selectionnes par temps.
- #nlink(<time:8_timeseries.timeseries.gettsafteratevent>)[timeseries.gettsafteratevent]: Renvoie les echantillons au temps d'un evenement ou apres.
- #nlink(<time:8_timeseries.timeseries.gettsafterevent>)[timeseries.gettsafterevent]: Renvoie les echantillons apres un evenement.
- #nlink(<time:8_timeseries.timeseries.gettsatevent>)[timeseries.gettsatevent]: Renvoie les echantillons au temps d'un evenement.
- #nlink(<time:8_timeseries.timeseries.gettsbeforeatevent>)[timeseries.gettsbeforeatevent]: Renvoie les echantillons au temps d'un evenement ou avant.
- #nlink(<time:8_timeseries.timeseries.gettsbeforeevent>)[timeseries.gettsbeforeevent]: Renvoie les echantillons avant un evenement.
- #nlink(<time:8_timeseries.timeseries.gettsbetweenevents>)[timeseries.gettsbetweenevents]: Renvoie les echantillons entre deux evenements.
- #nlink(<time:8_timeseries.timeseries.idealfilter>)[timeseries.idealfilter]: Applique un filtre ideal dans le domaine frequentiel aux donnees timeseries.
- #nlink(<time:8_timeseries.timeseries.iqr>)[timeseries.iqr]: Écart interquartile des données d'un timeseries.
- #nlink(<time:8_timeseries.timeseries.isequalwithequalnans>)[timeseries.isequalwithequalnans]: Compare des objets timeseries en considerant comme egales les valeurs numeriques manquantes.
- #nlink(<time:8_timeseries.timeseries.ldivide>)[timeseries.ldivide]: Division gauche element par element des donnees timeseries.
- #nlink(<time:8_timeseries.timeseries.loadobj>)[timeseries.loadobj]: Restaure un objet timeseries depuis des donnees sauvegardees.
- #nlink(<time:8_timeseries.timeseries.max>)[timeseries.max]: Maximum des données d'un timeseries.
- #nlink(<time:8_timeseries.timeseries.mean>)[timeseries.mean]: Moyenne des données d'un timeseries.
- #nlink(<time:8_timeseries.timeseries.median>)[timeseries.median]: Médiane des données d'un timeseries.
- #nlink(<time:8_timeseries.timeseries.min>)[timeseries.min]: Minimum des données d'un timeseries.
- #nlink(<time:8_timeseries.timeseries.minus>)[timeseries.minus]: Soustrait des donnees timeseries.
- #nlink(<time:8_timeseries.timeseries.mldivide>)[timeseries.mldivide]: Division matricielle gauche pour les donnees timeseries.
- #nlink(<time:8_timeseries.timeseries.mode>)[timeseries.mode]: Mode des données d'un timeseries.
- #nlink(<time:8_timeseries.timeseries.mrdivide>)[timeseries.mrdivide]: Division matricielle droite pour les donnees timeseries.
- #nlink(<time:8_timeseries.timeseries.mtimes>)[timeseries.mtimes]: Multiplication matricielle pour les donnees timeseries.
- #nlink(<time:8_timeseries.timeseries.plot>)[timeseries.plot]: Trace les donnees timeseries en fonction du temps.
- #nlink(<time:8_timeseries.timeseries.plus>)[timeseries.plus]: Ajoute des donnees timeseries.
- #nlink(<time:8_timeseries.timeseries.rdivide>)[timeseries.rdivide]: Division droite element par element des donnees timeseries.
- #nlink(<time:8_timeseries.timeseries.resample>)[timeseries.resample]: Reechantillonne un objet timeseries a de nouveaux temps.
- #nlink(<time:8_timeseries.timeseries.set>)[timeseries.set]: Définit les valeurs des propriétés d'un timeseries.
- #nlink(<time:8_timeseries.timeseries.setabstime>)[timeseries.setabstime]: Definit la date de debut absolue des temps d'echantillon.
- #nlink(<time:8_timeseries.timeseries.setinterpmethod>)[timeseries.setinterpmethod]: Definit la methode d'interpolation.
- #nlink(<time:8_timeseries.timeseries.setuniformtime>)[timeseries.setuniformtime]: Definit un vecteur de temps a pas uniforme.
- #nlink(<time:8_timeseries.timeseries.std>)[timeseries.std]: Écart-type des données d'un timeseries.
- #nlink(<time:8_timeseries.timeseries.sum>)[timeseries.sum]: Somme des données d'un timeseries.
- #nlink(<time:8_timeseries.timeseries.synchronize>)[timeseries.synchronize]: Synchronise deux objets timeseries ou plus.
- #nlink(<time:8_timeseries.timeseries.times>)[timeseries.times]: Multiplication element par element des donnees timeseries.
- #nlink(<time:8_timeseries.timeseries.uminus>)[timeseries.uminus]: Change le signe des donnees timeseries.
- #nlink(<time:8_timeseries.timeseries.uplus>)[timeseries.uplus]: Plus unaire pour les données d'un timeseries.
- #nlink(<time:8_timeseries.timeseries.var>)[timeseries.var]: Variance des données d'un timeseries.
- #nlink(<time:8_timeseries.timeseries>)[timeseries]: Cree des donnees de serie temporelle.
- #nlink(<time:8_timeseries.tscollection.addsampletocollection>)[tscollection.addsampletocollection]: Fonction utilitaire pour les séries temporelles.
- #nlink(<time:8_timeseries.tscollection.addts>)[tscollection.addts]: Fonction utilitaire pour les séries temporelles.
- #nlink(<time:8_timeseries.tscollection.delsamplefromcollection>)[tscollection.delsamplefromcollection]: Fonction utilitaire pour les séries temporelles.
- #nlink(<time:8_timeseries.tscollection.display>)[tscollection.display]: Affiche un objet tscollection.
- #nlink(<time:8_timeseries.tscollection.get>)[tscollection.get]: Fonction pour objets de serie temporelle.
- #nlink(<time:8_timeseries.tscollection.getabstime>)[tscollection.getabstime]: Fonction utilitaire pour les séries temporelles.
- #nlink(<time:8_timeseries.tscollection.getsampleusingtime>)[tscollection.getsampleusingtime]: Fonction utilitaire pour les séries temporelles.
- #nlink(<time:8_timeseries.tscollection.gettimeseriesnames>)[tscollection.gettimeseriesnames]: Fonction utilitaire pour les séries temporelles.
- #nlink(<time:8_timeseries.tscollection.horzcat>)[tscollection.horzcat]: Fonction pour objets de serie temporelle.
- #nlink(<time:8_timeseries.tscollection.loadobj>)[tscollection.loadobj]: Restaure un objet tscollection depuis des donnees sauvegardees.
- #nlink(<time:8_timeseries.tscollection.properties>)[tscollection.properties]: Fonction pour objets de serie temporelle.
- #nlink(<time:8_timeseries.tscollection.removets>)[tscollection.removets]: Fonction utilitaire pour les séries temporelles.
- #nlink(<time:8_timeseries.tscollection.resample>)[tscollection.resample]: Fonction utilitaire pour les séries temporelles.
- #nlink(<time:8_timeseries.tscollection.set>)[tscollection.set]: Fonction pour objets de serie temporelle.
- #nlink(<time:8_timeseries.tscollection.setTimeseriesName>)[tscollection.setTimeseriesName]: Fonction pour objets de serie temporelle.
- #nlink(<time:8_timeseries.tscollection.setabstime>)[tscollection.setabstime]: Fonction utilitaire pour les séries temporelles.
- #nlink(<time:8_timeseries.tscollection.settimeseriesnames>)[tscollection.settimeseriesnames]: Fonction pour objets de serie temporelle.
- #nlink(<time:8_timeseries.tscollection.vertcat>)[tscollection.vertcat]: Fonction pour objets de serie temporelle.
- #nlink(<time:8_timeseries.tscollection>)[tscollection]: Cree une collection de series temporelles alignees.
- #nlink(<time:8_timeseries.tsdata.datametadata>)[tsdata.datametadata]: Fonction pour objets de serie temporelle.
- #nlink(<time:8_timeseries.tsdata.event>)[tsdata.event]: Fonction pour objets de serie temporelle.
- #nlink(<time:8_timeseries.tsdata.interpolation>)[tsdata.interpolation]: Fonction pour objets de serie temporelle.
- #nlink(<time:8_timeseries.tsdata.qualmetadata>)[tsdata.qualmetadata]: Fonction pour objets de serie temporelle.
- #nlink(<time:8_timeseries.tsdata.timemetadata>)[tsdata.timemetadata]: Fonction pour objets de serie temporelle.


#nested[
#pagebreak(weak: true)
#include "1_create_date_time_arrays/NaT.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/calendar.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/clock.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/date.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/datenum.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/datetime.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/datevec.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/eomdate.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/eomday.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/lweekdate.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/now.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/nweekdate.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/today.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/caldays.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/calendarDuration.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/calmonths.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/calquarters.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/calweeks.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/calyears.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/days.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/duration.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/hours.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/milliseconds.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/minutes.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/seconds.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/years.typ"
#pagebreak(weak: true)
#include "3_date_time_components/day.typ"
#pagebreak(weak: true)
#include "3_date_time_components/hms.typ"
#pagebreak(weak: true)
#include "3_date_time_components/hour.typ"
#pagebreak(weak: true)
#include "3_date_time_components/minute.typ"
#pagebreak(weak: true)
#include "3_date_time_components/month.typ"
#pagebreak(weak: true)
#include "3_date_time_components/quarter.typ"
#pagebreak(weak: true)
#include "3_date_time_components/second.typ"
#pagebreak(weak: true)
#include "3_date_time_components/timeofday.typ"
#pagebreak(weak: true)
#include "3_date_time_components/week.typ"
#pagebreak(weak: true)
#include "3_date_time_components/weekday.typ"
#pagebreak(weak: true)
#include "3_date_time_components/weeknum.typ"
#pagebreak(weak: true)
#include "3_date_time_components/year.typ"
#pagebreak(weak: true)
#include "3_date_time_components/ymd.typ"
#pagebreak(weak: true)
#include "4_date_arithmetic_ranges/addtodate.typ"
#pagebreak(weak: true)
#include "4_date_arithmetic_ranges/between.typ"
#pagebreak(weak: true)
#include "4_date_arithmetic_ranges/caldiff.typ"
#pagebreak(weak: true)
#include "4_date_arithmetic_ranges/dateshift.typ"
#pagebreak(weak: true)
#include "4_date_arithmetic_ranges/etime.typ"
#pagebreak(weak: true)
#include "4_date_arithmetic_ranges/isbetween.typ"
#pagebreak(weak: true)
#include "4_date_arithmetic_ranges/months.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/iscalendarduration.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/isdatetime.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/isdst.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/isduration.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/isnat.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/isregular.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/istimeseries.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/isweekend.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/leapseconds.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/leapyear.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/timezones.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/tzoffset.typ"
#pagebreak(weak: true)
#include "6_text_and_external_time_systems/convertTo.typ"
#pagebreak(weak: true)
#include "6_text_and_external_time_systems/datestr.typ"
#pagebreak(weak: true)
#include "6_text_and_external_time_systems/exceltime.typ"
#pagebreak(weak: true)
#include "6_text_and_external_time_systems/juliandate.typ"
#pagebreak(weak: true)
#include "6_text_and_external_time_systems/m2xdate.typ"
#pagebreak(weak: true)
#include "6_text_and_external_time_systems/posixtime.typ"
#pagebreak(weak: true)
#include "6_text_and_external_time_systems/x2mdate.typ"
#pagebreak(weak: true)
#include "6_text_and_external_time_systems/yyyymmdd.typ"
#pagebreak(weak: true)
#include "7_timers/cputime.typ"
#pagebreak(weak: true)
#include "7_timers/sleep.typ"
#pagebreak(weak: true)
#include "7_timers/start.typ"
#pagebreak(weak: true)
#include "7_timers/startat.typ"
#pagebreak(weak: true)
#include "7_timers/stop.typ"
#pagebreak(weak: true)
#include "7_timers/tic.typ"
#pagebreak(weak: true)
#include "7_timers/time.typ"
#pagebreak(weak: true)
#include "7_timers/timeit.typ"
#pagebreak(weak: true)
#include "7_timers/timer.delete.typ"
#pagebreak(weak: true)
#include "7_timers/timer.get.typ"
#pagebreak(weak: true)
#include "7_timers/timer.isvalid.typ"
#pagebreak(weak: true)
#include "7_timers/timer.set.typ"
#pagebreak(weak: true)
#include "7_timers/timer.typ"
#pagebreak(weak: true)
#include "7_timers/timer_callback_functions.typ"
#pagebreak(weak: true)
#include "7_timers/timer_queuing_conflicts.typ"
#pagebreak(weak: true)
#include "7_timers/timerfind.typ"
#pagebreak(weak: true)
#include "7_timers/timerfindall.typ"
#pagebreak(weak: true)
#include "7_timers/toc.typ"
#pagebreak(weak: true)
#include "7_timers/wait.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.addevent.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.addsample.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.append.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.delevent.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.delsample.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.detrend.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.display.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.eq.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.filter.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.get.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.getabstime.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.getdatasamples.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.getdatasamplesize.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.getinterpmethod.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.getqualitydesc.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.getsamples.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.getsampleusingtime.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.gettsafteratevent.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.gettsafterevent.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.gettsatevent.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.gettsbeforeatevent.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.gettsbeforeevent.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.gettsbetweenevents.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.idealfilter.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.iqr.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.isequalwithequalnans.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.ldivide.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.loadobj.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.max.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.mean.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.median.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.min.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.minus.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.mldivide.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.mode.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.mrdivide.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.mtimes.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.plot.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.plus.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.rdivide.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.resample.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.set.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.setabstime.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.setinterpmethod.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.setuniformtime.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.std.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.sum.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.synchronize.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.times.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.uminus.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.uplus.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.var.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.addsampletocollection.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.addts.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.delsamplefromcollection.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.display.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.get.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.getabstime.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.getsampleusingtime.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.gettimeseriesnames.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.horzcat.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.loadobj.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.properties.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.removets.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.resample.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.set.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.setTimeseriesName.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.setabstime.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.settimeseriesnames.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.vertcat.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.typ"
#pagebreak(weak: true)
#include "8_timeseries/tsdata.datametadata.typ"
#pagebreak(weak: true)
#include "8_timeseries/tsdata.event.typ"
#pagebreak(weak: true)
#include "8_timeseries/tsdata.interpolation.typ"
#pagebreak(weak: true)
#include "8_timeseries/tsdata.qualmetadata.typ"
#pagebreak(weak: true)
#include "8_timeseries/tsdata.timemetadata.typ"
]
