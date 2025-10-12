# i18nHelpers

Fonctions utilitaires d'internationalisation (i18n)

## Syntaxe

- i18nHelpers('convert', potFile, jsonFile)
- i18nHelpers('merge', jsonFile1, jsonFile2)
- i18nHelpers('sort', jsonFileA, jsonFileB)

## Argument d'entrée

- potFile - Chaîne : chemin vers le fichier source .po/.pot (template de traduction)
- jsonFile - Chaîne : chemin vers le fichier JSON de traduction de destination
- jsonFile1 - Chaîne : chemin vers le fichier JSON de traduction source
- jsonFile2 - Chaîne : chemin vers le fichier JSON de traduction de destination
- jsonFileA - Chaîne : chemin vers le fichier JSON source à trier
- jsonFileB - Chaîne : chemin vers le fichier JSON trié

## Description

<p>i18nHelpers fournit des fonctions utilitaires essentielles pour gérer les fichiers d'internationalisation. Les fonctions principales incluent :</p>

<p>- 'convert' : Convertit un fichier template .po/.pot en format JSON pour une manipulation simplifiée.</p>

<p>- 'merge' : Fusionne deux fichiers JSON de traduction. Les entrées de jsonFile1 sont ajoutées à jsonFile2, et les entrées exclusives à jsonFile2 sont supprimées.</p>

<p>- 'sort' : Trie et organise les entrées d'un fichier JSON de traduction. jsonFileA et jsonFileB peuvent référencer le même fichier si un tri en place est souhaité.</p>

<p>Cette utilité est destinée à un usage interne et peut être mise à jour au fil du temps.</p>

## Voir aussi

[setlanguage](../localization/setlanguage.md), [getlanguage](../localization/getlanguage.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.10.0  | version initiale |

## Auteur

Allan CORNET
