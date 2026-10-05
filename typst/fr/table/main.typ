#import "nelson_help.typ": *

= Tables

Le module Tables fournit des outils pour creer, acceder et manipuler des donnees tabulaires dans Nelson.

 Les tables sont des structures de type tableau avec des variables nommees (colonnes), chacune pouvant contenir differents types de donnees.

 Les metadonnees de table sont disponibles avec T.Properties, et des fonctions permettent d'ajouter, de deplacer, de renommer, de supprimer et de resumer les variables.

 Les timetables stockent des variables tabulaires avec des temps de lignes et fournissent le tri temporel, le retiming, la synchronisation et les requetes de plage.

== Creation et conversion de tableaux

Fonctions pour creer des tables et timetables et convertir entre donnees tabulaires et autres formes.

=== Functions

- #nlink(<table:1_create_convert_tables.array2table>)[array2table]: Convertir un tableau homogène en table.
- #nlink(<table:1_create_convert_tables.array2timetable>)[array2timetable]: Convertir un tableau homogene en timetable.
- #nlink(<table:1_create_convert_tables.cell2table>)[cell2table]: Convertir un tableau de cellules en table.
- #nlink(<table:1_create_convert_tables.convertvars>)[convertvars]: Convertit des variables de table.
- #nlink(<table:1_create_convert_tables.struct2table>)[struct2table]: Convertir un tableau de structures en format tabulaire.
- #nlink(<table:1_create_convert_tables.table>)[table]: Un tableau de type table avec variables nommees, capable de contenir differents types de donnees
- #nlink(<table:1_create_convert_tables.table2array>)[table2array]: Convertir une table en tableau homogène.
- #nlink(<table:1_create_convert_tables.table2cell>)[table2cell]: Convertir une table en tableau de cellules
- #nlink(<table:1_create_convert_tables.table2struct>)[table2struct]: Convertir une table en tableau de structures
- #nlink(<table:1_create_convert_tables.table2timetable>)[table2timetable]: Convertir une table en timetable.
- #nlink(<table:1_create_convert_tables.timeseries2timetable>)[timeseries2timetable]: Convertir des donnees de serie temporelle en timetable.
- #nlink(<table:1_create_convert_tables.timetable>)[timetable]: Creer une timetable a partir de variables et de temps de lignes.
- #nlink(<table:1_create_convert_tables.timetable2table>)[timetable2table]: Convertir une timetable en table.
- #nlink(<table:1_create_convert_tables.vartype>)[vartype]: Selectionne des variables de table par type.

== Lecture et ecriture de tableaux

Pages pour lire et ecrire des donnees de table.

=== Functions

- #nlink(<table:2_read_write_tables.3_read_write_table>)[Lecture\/Écriture de tables vers des fichiers]: 

== Informations de synthese

Fonctions pour taille de table, controles de type et apercus rapides.

=== Functions

- #nlink(<table:3_summary_information.head>)[head]: Obtenir les premières lignes d'une table ou d'un tableau.
- #nlink(<table:3_summary_information.height>)[height]: Nombre de lignes d'une table
- #nlink(<table:3_summary_information.istable>)[istable]: Déterminer si l'entrée est une table.
- #nlink(<table:3_summary_information.istabular>)[istabular]: Determiner si l'entree est un objet tabulaire.
- #nlink(<table:3_summary_information.istimetable>)[istimetable]: Determiner si l'entree est une timetable.
- #nlink(<table:3_summary_information.tail>)[tail]: Obtenir les dernières lignes d'une table ou d'un tableau.
- #nlink(<table:3_summary_information.width>)[width]: Nombre de variables d'une table

== Tri, filtrage et reorganisation

Fonctions et rubriques pour acceder, trier, reorganiser et personnaliser le contenu de tables.

=== Functions

- #nlink(<table:4_sort_filter_rearrange.1_accessing_manipulating_table>)[AccÃ¨s et manipulation des tables dans Nelson]: 
- #nlink(<table:4_sort_filter_rearrange.addprop>)[addprop]: Ajoute une propriete personnalisee a une table.
- #nlink(<table:4_sort_filter_rearrange.addvars>)[addvars]: Ajoute des variables a une table ou a une timetable.
- #nlink(<table:4_sort_filter_rearrange.mergevars>)[mergevars]: Fusionne des variables de table.
- #nlink(<table:4_sort_filter_rearrange.movevars>)[movevars]: Deplace des variables dans une table.
- #nlink(<table:4_sort_filter_rearrange.removevars>)[removevars]: Supprimer des variables d'une table.
- #nlink(<table:4_sort_filter_rearrange.renamevars>)[renamevars]: Renommer les variables dans une table.
- #nlink(<table:4_sort_filter_rearrange.rmprop>)[rmprop]: Supprime une propriete personnalisee d'une table.
- #nlink(<table:4_sort_filter_rearrange.rows2vars>)[rows2vars]: Reoriente les lignes en variables.
- #nlink(<table:4_sort_filter_rearrange.sortrows>)[sortrows]: Trier les lignes d'une table ou d'une timetable.
- #nlink(<table:4_sort_filter_rearrange.splitvars>)[splitvars]: Separe des variables multicolonnes.
- #nlink(<table:4_sort_filter_rearrange.stack>)[stack]: Empile des variables de table en lignes.
- #nlink(<table:4_sort_filter_rearrange.topkrows>)[topkrows]: Renvoyer les premieres lignes d'une table ou timetable.
- #nlink(<table:4_sort_filter_rearrange.unstack>)[unstack]: Deplie des lignes en variables de table.

== Jointures et operations ensemblistes

Fonctions pour combiner des tables avec des jointures et operations associees.

=== Functions

- #nlink(<table:5_join_set_operations.innerjoin>)[innerjoin]: Jointure interne de deux tables.
- #nlink(<table:5_join_set_operations.join>)[join]: Joint des tables par variables cles.
- #nlink(<table:5_join_set_operations.outerjoin>)[outerjoin]: Jointure externe de deux tables.

== Application de fonctions au contenu des tables

Fonctions et rubriques pour calculs directs et application de fonctions aux lignes ou variables de table.

=== Functions

- #nlink(<table:7_apply_functions.2_direct_computation_with_table>)[Calcul direct avec Table]: 
- #nlink(<table:7_apply_functions.rowfun>)[rowfun]: Applique une fonction aux lignes d'une table.
- #nlink(<table:7_apply_functions.varfun>)[varfun]: Applique une fonction aux variables d'une table.

== Timetables et evenements

Fonctions pour intervalles de timetable, evenements, synchronisation et retiming.

=== Functions

- #nlink(<table:8_timetables_events.containsrange>)[containsrange]: Determiner si les temps de lignes contiennent une plage.
- #nlink(<table:8_timetables_events.eventtable>)[eventtable]: Creer une table d'evenements pour un timetable.
- #nlink(<table:8_timetables_events.extractevents>)[extractevents]: Extraire une table d'evenements de lignes d'une timetable.
- #nlink(<table:8_timetables_events.isregular>)[isregular]: Determiner si les temps de lignes sont regulierement espaces.
- #nlink(<table:8_timetables_events.issortedrows>)[issortedrows]: Determiner si les lignes d'une timetable sont triees.
- #nlink(<table:8_timetables_events.lag>)[lag]: Decaler les donnees d'une timetable par lignes.
- #nlink(<table:8_timetables_events.overlapsrange>)[overlapsrange]: Determiner si les temps de lignes chevauchent une plage.
- #nlink(<table:8_timetables_events.retime>)[retime]: Ajuster les donnees d'une timetable a de nouveaux temps de lignes.
- #nlink(<table:8_timetables_events.syncevents>)[syncevents]: Ajouter et synchroniser les variables de la table d'evenements attachee a une timetable.
- #nlink(<table:8_timetables_events.synchronize>)[synchronize]: Synchroniser des timetables sur des temps communs.
- #nlink(<table:8_timetables_events.timerange>)[timerange]: Intervalle temporel pour indexer les lignes d'un timetable.
- #nlink(<table:8_timetables_events.withinrange>)[withinrange]: Trouver les lignes d'une timetable dans une plage de temps.
- #nlink(<table:8_timetables_events.withtol>)[withtol]: Tolerance temporelle pour l'indexation des lignes d'une timetable.


#nested[
#pagebreak(weak: true)
#include "1_create_convert_tables/array2table.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/array2timetable.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/cell2table.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/convertvars.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/struct2table.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/table.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/table2array.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/table2cell.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/table2struct.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/table2timetable.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/timeseries2timetable.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/timetable.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/timetable2table.typ"
#pagebreak(weak: true)
#include "1_create_convert_tables/vartype.typ"
#pagebreak(weak: true)
#include "2_read_write_tables/3_read_write_table.typ"
#pagebreak(weak: true)
#include "3_summary_information/head.typ"
#pagebreak(weak: true)
#include "3_summary_information/height.typ"
#pagebreak(weak: true)
#include "3_summary_information/istable.typ"
#pagebreak(weak: true)
#include "3_summary_information/istabular.typ"
#pagebreak(weak: true)
#include "3_summary_information/istimetable.typ"
#pagebreak(weak: true)
#include "3_summary_information/tail.typ"
#pagebreak(weak: true)
#include "3_summary_information/width.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/1_accessing_manipulating_table.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/addprop.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/addvars.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/mergevars.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/movevars.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/removevars.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/renamevars.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/rmprop.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/rows2vars.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/sortrows.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/splitvars.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/stack.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/topkrows.typ"
#pagebreak(weak: true)
#include "4_sort_filter_rearrange/unstack.typ"
#pagebreak(weak: true)
#include "5_join_set_operations/innerjoin.typ"
#pagebreak(weak: true)
#include "5_join_set_operations/join.typ"
#pagebreak(weak: true)
#include "5_join_set_operations/outerjoin.typ"
#pagebreak(weak: true)
#include "7_apply_functions/2_direct_computation_with_table.typ"
#pagebreak(weak: true)
#include "7_apply_functions/rowfun.typ"
#pagebreak(weak: true)
#include "7_apply_functions/varfun.typ"
#pagebreak(weak: true)
#include "8_timetables_events/containsrange.typ"
#pagebreak(weak: true)
#include "8_timetables_events/eventtable.typ"
#pagebreak(weak: true)
#include "8_timetables_events/extractevents.typ"
#pagebreak(weak: true)
#include "8_timetables_events/isregular.typ"
#pagebreak(weak: true)
#include "8_timetables_events/issortedrows.typ"
#pagebreak(weak: true)
#include "8_timetables_events/lag.typ"
#pagebreak(weak: true)
#include "8_timetables_events/overlapsrange.typ"
#pagebreak(weak: true)
#include "8_timetables_events/retime.typ"
#pagebreak(weak: true)
#include "8_timetables_events/syncevents.typ"
#pagebreak(weak: true)
#include "8_timetables_events/synchronize.typ"
#pagebreak(weak: true)
#include "8_timetables_events/timerange.typ"
#pagebreak(weak: true)
#include "8_timetables_events/withinrange.typ"
#pagebreak(weak: true)
#include "8_timetables_events/withtol.typ"
]
