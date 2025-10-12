# zip

Compresser des fichiers dans une archive zip.

## Syntaxe

- res = zip(zipname, files)
- res = zip(zipname, files, rootdir)

## Argument d'entrée

- zipname - une chaîne : fichier de destination de l'archive zip.
- files - un vecteur de caractères, un tableau de cellules de vecteurs de caractères, ou un tableau de chaînes : noms des fichiers ou dossiers à compresser.
- rootdir - un vecteur de caractères ou une chaîne : chemin racine pour les fichiers à compresser.

## Argument de sortie

- res - un tableau de cellules de vecteurs de caractères contenant les noms des fichiers inclus dans l'archive zip.

## Description

<p>zip compresse des fichiers et des répertoires dans une archive zip.</p>

<p>Chaque fichier individuel doit être inférieur à 4 Go.</p>

<p>Le nombre de fichiers spécifiés doit être inférieur à 65535.</p>

## Exemple

```matlab
zip([tempdir(), 'test.zip'], [nelsonroot(), '/module_skeleton'])

```

## Voir aussi

[unzip](../file_archiver/unzip.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
