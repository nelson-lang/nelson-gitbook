# Liens dynamiques

Le module Liens dynamiques permet à Nelson de compiler, charger et appeler du code C/C++ et Fortran à l'exécution.

Il prend en charge la génération de gateways, de loaders et la gestion des bibliothèques partagées pour l'intégration de code compilé externe.

Par défaut, Nelson ne détecte pas automatiquement un compilateur C/C++ sous Windows. N'oubliez pas d'exécuter une fois configuremsvc ou configuremingw.

## Functions

- [Compilation C/C++ à la volée](1_c_cpp_build_on_fly.md) - Compiler du code C/C++ à la volée
- [Compilateurs C/C++ supportés](2_supported_compilers.md) -
- [Types libpointer](C_datatype.md) - Équivalences entre types C et Nelson
- [cmake](cmake.md) - Appeler l'outil CMake
- [configuremingw](configuremingw.md) - Configurer Nelson pour utiliser MinGW comme compilateur C par défaut
- [configuremsvc](configuremsvc.md) - Configurer Nelson pour utiliser Visual Studio comme compilateur par défaut
- [dlcall](dlcall.md) - Appel de fonction étrangère C ou Fortran
- [dlclose](dlclose.md) - Supprime l'objet dllib
- [dlgeneratecleaner](dlgeneratecleaner.md) - Génère le fichier cleaner.m pour une gateway C++
- [dlgenerategateway](dlgenerategateway.md) - Génère une gateway C++
- [dlgenerateloader](dlgenerateloader.md) - Génère le fichier loader.m pour une gateway C++
- [dlgeneratemake](dlgeneratemake.md) - Génère un makefile pour construire une bibliothèque dynamique
- [dlgenerateunloader](dlgenerateunloader.md) - Génère le fichier unloader.m pour une gateway C++
- [dlgetnelsonincludes](dlgetnelsonincludes.md) - Renvoie les chemins des répertoires d'includes de Nelson
- [dlgetnelsonlibraries](dlgetnelsonlibraries.md) - Renvoie les chemins vers les bibliothèques Nelson
- [dllib_used](dllib_used.md) - Renvoie la liste des handles dllib actuellement utilisés
- [dllibinfo](dllibinfo.md) - Renvoie la liste des symboles disponibles dans une bibliothèque partagée
- [dllibisloaded](dllibisloaded.md) - Vérifie si une bibliothèque partagée est chargée
- [dlmake](dlmake.md) - Appeler l'outil make ou nmake
- [dlopen](dlopen.md) - Charge une bibliothèque dynamique
- [dlsym](dlsym.md) - Charge un symbole C/Fortran depuis une bibliothèque dynamique
- [dlsym_delete](dlsym_delete.md) - Supprime l'objet dlsym
- [dlsym_used](dlsym_used.md) - Renvoie la liste des handles dlsym actuellement utilisés
- [findcmake](findcmake.md) - Trouver le chemin de CMake
- [getdynlibext](getdynlibext.md) - Renvoie l'extension des bibliothèques dynamiques
- [havecompiler](havecompiler.md) - Détecter si un compilateur C/C++ est configuré
- [libpointer](libpointer.md) - Crée un objet pointeur C utilisable dans Nelson
- [libpointer_delete](libpointer_delete.md) - Supprime l'objet libpointer
- [libpointer_isNull](libpointer_isNull.md) - Vérifie si un handle libpointer pointe vers NULL
- [libpointer_plus](libpointer_plus.md) - Opérateur + sur un handle libpointer
- [libpointer_reshape](libpointer_reshape.md) - Redimensionne les dimensions du libpointer
- [libpointer_setdatatype](libpointer_setdatatype.md) - Définit le type d'un handle libpointer
- [libpointer_used](libpointer_used.md) - Renvoie la liste des handles libpointer actuellement utilisés
- [loadcompilerconf](loadcompilerconf.md) - Charger la configuration du compilateur
- [removecompilerconf](removecompilerconf.md) - Supprime la configuration du compilateur utilisée (sous Windows)
- [vswhere](vswhere.md) - Localiser les installations de Visual Studio (2017, 2019 et versions ultérieures)
