# Moteur QML

Le module Moteur QML permet aux programmes Nelson d'afficher, manipuler et interagir avec du contenu graphique en utilisant le framework QML de Qt.

Il fournit des fonctions pour gérer les composants QML, accéder aux objets Qt et intégrer la logique JavaScript et QML.

## Functions

- [QObject_classname](QObject_classname.md) - Renvoie le nom de classe d'une poignée (handle) QObject.
- [QObject_findchildren](QObject_findchildren.md) - Renvoie tous les enfants de cet objet ayant le nom donné.
- [QObject_get](QObject_get.md) - Récupère la valeur d'une propriété d'une poignée (handle) QObject.
- [QObject_iswidgettype](QObject_iswidgettype.md) - Renvoie true si le QObject est un widget.
- [QObject_iswindowtype](QObject_iswindowtype.md) - Renvoie true si le QObject est une fenêtre.
- [QObject_methodsignature](QObject_methodsignature.md) - Renvoie la signature d'une méthode d'une poignée (handle) QObject.
- [QObject_root](QObject_root.md) - Objet racine QObject.
- [QObject_set](QObject_set.md) - Définit la valeur d'une propriété d'une poignée (handle) QObject (set).
- [QObject_undefine](QObject_undefine.md) - Supprime une propriété dynamique d'une poignée (handle) QObject.
- [QObject_used](QObject_used.md) - Renvoie la liste des poignées (handles) QObject actuellement utilisées.
- [nelsonObject](nelsonObject.md) - objet nelson appelable depuis QML.
- [qml_addimportpath](qml_addimportpath.md) - Ajoute un chemin comme répertoire où le moteur QML recherche les modules installés.
- [qml_addpluginpath](qml_addpluginpath.md) - Ajoute un chemin comme répertoire où le moteur QML recherche les plugins natifs.
- [qml_clearcomponentcache](qml_clearcomponentcache.md) - Vide le cache interne de composants du moteur.
- [qml_collectgarbage](qml_collectgarbage.md) - Exécute le ramasse-miette QML.
- [qml_createqquickview](qml_createqquickview.md) - Charge un fichier QML et crée une fenêtre.
- [qml_demos](qml_demos.md) - Démos QML.
- [qml_evaluatefile](qml_evaluatefile.md) - Évalue un fichier JS.
- [qml_evaluatestring](qml_evaluatestring.md) - Évalue une chaîne JS.
- [qml_importpathlist](qml_importpathlist.md) - Renvoie la liste des répertoires où le moteur recherche les modules installés dans une structure de répertoires basée sur des URL.
- [qml_loadfile](qml_loadfile.md) - Charger un fichier QML.
- [qml_loadstring](qml_loadstring.md) - Load a QML string.
- [qml_offlinestoragepath](qml_offlinestoragepath.md) - Obtient la propriété contenant le répertoire pour stocker les données utilisateur hors ligne.
- [qml_pluginpathlist](qml_pluginpathlist.md) - Renvoie la liste des répertoires où le moteur recherche les plugins natifs pour les modules importés.
- [qml_setofflinestoragepath](qml_setofflinestoragepath.md) - Définit la propriété contenant le répertoire pour stocker les données utilisateur hors ligne.
- [qt_constant](qt_constant.md) - Renvoie la valeur d'une constante Qt.
- [qt_version](qt_version.md) - Renvoie la version de Qt utilisée.
