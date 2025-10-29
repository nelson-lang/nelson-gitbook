# i18nHelpers

Fonctions utilitaires d'internationalisation (i18n)

## 📝 Syntaxe

- i18nHelpers('convert', potFile, jsonFile)
- i18nHelpers('merge', jsonFile1, jsonFile2)
- i18nHelpers('sort', jsonFileA, jsonFileB)

## 📥 Argument d'entrée

- potFile - Chaîne : chemin vers le fichier source .po/.pot (template de traduction)
- jsonFile - Chaîne : chemin vers le fichier JSON de traduction de destination
- jsonFile1 - Chaîne : chemin vers le fichier JSON de traduction source
- jsonFile2 - Chaîne : chemin vers le fichier JSON de traduction de destination
- jsonFileA - Chaîne : chemin vers le fichier JSON source à trier
- jsonFileB - Chaîne : chemin vers le fichier JSON trié

## 📄 Description

<b>i18nHelpers</b> fournit des fonctions utilitaires essentielles pour gérer les fichiers d'internationalisation. Les fonctions principales incluent :

- <b>'convert'</b> : Convertit un fichier template .po/.pot en format JSON pour une manipulation simplifiée.

- <b>'merge'</b> : Fusionne deux fichiers JSON de traduction. Les entrées de <code>jsonFile1</code> sont ajoutées à <code>jsonFile2</code>, et les entrées exclusives à <code>jsonFile2</code> sont supprimées.

- <b>'sort'</b> : Trie et organise les entrées d'un fichier JSON de traduction. <code>jsonFileA</code> et <code>jsonFileB</code> peuvent référencer le même fichier si un tri en place est souhaité.

Cette utilité est destinée à un usage interne et peut être mise à jour au fil du temps.

## 🔗 Voir aussi

[setlanguage](../localization/setlanguage.md), [getlanguage](../localization/getlanguage.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.10.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
