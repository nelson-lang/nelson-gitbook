# copyfile

Copie des fichiers ou des dossiers.

## Syntaxe

- copyfile(source, destination)
- [status, msg] = copyfile(source, destination)
- [status, msg] = copyfile(source, destination, 'f')

## Argument d'entrée

- source - a string: fichier ou répertoire source.
- destination - a string: fichier ou répertoire de destination.
- 'f' or 'F' - forcer la copie même si la destination n'est pas inscriptible.

## Argument de sortie

- status - un booléen: vrai ou faux
- msg - a string: message d'erreur

## Description

<p>copyfile(source, destination) copie le fichier ou le répertoire source (et ses sous-répertoires) vers le fichier ou répertoire destination.</p>

<p>Si source est un répertoire, destination ne peut pas être un fichier.</p>

<p>copyfile remplace les fichiers existants sans avertissement.</p>

## Exemple

```matlab
copyfile([nelsonroot(), '/etc/startup.m'], [tempdir(), 'startup.m'])
[status, msg] = copyfile([nelsonroot(), '/etc/startup.m'], [tempdir(), 'startup.m'])
```

## Voir aussi

[isdir](../files_folders_functions/isdir.md), [rmfile](../files_folders_functions/rmfile.md).

## Historique

| Version | Description                                      |
| ------- | ------------------------------------------------ |
| 1.0.0   | initial version                                  |
| 1.4.0   | input arguments support scalar string array type |

## Auteur

Allan CORNET
