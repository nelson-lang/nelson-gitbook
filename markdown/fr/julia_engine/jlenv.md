# jlenv

Modifier l'environnement par défaut de l'interpréteur Julia.

## Syntaxe

- jlenv
- je = jlenv('Version', julia_path)
- je = jlenv(...)

## Argument d'entrée

- julia_path - une chaîne ou un vecteur de caractères : nom du fichier exécutable de Julia.

## Argument de sortie

- je - objet JuliaEnvironment.

## Description

<p>Utilisez jlenv pour modifier la version par défaut ou le mode d'exécution de l'interpréteur Julia, en veillant à ce que ces ajustements persistent entre les différentes sessions Nelson.</p>

<p>La valeur définie par jlenv est persistante entre les sessions Nelson.</p>

<p></p>

<p>Properties:</p>

<p>
            Version: string: Julia version</p>

<p>
                Executable: string: Name of Julia executable file</p>

<p>
                    Library: string: Shared library file</p>

<p>
                        Home: string: Home folder</p>

<p>
                            Status: Process status: "NotLoaded" (default), "Loaded", "Terminated"</p>

<p>
                                ExecutionMode: Execution mode: "InProcess" (default) or "OutOfProcess"</p>

<p></p>

<p>Utilisez des variables d'environnement pour forcer l'environnement Julia au démarrage (utile pour les distributions snapcraft ou docker) :</p>

<p></p>

<p>
                                    __NELSON_JULIA_VERSION__:  exemple "1.11"</p>

<p>
                                        __NELSON_JULIA_EXECUTABLE__: exemple  "/usr/bin/julia"</p>

<p>
                                            __NELSON_JULIA_LIBRARY__: exemple "libjulia.so"</p>

<p>
                                                __NELSON_JULIA_HOME__: exemple "/usr"</p>

<p>Toutes les variables d'environnement doivent exister et être valides pour être prises en compte.</p>

<p></p>

## Exemples

```matlab
je = jlenv
```

Définir le chemin de l'exécutable Julia

```matlab
jlenv('Version', ''C:\WindowsTools\Julia-1.11.6\bin\julia.exe'')
```

## Voir aussi

[jlrun](../julia_engine/jlrun.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.12.0  | version initiale |

## Auteur

Allan CORNET
