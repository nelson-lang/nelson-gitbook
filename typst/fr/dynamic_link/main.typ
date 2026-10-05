#import "nelson_help.typ": *

= Liens dynamiques

Le module Liens dynamiques permet à Nelson de compiler, charger et appeler du code C\/C++ et Fortran à l'exécution.

 Il prend en charge la génération de gateways, de loaders et la gestion des bibliothèques partagées pour l'intégration de code compilé externe.

 Par défaut, Nelson ne détecte pas automatiquement un compilateur C\/C++ sous Windows. N'oubliez pas d'exécuter une fois#strong[configuremsvc]; ou #strong[configuremingw];.

== Functions

- #nlink(<dynamic_link:1_c_cpp_build_on_fly>)[Compilation C\/C++ à la volée]: Compiler du code C\/C++ à la volée
- #nlink(<dynamic_link:2_supported_compilers>)[Compilateurs C\/C++ supportés]: 
- #nlink(<dynamic_link:C_datatype>)[Types libpointer]: Équivalences entre types C et Nelson
- #nlink(<dynamic_link:cmake>)[cmake]: Appeler l'outil CMake
- #nlink(<dynamic_link:configuremingw>)[configuremingw]: Configurer Nelson pour utiliser MinGW comme compilateur C par défaut
- #nlink(<dynamic_link:configuremsvc>)[configuremsvc]: Configurer Nelson pour utiliser Visual Studio comme compilateur par défaut
- #nlink(<dynamic_link:dlcall>)[dlcall]: Appel de fonction étrangère C ou Fortran
- #nlink(<dynamic_link:dlclose>)[dlclose]: Supprime l'objet dllib
- #nlink(<dynamic_link:dlgeneratecleaner>)[dlgeneratecleaner]: Génère le fichier cleaner.m pour une gateway C++
- #nlink(<dynamic_link:dlgenerategateway>)[dlgenerategateway]: Génère une gateway C++
- #nlink(<dynamic_link:dlgenerateloader>)[dlgenerateloader]: Génère le fichier loader.m pour une gateway C++
- #nlink(<dynamic_link:dlgeneratemake>)[dlgeneratemake]: Génère un makefile pour construire une bibliothèque dynamique
- #nlink(<dynamic_link:dlgenerateunloader>)[dlgenerateunloader]: Génère le fichier unloader.m pour une gateway C++
- #nlink(<dynamic_link:dlgetnelsonincludes>)[dlgetnelsonincludes]: Renvoie les chemins des répertoires d'includes de Nelson
- #nlink(<dynamic_link:dlgetnelsonlibraries>)[dlgetnelsonlibraries]: Renvoie les chemins vers les bibliothèques Nelson
- #nlink(<dynamic_link:dllib_used>)[dllib\_used]: Renvoie la liste des handles dllib actuellement utilisés
- #nlink(<dynamic_link:dllibinfo>)[dllibinfo]: Renvoie la liste des symboles disponibles dans une bibliothèque partagée
- #nlink(<dynamic_link:dllibisloaded>)[dllibisloaded]: Vérifie si une bibliothèque partagée est chargée
- #nlink(<dynamic_link:dlmake>)[dlmake]: Appeler l'outil make ou nmake
- #nlink(<dynamic_link:dlopen>)[dlopen]: Charge une bibliothèque dynamique
- #nlink(<dynamic_link:dlsym>)[dlsym]: Charge un symbole C\/Fortran depuis une bibliothèque dynamique
- #nlink(<dynamic_link:dlsym_delete>)[dlsym\_delete]: Supprime l'objet dlsym
- #nlink(<dynamic_link:dlsym_used>)[dlsym\_used]: Renvoie la liste des handles dlsym actuellement utilisés
- #nlink(<dynamic_link:findcmake>)[findcmake]: Trouver le chemin de CMake
- #nlink(<dynamic_link:getdynlibext>)[getdynlibext]: Renvoie l'extension des bibliothèques dynamiques
- #nlink(<dynamic_link:havecompiler>)[havecompiler]: Détecter si un compilateur C\/C++ est configuré
- #nlink(<dynamic_link:isNull>)[isNull]: Determiner si un pointeur de bibliotheque est nul.
- #nlink(<dynamic_link:libpointer>)[libpointer]: Crée un objet pointeur C utilisable dans Nelson
- #nlink(<dynamic_link:libpointer_delete>)[libpointer\_delete]: Supprime l'objet libpointer
- #nlink(<dynamic_link:libpointer_isNull>)[libpointer\_isNull]: Vérifie si un handle libpointer pointe vers NULL
- #nlink(<dynamic_link:libpointer_plus>)[libpointer\_plus]: Opérateur + sur un handle libpointer
- #nlink(<dynamic_link:libpointer_reshape>)[libpointer\_reshape]: Redimensionne les dimensions du libpointer
- #nlink(<dynamic_link:libpointer_setdatatype>)[libpointer\_setdatatype]: Définit le type d'un handle libpointer
- #nlink(<dynamic_link:libpointer_used>)[libpointer\_used]: Renvoie la liste des handles libpointer actuellement utilisés
- #nlink(<dynamic_link:loadcompilerconf>)[loadcompilerconf]: Charger la configuration du compilateur
- #nlink(<dynamic_link:removecompilerconf>)[removecompilerconf]: Supprime la configuration du compilateur utilisée (sous Windows)
- #nlink(<dynamic_link:vswhere>)[vswhere]: Localiser les installations de Visual Studio (2017, 2019 et versions ultérieures)


#nested[
#pagebreak(weak: true)
#include "1_c_cpp_build_on_fly.typ"
#pagebreak(weak: true)
#include "2_supported_compilers.typ"
#pagebreak(weak: true)
#include "C_datatype.typ"
#pagebreak(weak: true)
#include "cmake.typ"
#pagebreak(weak: true)
#include "configuremingw.typ"
#pagebreak(weak: true)
#include "configuremsvc.typ"
#pagebreak(weak: true)
#include "dlcall.typ"
#pagebreak(weak: true)
#include "dlclose.typ"
#pagebreak(weak: true)
#include "dlgeneratecleaner.typ"
#pagebreak(weak: true)
#include "dlgenerategateway.typ"
#pagebreak(weak: true)
#include "dlgenerateloader.typ"
#pagebreak(weak: true)
#include "dlgeneratemake.typ"
#pagebreak(weak: true)
#include "dlgenerateunloader.typ"
#pagebreak(weak: true)
#include "dlgetnelsonincludes.typ"
#pagebreak(weak: true)
#include "dlgetnelsonlibraries.typ"
#pagebreak(weak: true)
#include "dllib_used.typ"
#pagebreak(weak: true)
#include "dllibinfo.typ"
#pagebreak(weak: true)
#include "dllibisloaded.typ"
#pagebreak(weak: true)
#include "dlmake.typ"
#pagebreak(weak: true)
#include "dlopen.typ"
#pagebreak(weak: true)
#include "dlsym.typ"
#pagebreak(weak: true)
#include "dlsym_delete.typ"
#pagebreak(weak: true)
#include "dlsym_used.typ"
#pagebreak(weak: true)
#include "findcmake.typ"
#pagebreak(weak: true)
#include "getdynlibext.typ"
#pagebreak(weak: true)
#include "havecompiler.typ"
#pagebreak(weak: true)
#include "isNull.typ"
#pagebreak(weak: true)
#include "libpointer.typ"
#pagebreak(weak: true)
#include "libpointer_delete.typ"
#pagebreak(weak: true)
#include "libpointer_isNull.typ"
#pagebreak(weak: true)
#include "libpointer_plus.typ"
#pagebreak(weak: true)
#include "libpointer_reshape.typ"
#pagebreak(weak: true)
#include "libpointer_setdatatype.typ"
#pagebreak(weak: true)
#include "libpointer_used.typ"
#pagebreak(weak: true)
#include "loadcompilerconf.typ"
#pagebreak(weak: true)
#include "removecompilerconf.typ"
#pagebreak(weak: true)
#include "vswhere.typ"
]
