# pyenv

Modifier l'environnement par défaut de l'interpréteur Python.

## 📝 Syntaxe

- pyenv
- pe = pyenv('Version', python\_path)
- pe = pyenv(...)

## 📥 Argument d'entrée

- python\_path - une chaîne ou un vecteur de caractères : nom de l'exécutable Python ou version (sous Windows).

## 📤 Argument de sortie

- pe - objet PythonEnvironment.

## 📄 Description


Utilisez <b>pyenv</b> pour modifier la version par défaut ou le mode d'exécution de l'interpréteur Python, en veillant à ce que ces réglages persistent entre les sessions Nelson. 

La valeur définie par <b>pyenv</b> est persistante entre les sessions Nelson. 

 

Propriétés : 

<b>Version</b> : string : version de Python 

<b>Executable</b> : string : nom de l'exécutable Python 

<b>Library</b> : string : fichier de bibliothèque partagée 

<b>Home</b> : string : dossier home 

<b>Status</b> : statut du processus : "NotLoaded" (par défaut), "Loaded", "Terminated" 

<b>ExecutionMode</b> : mode d'exécution : "InProcess" (par défaut) ou "OutOfProcess" 

 

Utilisez des variables d'environnement pour forcer l'environnement Python au démarrage (utile pour snapcraft ou distribution docker) : 

 

<b>\_\_NELSON\_PYTHON\_VERSION\_\_</b> : exemple "3.10" 

<b>\_\_NELSON\_PYTHON\_EXECUTABLE\_\_</b> : exemple "/usr/bin/python3" 

<b>\_\_NELSON\_PYTHON\_LIBRARY\_\_</b> : exemple "libpython3.10.so.1.0" 

<b>\_\_NELSON\_PYTHON\_HOME\_\_</b> : exemple "/usr" 

Toutes les variables d'environnement doivent exister et être valides pour être prises en compte. 

 

Sous Windows, la fonction<b>pyenv('Version', '3.11')</b> recherche dans le Registre Windows la version de Python associée à la version spécifiée. Elle recherche d'abord dans HKCU, puis dans HKLM si non trouvée.

## 💡 Exemples



```matlab
pe = pyenv
```


```matlab
if ispc()
pe = pyenv('Version', '3.12')
end
```


## 🔗 Voir aussi

[pyrun](../python_engine/pyrun.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.3.0   | version initiale |
| 1.4.0   | environment variables to force python environment |
| 1.4.0   | On Windows find python by Windows registry. |

<!--
## 👤 Auteur

Allan CORNET
-->
