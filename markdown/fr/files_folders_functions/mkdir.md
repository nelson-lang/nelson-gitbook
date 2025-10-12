# mkdir

Crée un nouveau répertoire.

## Syntaxe

- mkdir(dirname)
- mkdir(parentdir, dirname)
- status = mkdir(dirname)
- status = mkdir(parentdir, dirname)
- [status, msg] = mkdir(dirname)
- [status, msg] = mkdir(parentdir, dirname)

## Argument d'entrée

- dirname - a string: nom du répertoire à créer.
- parentdir - a string: répertoire parent où sera créé dirname.

## Argument de sortie

- status - a logical true or false
- msg - a string: error message

## Description

<p>Crée un répertoire nommé dirname dans le répertoire parent.</p>

<p>Si aucun répertoire parent n'est précisé, le répertoire de travail actuel est utilisé.</p>

<p>Si le répertoire est créé ou existe déjà, status vaut true, sinon false.</p>

## Exemple

```matlab
mkdir(tempdir(), 'subdir_example')
if isdir([tempdir(), 'subdir_example'])
	disp('OK')
else
	disp('NOT OK')
end

```

## Voir aussi

[isdir](../files_folders_functions/isdir.md).

## Historique

| Version | Description                                      |
| ------- | ------------------------------------------------ |
| 1.0.0   | initial version                                  |
| 1.4.0   | input arguments support scalar string array type |

## Auteur

Allan CORNET
