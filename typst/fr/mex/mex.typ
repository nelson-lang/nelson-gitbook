#import "nelson_help.typ": *

= mex <mex:mex>

Construire une fonction MEX

== Syntaxe

- #raw("mex(filenames)");
- #raw("mex(filenames, option1, ..., optionN)");
- #raw("mex(api, filenames)");
- #raw("mex(api, filenames, option1, ..., optionN)");
- #raw("mex('-output', mexName, filenames)");
- #raw("mex(api, '-output', mexName, filenames)");
- #raw("mex(api, '-output', mexName, filenames, option1, ..., optionN)");
- #raw("mex('-client, 'engine', filenames)");
- #raw("mex('-client', 'engine', 'filenames', api, option1, ..., optionN)");

== Argument d'entrée

/ '-client', 'engine': Permet de construire des fichiers source C\/C++ en une application moteur autonome.
/ api: une chaîne : '-R2017b' (représentation complexe séparée) ou '-R2018a' (représentation complexe entrelacée).
/ filenames: une chaîne ou une cellule de caractères : liste de fichiers à utiliser. Le premier nom de fichier est utilisé comme nom du MEX.
/ mexName: une chaîne : remplace la convention de nommage.
/ option1, ..., optionN: chaîne : option de compilation ou d'édition de liens.

== Description

Pour utiliser mex, un compilateur C\/C++ doit être disponible et configuré. Voir la section « Supported C\/C++ compilers » pour plus d'informations.

 Nelson inclut une interface permettant de compiler et d'éditer des fichiers mex hérités avec Nelson.

 Un fichier mex est un type de fichier qui fournit une interface entre Octave ou le logiciel commercial de référence et des fonctions écrites en C, C++.

 Nelson dispose également de sa propre API C++ pour gérer plus facilement les objets internes de Nelson.

 

 MACRO C PRÉDÉFINIE :

 #strong[MX\_IS\_NELSON]; : la macro est définie pour détecter facilement si Nelson est utilisé dans le code C.

 #strong[MX\_HAS\_INTERLEAVED\_COMPLEX]; : la macro est définie si l'API C MEX utilisée est '-R2018a'.

 

 Options prises en charge : compilation ou édition de liens.

 #strong[CFLAGS\=];

 #strong[-D]; L'option -D définit une macro du préprocesseur C.

 #strong[-U]; L'option -U annule la définition d'une macro du préprocesseur C

 #strong[-I]; Ajoute un chemin à la liste des dossiers recherchés pour les fichiers \#include.

 #strong[-l]; Lie avec une bibliothèque dynamique .lib, .so ou .dylib.

 #strong[-g]; Utilisé pour le débogage (configuration Debug).


== Exemple

``````matlab

		edit([modulepath('mex', 'tests'), '/test_engine.m'])

``````


== Voir aussi

#nlink(<dynamic_link:2_supported_compilers>)[Supported C\/C++ compilers];, #nlink(<dynamic_link:dlgenerategateway>)[dlgenerategateway];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
