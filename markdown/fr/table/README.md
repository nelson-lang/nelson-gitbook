# Tables


    
Le module Tables fournit des outils pour creer, acceder et manipuler des donnees tabulaires dans Nelson.

    
Les tables sont des structures de type tableau avec des variables nommees (colonnes), chacune pouvant contenir differents types de donnees.

    
Les metadonnees de table sont disponibles avec T.Properties, et des fonctions permettent d'ajouter, de deplacer, de renommer, de supprimer et de resumer les variables.

    
Les timetables stockent des variables tabulaires avec des temps de lignes et fournissent le tri temporel, le retiming, la synchronisation et les requetes de plage.

  

## Creation et conversion de tableaux


    
Fonctions pour creer des tables et timetables et convertir entre donnees tabulaires et autres formes.

  

### Functions

- [array2table](1_create_convert_tables/array2table.md) - Convertir un tableau homogène en table.
- [array2timetable](1_create_convert_tables/array2timetable.md) - Convertir un tableau homogene en timetable.
- [cell2table](1_create_convert_tables/cell2table.md) - Convertir un tableau de cellules en table.
- [convertvars](1_create_convert_tables/convertvars.md) - Convertit des variables de table.
- [struct2table](1_create_convert_tables/struct2table.md) - Convertir un tableau de structures en format tabulaire.
- [table](1_create_convert_tables/table.md) - Un tableau de type table avec variables nommees, capable de contenir differents types de donnees
- [table2array](1_create_convert_tables/table2array.md) - Convertir une table en tableau homogène.
- [table2cell](1_create_convert_tables/table2cell.md) - Convertir une table en tableau de cellules
- [table2struct](1_create_convert_tables/table2struct.md) - Convertir une table en tableau de structures
- [table2timetable](1_create_convert_tables/table2timetable.md) - Convertir une table en timetable.
- [timeseries2timetable](1_create_convert_tables/timeseries2timetable.md) - Convertir des donnees de serie temporelle en timetable.
- [timetable](1_create_convert_tables/timetable.md) - Creer une timetable a partir de variables et de temps de lignes.
- [timetable2table](1_create_convert_tables/timetable2table.md) - Convertir une timetable en table.
- [vartype](1_create_convert_tables/vartype.md) - Selectionne des variables de table par type.

## Lecture et ecriture de tableaux


    
Pages pour lire et ecrire des donnees de table.

  

### Functions

- [Lecture/Écriture de tables vers des fichiers](2_read_write_tables/3_read_write_table.md) - 

## Informations de synthese


    
Fonctions pour taille de table, controles de type et apercus rapides.

  

### Functions

- [head](3_summary_information/head.md) - Obtenir les premières lignes d'une table ou d'un tableau.
- [height](3_summary_information/height.md) - Nombre de lignes d'une table
- [istable](3_summary_information/istable.md) - Déterminer si l'entrée est une table.
- [istabular](3_summary_information/istabular.md) - Determiner si l'entree est un objet tabulaire.
- [istimetable](3_summary_information/istimetable.md) - Determiner si l'entree est une timetable.
- [tail](3_summary_information/tail.md) - Obtenir les dernières lignes d'une table ou d'un tableau.
- [width](3_summary_information/width.md) - Nombre de variables d'une table

## Tri, filtrage et reorganisation


    
Fonctions et rubriques pour acceder, trier, reorganiser et personnaliser le contenu de tables.

  

### Functions

- [AccÃ¨s et manipulation des tables dans Nelson](4_sort_filter_rearrange/1_accessing_manipulating_table.md) - 
- [addprop](4_sort_filter_rearrange/addprop.md) - Ajoute une propriete personnalisee a une table.
- [addvars](4_sort_filter_rearrange/addvars.md) - Ajoute des variables a une table ou a une timetable.
- [mergevars](4_sort_filter_rearrange/mergevars.md) - Fusionne des variables de table.
- [movevars](4_sort_filter_rearrange/movevars.md) - Deplace des variables dans une table.
- [removevars](4_sort_filter_rearrange/removevars.md) - Supprimer des variables d'une table.
- [renamevars](4_sort_filter_rearrange/renamevars.md) - Renommer les variables dans une table.
- [rmprop](4_sort_filter_rearrange/rmprop.md) - Supprime une propriete personnalisee d'une table.
- [rows2vars](4_sort_filter_rearrange/rows2vars.md) - Reoriente les lignes en variables.
- [sortrows](4_sort_filter_rearrange/sortrows.md) - Trier les lignes d'une table ou d'une timetable.
- [splitvars](4_sort_filter_rearrange/splitvars.md) - Separe des variables multicolonnes.
- [stack](4_sort_filter_rearrange/stack.md) - Empile des variables de table en lignes.
- [topkrows](4_sort_filter_rearrange/topkrows.md) - Renvoyer les premieres lignes d'une table ou timetable.
- [unstack](4_sort_filter_rearrange/unstack.md) - Deplie des lignes en variables de table.

## Jointures et operations ensemblistes


    
Fonctions pour combiner des tables avec des jointures et operations associees.

  

### Functions

- [innerjoin](5_join_set_operations/innerjoin.md) - Jointure interne de deux tables.
- [join](5_join_set_operations/join.md) - Joint des tables par variables cles.
- [outerjoin](5_join_set_operations/outerjoin.md) - Jointure externe de deux tables.

## Application de fonctions au contenu des tables


    
Fonctions et rubriques pour calculs directs et application de fonctions aux lignes ou variables de table.

  

### Functions

- [Calcul direct avec Table](7_apply_functions/2_direct_computation_with_table.md) - 
- [rowfun](7_apply_functions/rowfun.md) - Applique une fonction aux lignes d'une table.
- [varfun](7_apply_functions/varfun.md) - Applique une fonction aux variables d'une table.

## Timetables et evenements


    
Fonctions pour intervalles de timetable, evenements, synchronisation et retiming.

  

### Functions

- [containsrange](8_timetables_events/containsrange.md) - Determiner si les temps de lignes contiennent une plage.
- [eventtable](8_timetables_events/eventtable.md) - Creer une table d'evenements pour un timetable.
- [extractevents](8_timetables_events/extractevents.md) - Extraire une table d'evenements de lignes d'une timetable.
- [isregular](8_timetables_events/isregular.md) - Determiner si les temps de lignes sont regulierement espaces.
- [issortedrows](8_timetables_events/issortedrows.md) - Determiner si les lignes d'une timetable sont triees.
- [lag](8_timetables_events/lag.md) - Decaler les donnees d'une timetable par lignes.
- [overlapsrange](8_timetables_events/overlapsrange.md) - Determiner si les temps de lignes chevauchent une plage.
- [retime](8_timetables_events/retime.md) - Ajuster les donnees d'une timetable a de nouveaux temps de lignes.
- [syncevents](8_timetables_events/syncevents.md) - Ajouter et synchroniser les variables de la table d'evenements attachee a une timetable.
- [synchronize](8_timetables_events/synchronize.md) - Synchroniser des timetables sur des temps communs.
- [timerange](8_timetables_events/timerange.md) - Intervalle temporel pour indexer les lignes d'un timetable.
- [withinrange](8_timetables_events/withinrange.md) - Trouver les lignes d'une timetable dans une plage de temps.
- [withtol](8_timetables_events/withtol.md) - Tolerance temporelle pour l'indexation des lignes d'une timetable.

