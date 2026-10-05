#import "nelson_help.typ": *

= pyenv <python_engine:pyenv>

Modifier l'environnement par défaut de l'interpréteur Python.

== Syntaxe

- #raw("pyenv");
- #raw("pe = pyenv('Version', python_path)");
- #raw("pe = pyenv(...)");

== Argument d'entrée

/ python\_path: une chaîne ou un vecteur de caractères : nom de l'exécutable Python ou version (sous Windows).

== Argument de sortie

/ pe: objet PythonEnvironment.

== Description

Utilisez #strong[pyenv]; pour modifier la version par défaut ou le mode d'exécution de l'interpréteur Python, en veillant à ce que ces réglages persistent entre les sessions Nelson.

 La valeur définie par #strong[pyenv]; est persistante entre les sessions Nelson.

 

 Propriétés :

 #strong[Version]; : string : version de Python

 #strong[Executable]; : string : nom de l'exécutable Python

 #strong[Library]; : string : fichier de bibliothèque partagée

 #strong[Home]; : string : dossier home

 #strong[Status]; : statut du processus : "NotLoaded" (par défaut), "Loaded", "Terminated"

 #strong[ExecutionMode]; : mode d'exécution : "InProcess" (par défaut) ou "OutOfProcess"

 

 Utilisez des variables d'environnement pour forcer l'environnement Python au démarrage (utile pour snapcraft ou distribution docker) :

 

 #strong[\_\_NELSON\_PYTHON\_VERSION\_\_]; : exemple "3.10"

 #strong[\_\_NELSON\_PYTHON\_EXECUTABLE\_\_]; : exemple "\/usr\/bin\/python3"

 #strong[\_\_NELSON\_PYTHON\_LIBRARY\_\_]; : exemple "libpython3.10.so.1.0"

 #strong[\_\_NELSON\_PYTHON\_HOME\_\_]; : exemple "\/usr"

 Toutes les variables d'environnement doivent exister et être valides pour être prises en compte.

 

 Sous Windows, la fonction#strong[pyenv('Version', '3.11')]; recherche dans le Registre Windows la version de Python associée à la version spécifiée. Elle recherche d'abord dans HKCU, puis dans HKLM si non trouvée.


== Exemples

``````matlab
pe = pyenv
``````

``````matlab
if ispc()
pe = pyenv('Version', '3.12')
end
``````


== Voir aussi

#nlink(<python_engine:pyrun>)[pyrun];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [version initiale],
  [1.4.0], [environment variables to force python environment],
  [1.4.0], [On Windows find python by Windows registry.],
)

// Auteur: Allan CORNET
