# Date et Heure

Le module Time fournit des outils pour travailler avec les dates, les heures et les durées dans Nelson.

Il permet d'interroger l'heure courante, de mesurer le temps écoulé, d'effectuer des calculs sur les dates et heures, de convertir entre différentes représentations temporelles et de gérer des opérations liées au calendrier telles que les années bissextiles et la fin de mois.

Ce module permet une gestion précise du temps, la planification et la mesure de performance dans les scripts et applications.

## Creation de tableaux de date et heure

Fonctions pour creer des valeurs date et heure et des representations de date alternatives.

### Functions

- [NaT](1_create_date_time_arrays/NaT.md) - Cree des valeurs datetime not-a-time.
- [calendar](1_create_date_time_arrays/calendar.md) - Calendar.
- [clock](1_create_date_time_arrays/clock.md) - Renvoie la date et l'heure locales actuelles sous forme d'un vecteur date.
- [date](1_create_date_time_arrays/date.md) - Retourne la date courante sous forme de vecteur de caractères.
- [datenum](1_create_date_time_arrays/datenum.md) - d = datenum(...) Convertit différents formats de date en numéro de date série.
- [datetime](1_create_date_time_arrays/datetime.md) - Cree des tableaux datetime depuis des composants calendaires, du texte ou des representations numeriques.
- [datevec](1_create_date_time_arrays/datevec.md) - Convertit un numéro de date série en vecteur date.
- [eomdate](1_create_date_time_arrays/eomdate.md) - Renvoie le numero de date serie du dernier jour d un mois.
- [eomday](1_create_date_time_arrays/eomday.md) - Retourne le dernier jour du mois.
- [lweekdate](1_create_date_time_arrays/lweekdate.md) - Renvoie le dernier jour de semaine selectionne dans un mois.
- [now](1_create_date_time_arrays/now.md) - Renvoie la date et l'heure courantes sous forme de numéro de date série.
- [nweekdate](1_create_date_time_arrays/nweekdate.md) - Renvoie le n-ieme jour de semaine selectionne dans un mois.
- [today](1_create_date_time_arrays/today.md) - Renvoie le numero de date serie du jour courant.

## Durees et durees calendaires

Fonctions pour durees de longueur fixe et durees calendaires.

### Functions

- [caldays](2_duration_calendar_duration/caldays.md) - Cree des durees calendaires contenant des jours entiers.
- [calendarDuration](2_duration_calendar_duration/calendarDuration.md) - Cree des durees calendaires avec composants mois, jours et temps.
- [calmonths](2_duration_calendar_duration/calmonths.md) - Cree des durees calendaires contenant des mois calendaires.
- [calquarters](2_duration_calendar_duration/calquarters.md) - Cree des durees calendaires contenant des trimestres calendaires.
- [calweeks](2_duration_calendar_duration/calweeks.md) - Cree des durees calendaires contenant des semaines entieres.
- [calyears](2_duration_calendar_duration/calyears.md) - Cree des durees calendaires contenant des annees calendaires.
- [days](2_duration_calendar_duration/days.md) - Cree des durees depuis des jours ou convertit des durees en jours.
- [duration](2_duration_calendar_duration/duration.md) - Cree des durees de temps ecoule.
- [hours](2_duration_calendar_duration/hours.md) - Cree des durees depuis des heures ou convertit des durees en heures.
- [milliseconds](2_duration_calendar_duration/milliseconds.md) - Cree des durees depuis des millisecondes ou convertit des durees en millisecondes.
- [minutes](2_duration_calendar_duration/minutes.md) - Cree des durees depuis des minutes ou convertit des durees en minutes.
- [seconds](2_duration_calendar_duration/seconds.md) - Cree des durees depuis des secondes ou extrait les secondes de durees.
- [years](2_duration_calendar_duration/years.md) - Cree des durees depuis des annees ou convertit des durees en annees.

## Composants de date et heure

Fonctions pour extraire et separer les composants de date et heure.

### Functions

- [day](3_date_time_components/day.md) - Extrait les informations de jour de valeurs de date et heure.
- [hms](3_date_time_components/hms.md) - Separe les valeurs datetime ou duration en heures, minutes et secondes.
- [hour](3_date_time_components/hour.md) - Composante heures de la date et de l'heure d'entrée.
- [minute](3_date_time_components/minute.md) - Composante minutes de la date et de l'heure d'entrée.
- [month](3_date_time_components/month.md) - Extrait les numeros ou noms de mois de valeurs de date et heure.
- [quarter](3_date_time_components/quarter.md) - Extrait les numeros de trimestre de valeurs de date et heure.
- [second](3_date_time_components/second.md) - Composante secondes de la date et de l'heure d'entrée.
- [timeofday](3_date_time_components/timeofday.md) - Renvoie le temps ecoule depuis minuit pour des valeurs datetime.
- [week](3_date_time_components/week.md) - Calcule les numeros de semaine dans l annee calendaire.
- [weekday](3_date_time_components/weekday.md) - Renvoie le jour de la semaine.
- [weeknum](3_date_time_components/weeknum.md) - Renvoie les numeros de semaine dans l annee calendaire.
- [year](3_date_time_components/year.md) - Extrait les annees de valeurs de date et heure.
- [ymd](3_date_time_components/ymd.md) - Separe les valeurs datetime en composants annee, mois et jour.

## Calculs et intervalles de dates

Fonctions pour decalages, differences, intervalles de dates et temps ecoule.

### Functions

- [addtodate](4_date_arithmetic_ranges/addtodate.md) - Modifier un numéro de date par champ.
- [between](4_date_arithmetic_ranges/between.md) - Renvoie des durees calendaires entre deux valeurs datetime.
- [caldiff](4_date_arithmetic_ranges/caldiff.md) - Renvoie les differences calendaires entre valeurs datetime adjacentes.
- [dateshift](4_date_arithmetic_ranges/dateshift.md) - Decale des valeurs datetime vers des bornes calendaires ou jours de semaine choisis.
- [etime](4_date_arithmetic_ranges/etime.md) - Temps écoulé entre des vecteurs de date.
- [isbetween](4_date_arithmetic_ranges/isbetween.md) - Teste si des valeurs datetime appartiennent a un intervalle.
- [months](4_date_arithmetic_ranges/months.md) - Renvoie les mois calendaires entiers entre deux dates.

## Requetes sur les tableaux de date et heure

Predicats et fonctions de requete pour dates, heures, durees et fuseaux horaires.

### Functions

- [iscalendarduration](5_query_date_time_arrays/iscalendarduration.md) - Teste si une entree est un tableau calendarDuration.
- [isdatetime](5_query_date_time_arrays/isdatetime.md) - Teste si une entree est un tableau datetime.
- [isdst](5_query_date_time_arrays/isdst.md) - Teste si des valeurs datetime avec fuseau sont en heure d ete.
- [isduration](5_query_date_time_arrays/isduration.md) - Teste si une entree est un tableau duration.
- [isnat](5_query_date_time_arrays/isnat.md) - Teste les elements datetime not-a-time.
- [isregular](5_query_date_time_arrays/isregular.md) - Teste si des valeurs datetime sont regulierement espacees.
- [istimeseries](5_query_date_time_arrays/istimeseries.md) - Determine si l entree est un objet timeseries.
- [isweekend](5_query_date_time_arrays/isweekend.md) - Teste si des dates tombent un samedi ou un dimanche.
- [leapseconds](5_query_date_time_arrays/leapseconds.md) - Renvoie les donnees de secondes intercalaires disponibles pour le module time.
- [leapyear](5_query_date_time_arrays/leapyear.md) - Déterminer les années bissextiles.
- [timezones](5_query_date_time_arrays/timezones.md) - Liste les noms de fuseaux horaires disponibles dans la base embarquee.
- [tzoffset](5_query_date_time_arrays/tzoffset.md) - Renvoie les decalages UTC pour des valeurs datetime avec fuseau horaire.

## Texte et systemes de temps externes

Conversions entre valeurs de date et heure, texte et systemes numeriques de temps externes.

### Functions

- [convertTo](6_text_and_external_time_systems/convertTo.md) - Convertit des valeurs datetime vers des representations numeriques choisies.
- [datestr](6_text_and_external_time_systems/datestr.md) - Convertit une date/heure en représentation textuelle.
- [exceltime](6_text_and_external_time_systems/exceltime.md) - Convertit des valeurs datetime en numeros de date serie tableur.
- [juliandate](6_text_and_external_time_systems/juliandate.md) - Convertit des valeurs datetime en dates juliennes.
- [m2xdate](6_text_and_external_time_systems/m2xdate.md) - Convertit des dates serie Nelson en numeros de date serie tableur.
- [posixtime](6_text_and_external_time_systems/posixtime.md) - Convertit des valeurs datetime en secondes ecoulees depuis l epoque POSIX.
- [x2mdate](6_text_and_external_time_systems/x2mdate.md) - Convertit des numeros de date serie tableur en dates serie Nelson ou datetime.
- [yyyymmdd](6_text_and_external_time_systems/yyyymmdd.md) - Convertit des dates en nombres calendaires yyyymmdd.

## Timers et mesure du temps

Objets timer, planification, attentes et utilitaires de mesure du temps.

### Functions

- [cputime](7_timers/cputime.md) - Renvoie le temps CPU utilisé par votre session Nelson.
- [sleep](7_timers/sleep.md) - Met en pause l'exécution du code.
- [start](7_timers/start.md) - Demarrer un objet timer.
- [timer.start](7_timers/start.md) - Demarrer un objet timer.
- [startat](7_timers/startat.md) - Demarrer un timer a une date et une heure specifiees.
- [timer.startat](7_timers/startat.md) - Demarrer un timer a une date et une heure specifiees.
- [stop](7_timers/stop.md) - Arreter un objet timer en cours d'execution.
- [timer.stop](7_timers/stop.md) - Arreter un objet timer en cours d'execution.
- [tic](7_timers/tic.md) - Démarre un chronomètre.
- [time](7_timers/time.md) - Renvoie l'heure actuelle en secondes ou en nanosecondes depuis l'époque (epoch).
- [timeit](7_timers/timeit.md) - Mesure le temps nécessaire à l'exécution d'une fonction.
- [timer.delete](7_timers/timer.delete.md) - Arreter et invalider des objets timer.
- [delete timer](7_timers/timer.delete.md) - Arreter et invalider des objets timer.
- [timer.get](7_timers/timer.get.md) - Obtenir les valeurs des proprietes de timer.
- [get timer](7_timers/timer.get.md) - Obtenir les valeurs des proprietes de timer.
- [timer.isvalid](7_timers/timer.isvalid.md) - Determiner quels handles de timer sont valides.
- [isvalid timer](7_timers/timer.isvalid.md) - Determiner quels handles de timer sont valides.
- [timer.set](7_timers/timer.set.md) - Definir les valeurs des proprietes de timer.
- [set timer](7_timers/timer.set.md) - Definir les valeurs des proprietes de timer.
- [timer](7_timers/timer.md) - Creer un objet timer qui execute des commandes apres un delai ou a intervalles repetes.
- [objet timer](7_timers/timer.md) - Creer un objet timer qui execute des commandes apres un delai ou a intervalles repetes.
- [Fonctions de callback de timer](7_timers/timer_callback_functions.md) - Definir les commandes executees lors des evenements de timer.
- [callbacks de timer](7_timers/timer_callback_functions.md) - Definir les commandes executees lors des evenements de timer.
- [fonctions de rappel de timer](7_timers/timer_callback_functions.md) - Definir les commandes executees lors des evenements de timer.
- [Conflits de file de timers](7_timers/timer_queuing_conflicts.md) - Controler le comportement lorsque des callbacks de timer sont encore en file quand un timer a cadence fixe se declenche a nouveau.
- [gestion des conflits de file de timer](7_timers/timer_queuing_conflicts.md) - Controler le comportement lorsque des callbacks de timer sont encore en file quand un timer a cadence fixe se declenche a nouveau.
- [busy mode timer](7_timers/timer_queuing_conflicts.md) - Controler le comportement lorsque des callbacks de timer sont encore en file quand un timer a cadence fixe se declenche a nouveau.
- [timerfind](7_timers/timerfind.md) - Trouver les objets timer visibles qui correspondent a des criteres de proprietes.
- [timerfindall](7_timers/timerfindall.md) - Trouver tous les objets timer qui correspondent a des criteres de proprietes, y compris les timers caches.
- [toc](7_timers/toc.md) - Lire le chronomètre (stopwatch).
- [wait](7_timers/wait.md) - Attendre l'arret d'objets timer.
- [timer.wait](7_timers/wait.md) - Attendre l'arret d'objets timer.

## Series temporelles

Series temporelles, collections, evenements, metadonnees et operations associees.

### Functions

- [timeseries.addevent](8_timeseries/timeseries.addevent.md) - Ajoute un evenement a un objet timeseries.
- [timeseries.addsample](8_timeseries/timeseries.addsample.md) - Ajoute un echantillon a un objet timeseries.
- [timeseries.append](8_timeseries/timeseries.append.md) - Ajoute des echantillons timeseries.
- [timeseries.delevent](8_timeseries/timeseries.delevent.md) - Supprime un evenement d'un objet timeseries.
- [timeseries.delsample](8_timeseries/timeseries.delsample.md) - Supprime des echantillons d'un objet timeseries.
- [timeseries.detrend](8_timeseries/timeseries.detrend.md) - Supprime une tendance des donnees timeseries.
- [timeseries.display](8_timeseries/timeseries.display.md) - Affiche un objet timeseries.
- [timeseries.eq](8_timeseries/timeseries.eq.md) - Compare deux objets timeseries echantillon par echantillon.
- [timeseries.filter](8_timeseries/timeseries.filter.md) - Filtre les donnees timeseries.
- [timeseries.get](8_timeseries/timeseries.get.md) - Obtient la valeur d'une propriété d'un timeseries.
- [timeseries.getabstime](8_timeseries/timeseries.getabstime.md) - Renvoie les temps d'echantillon absolus.
- [timeseries.getdatasamples](8_timeseries/timeseries.getdatasamples.md) - Renvoie les echantillons de donnees par indice.
- [timeseries.getdatasamplesize](8_timeseries/timeseries.getdatasamplesize.md) - Renvoie la taille d'un echantillon de donnees.
- [timeseries.getinterpmethod](8_timeseries/timeseries.getinterpmethod.md) - Renvoie le nom de la methode d'interpolation.
- [timeseries.getqualitydesc](8_timeseries/timeseries.getqualitydesc.md) - Renvoie les descriptions de qualite pour les codes de qualite.
- [timeseries.getsamples](8_timeseries/timeseries.getsamples.md) - Renvoie un sous-ensemble timeseries par indice.
- [timeseries.getsampleusingtime](8_timeseries/timeseries.getsampleusingtime.md) - Renvoie les echantillons selectionnes par temps.
- [timeseries.gettsafteratevent](8_timeseries/timeseries.gettsafteratevent.md) - Renvoie les echantillons au temps d'un evenement ou apres.
- [timeseries.gettsafterevent](8_timeseries/timeseries.gettsafterevent.md) - Renvoie les echantillons apres un evenement.
- [timeseries.gettsatevent](8_timeseries/timeseries.gettsatevent.md) - Renvoie les echantillons au temps d'un evenement.
- [timeseries.gettsbeforeatevent](8_timeseries/timeseries.gettsbeforeatevent.md) - Renvoie les echantillons au temps d'un evenement ou avant.
- [timeseries.gettsbeforeevent](8_timeseries/timeseries.gettsbeforeevent.md) - Renvoie les echantillons avant un evenement.
- [timeseries.gettsbetweenevents](8_timeseries/timeseries.gettsbetweenevents.md) - Renvoie les echantillons entre deux evenements.
- [timeseries.idealfilter](8_timeseries/timeseries.idealfilter.md) - Applique un filtre ideal dans le domaine frequentiel aux donnees timeseries.
- [timeseries.iqr](8_timeseries/timeseries.iqr.md) - Écart interquartile des données d'un timeseries.
- [timeseries.isequalwithequalnans](8_timeseries/timeseries.isequalwithequalnans.md) - Compare des objets timeseries en considerant comme egales les valeurs numeriques manquantes.
- [timeseries.ldivide](8_timeseries/timeseries.ldivide.md) - Division gauche element par element des donnees timeseries.
- [timeseries.loadobj](8_timeseries/timeseries.loadobj.md) - Restaure un objet timeseries depuis des donnees sauvegardees.
- [timeseries.max](8_timeseries/timeseries.max.md) - Maximum des données d'un timeseries.
- [timeseries.mean](8_timeseries/timeseries.mean.md) - Moyenne des données d'un timeseries.
- [timeseries.median](8_timeseries/timeseries.median.md) - Médiane des données d'un timeseries.
- [timeseries.min](8_timeseries/timeseries.min.md) - Minimum des données d'un timeseries.
- [timeseries.minus](8_timeseries/timeseries.minus.md) - Soustrait des donnees timeseries.
- [timeseries.mldivide](8_timeseries/timeseries.mldivide.md) - Division matricielle gauche pour les donnees timeseries.
- [timeseries.mode](8_timeseries/timeseries.mode.md) - Mode des données d'un timeseries.
- [timeseries.mrdivide](8_timeseries/timeseries.mrdivide.md) - Division matricielle droite pour les donnees timeseries.
- [timeseries.mtimes](8_timeseries/timeseries.mtimes.md) - Multiplication matricielle pour les donnees timeseries.
- [timeseries.plot](8_timeseries/timeseries.plot.md) - Trace les donnees timeseries en fonction du temps.
- [timeseries.plus](8_timeseries/timeseries.plus.md) - Ajoute des donnees timeseries.
- [timeseries.rdivide](8_timeseries/timeseries.rdivide.md) - Division droite element par element des donnees timeseries.
- [timeseries.resample](8_timeseries/timeseries.resample.md) - Reechantillonne un objet timeseries a de nouveaux temps.
- [timeseries.set](8_timeseries/timeseries.set.md) - Définit les valeurs des propriétés d'un timeseries.
- [timeseries.setabstime](8_timeseries/timeseries.setabstime.md) - Definit la date de debut absolue des temps d'echantillon.
- [timeseries.setinterpmethod](8_timeseries/timeseries.setinterpmethod.md) - Definit la methode d'interpolation.
- [timeseries.setuniformtime](8_timeseries/timeseries.setuniformtime.md) - Definit un vecteur de temps a pas uniforme.
- [timeseries.std](8_timeseries/timeseries.std.md) - Écart-type des données d'un timeseries.
- [timeseries.sum](8_timeseries/timeseries.sum.md) - Somme des données d'un timeseries.
- [timeseries.synchronize](8_timeseries/timeseries.synchronize.md) - Synchronise deux objets timeseries ou plus.
- [timeseries.times](8_timeseries/timeseries.times.md) - Multiplication element par element des donnees timeseries.
- [timeseries.uminus](8_timeseries/timeseries.uminus.md) - Change le signe des donnees timeseries.
- [timeseries.uplus](8_timeseries/timeseries.uplus.md) - Plus unaire pour les données d'un timeseries.
- [timeseries.var](8_timeseries/timeseries.var.md) - Variance des données d'un timeseries.
- [timeseries](8_timeseries/timeseries.md) - Cree des donnees de serie temporelle.
- [tscollection.addsampletocollection](8_timeseries/tscollection.addsampletocollection.md) - Fonction utilitaire pour les séries temporelles.
- [tscollection.addts](8_timeseries/tscollection.addts.md) - Fonction utilitaire pour les séries temporelles.
- [tscollection.delsamplefromcollection](8_timeseries/tscollection.delsamplefromcollection.md) - Fonction utilitaire pour les séries temporelles.
- [tscollection.display](8_timeseries/tscollection.display.md) - Affiche un objet tscollection.
- [tscollection.get](8_timeseries/tscollection.get.md) - Fonction pour objets de serie temporelle.
- [tscollection.getabstime](8_timeseries/tscollection.getabstime.md) - Fonction utilitaire pour les séries temporelles.
- [tscollection.getsampleusingtime](8_timeseries/tscollection.getsampleusingtime.md) - Fonction utilitaire pour les séries temporelles.
- [tscollection.gettimeseriesnames](8_timeseries/tscollection.gettimeseriesnames.md) - Fonction utilitaire pour les séries temporelles.
- [tscollection.horzcat](8_timeseries/tscollection.horzcat.md) - Fonction pour objets de serie temporelle.
- [tscollection.loadobj](8_timeseries/tscollection.loadobj.md) - Restaure un objet tscollection depuis des donnees sauvegardees.
- [tscollection.properties](8_timeseries/tscollection.properties.md) - Fonction pour objets de serie temporelle.
- [tscollection.removets](8_timeseries/tscollection.removets.md) - Fonction utilitaire pour les séries temporelles.
- [tscollection.resample](8_timeseries/tscollection.resample.md) - Fonction utilitaire pour les séries temporelles.
- [tscollection.set](8_timeseries/tscollection.set.md) - Fonction pour objets de serie temporelle.
- [tscollection.setTimeseriesName](8_timeseries/tscollection.setTimeseriesName.md) - Fonction pour objets de serie temporelle.
- [tscollection.setabstime](8_timeseries/tscollection.setabstime.md) - Fonction utilitaire pour les séries temporelles.
- [tscollection.settimeseriesnames](8_timeseries/tscollection.settimeseriesnames.md) - Fonction pour objets de serie temporelle.
- [tscollection.vertcat](8_timeseries/tscollection.vertcat.md) - Fonction pour objets de serie temporelle.
- [tscollection](8_timeseries/tscollection.md) - Cree une collection de series temporelles alignees.
- [tsdata.datametadata](8_timeseries/tsdata.datametadata.md) - Fonction pour objets de serie temporelle.
- [tsdata.event](8_timeseries/tsdata.event.md) - Fonction pour objets de serie temporelle.
- [tsdata.interpolation](8_timeseries/tsdata.interpolation.md) - Fonction pour objets de serie temporelle.
- [tsdata.qualmetadata](8_timeseries/tsdata.qualmetadata.md) - Fonction pour objets de serie temporelle.
- [tsdata.timemetadata](8_timeseries/tsdata.timemetadata.md) - Fonction pour objets de serie temporelle.
