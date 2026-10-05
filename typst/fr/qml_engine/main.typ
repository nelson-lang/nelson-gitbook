#import "nelson_help.typ": *

= Moteur QML

Le module Moteur QML permet aux programmes Nelson d'afficher, manipuler et interagir avec du contenu graphique en utilisant le framework QML de Qt.

 Il fournit des fonctions pour gérer les composants QML, accéder aux objets Qt et intégrer la logique JavaScript et QML.

== Functions

- #nlink(<qml_engine:QObject_classname>)[QObject\_classname]: Renvoie le nom de classe d'une poignée (handle) QObject.
- #nlink(<qml_engine:QObject_findchildren>)[QObject\_findchildren]: Renvoie tous les enfants de cet objet ayant le nom donné.
- #nlink(<qml_engine:QObject_get>)[QObject\_get]: Récupère la valeur d'une propriété d'une poignée (handle) QObject.
- #nlink(<qml_engine:QObject_iswidgettype>)[QObject\_iswidgettype]: Renvoie true si le QObject est un widget.
- #nlink(<qml_engine:QObject_iswindowtype>)[QObject\_iswindowtype]: Renvoie true si le QObject est une fenêtre.
- #nlink(<qml_engine:QObject_methodsignature>)[QObject\_methodsignature]: Renvoie la signature d'une méthode d'une poignée (handle) QObject.
- #nlink(<qml_engine:QObject_root>)[QObject\_root]: Objet racine QObject.
- #nlink(<qml_engine:QObject_set>)[QObject\_set]: Définit la valeur d'une propriété d'une poignée (handle) QObject (set).
- #nlink(<qml_engine:QObject_undefine>)[QObject\_undefine]: Supprime une propriété dynamique d'une poignée (handle) QObject.
- #nlink(<qml_engine:QObject_used>)[QObject\_used]: Renvoie la liste des poignées (handles) QObject actuellement utilisées.
- #nlink(<qml_engine:nelsonObject>)[nelsonObject]: objet nelson appelable depuis QML.
- #nlink(<qml_engine:qml_addimportpath>)[qml\_addimportpath]: Ajoute un chemin comme répertoire où le moteur QML recherche les modules installés.
- #nlink(<qml_engine:qml_addpluginpath>)[qml\_addpluginpath]: Ajoute un chemin comme répertoire où le moteur QML recherche les plugins natifs.
- #nlink(<qml_engine:qml_clearcomponentcache>)[qml\_clearcomponentcache]: Vide le cache interne de composants du moteur.
- #nlink(<qml_engine:qml_collectgarbage>)[qml\_collectgarbage]: Exécute le ramasse-miette QML.
- #nlink(<qml_engine:qml_createqquickview>)[qml\_createqquickview]: Charge un fichier QML et crée une fenêtre.
- #nlink(<qml_engine:qml_demos>)[qml\_demos]: Démos QML.
- #nlink(<qml_engine:qml_evaluatefile>)[qml\_evaluatefile]: Évalue un fichier JS.
- #nlink(<qml_engine:qml_evaluatestring>)[qml\_evaluatestring]: Évalue une chaîne JS.
- #nlink(<qml_engine:qml_importpathlist>)[qml\_importpathlist]: Renvoie la liste des répertoires où le moteur recherche les modules installés dans une structure de répertoires basée sur des URL.
- #nlink(<qml_engine:qml_loadfile>)[qml\_loadfile]: Charger un fichier QML.
- #nlink(<qml_engine:qml_loadstring>)[qml\_loadstring]: Charge une chaîne QML.
- #nlink(<qml_engine:qml_offlinestoragepath>)[qml\_offlinestoragepath]: Obtient la propriété contenant le répertoire pour stocker les données utilisateur hors ligne.
- #nlink(<qml_engine:qml_pluginpathlist>)[qml\_pluginpathlist]: Renvoie la liste des répertoires où le moteur recherche les plugins natifs pour les modules importés.
- #nlink(<qml_engine:qml_setofflinestoragepath>)[qml\_setofflinestoragepath]: Définit la propriété contenant le répertoire pour stocker les données utilisateur hors ligne.
- #nlink(<qml_engine:qt_constant>)[qt\_constant]: Renvoie la valeur d'une constante Qt.
- #nlink(<qml_engine:qt_version>)[qt\_version]: Renvoie la version de Qt utilisée.


#nested[
#pagebreak(weak: true)
#include "QObject_classname.typ"
#pagebreak(weak: true)
#include "QObject_findchildren.typ"
#pagebreak(weak: true)
#include "QObject_get.typ"
#pagebreak(weak: true)
#include "QObject_iswidgettype.typ"
#pagebreak(weak: true)
#include "QObject_iswindowtype.typ"
#pagebreak(weak: true)
#include "QObject_methodsignature.typ"
#pagebreak(weak: true)
#include "QObject_root.typ"
#pagebreak(weak: true)
#include "QObject_set.typ"
#pagebreak(weak: true)
#include "QObject_undefine.typ"
#pagebreak(weak: true)
#include "QObject_used.typ"
#pagebreak(weak: true)
#include "nelsonObject.typ"
#pagebreak(weak: true)
#include "qml_addimportpath.typ"
#pagebreak(weak: true)
#include "qml_addpluginpath.typ"
#pagebreak(weak: true)
#include "qml_clearcomponentcache.typ"
#pagebreak(weak: true)
#include "qml_collectgarbage.typ"
#pagebreak(weak: true)
#include "qml_createqquickview.typ"
#pagebreak(weak: true)
#include "qml_demos.typ"
#pagebreak(weak: true)
#include "qml_evaluatefile.typ"
#pagebreak(weak: true)
#include "qml_evaluatestring.typ"
#pagebreak(weak: true)
#include "qml_importpathlist.typ"
#pagebreak(weak: true)
#include "qml_loadfile.typ"
#pagebreak(weak: true)
#include "qml_loadstring.typ"
#pagebreak(weak: true)
#include "qml_offlinestoragepath.typ"
#pagebreak(weak: true)
#include "qml_pluginpathlist.typ"
#pagebreak(weak: true)
#include "qml_setofflinestoragepath.typ"
#pagebreak(weak: true)
#include "qt_constant.typ"
#pagebreak(weak: true)
#include "qt_version.typ"
]
