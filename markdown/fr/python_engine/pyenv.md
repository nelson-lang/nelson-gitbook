# pyenv

Modifier l'environnement par défaut de l'interpréteur Python.

## Syntaxe

- pyenv
- pe = pyenv('Version', python_path)
- pe = pyenv(...)

## Argument d'entrée

- python_path - une chaîne ou un vecteur de caractères : nom de l'exécutable Python ou version (sous Windows).

## Argument de sortie

- pe - objet PythonEnvironment.

## Description

<p>Utilisez pyenv pour modifier la version par défaut ou le mode d'exécution de l'interpréteur Python, en veillant à ce que ces réglages persistent entre les sessions Nelson.</p>

<p>La valeur définie par pyenv est persistante entre les sessions Nelson.</p>

<p></p>

<p>Propriétés :</p>

<p>
            Version : string : version de Python</p>

<p>
                Executable : string : nom de l'exécutable Python</p>

<p>
                    Library : string : fichier de bibliothèque partagée</p>

<p>
                        Home : string : dossier home</p>

<p>
                            Status : statut du processus : "NotLoaded" (par défaut), "Loaded", "Terminated"</p>

<p>
                                ExecutionMode : mode d'exécution : "InProcess" (par défaut) ou "OutOfProcess"</p>

<p></p>

<p>Utilisez des variables d'environnement pour forcer l'environnement Python au démarrage (utile pour snapcraft ou distribution docker) :</p>

<p></p>

<p>
                                    __NELSON_PYTHON_VERSION__ : exemple "3.10"</p>

<p>
                                        __NELSON_PYTHON_EXECUTABLE__ : exemple  "/usr/bin/python3"</p>

<p>
                                            __NELSON_PYTHON_LIBRARY__ : exemple "libpython3.10.so.1.0"</p>

<p>
                                                __NELSON_PYTHON_HOME__ : exemple "/usr"</p>

<p>Toutes les variables d'environnement doivent exister et être valides pour être prises en compte.</p>

<p></p>

<p>Sous Windows, la fonction pyenv('Version', '3.11') recherche dans le Registre Windows la version de Python associée à la version spécifiée. Elle recherche d'abord dans HKCU, puis dans HKLM si non trouvée.</p>

## Exemples

```matlab
pe = pyenv
```

```matlab
if ispc()
pe = pyenv('Version', '3.12')
end
```

## Voir aussi

[pyrun](../python_engine/pyrun.md).

## Historique

| Version | Description                                       |
| ------- | ------------------------------------------------- |
| 1.3.0   | version initiale                                  |
| 1.4.0   | environment variables to force python environment |
| 1.4.0   | On Windows find python by Windows registry.       |

## Auteur

Allan CORNET
