# i18nHelpers

Fonctions utilitaires d'internationalisation (i18n)

## 📝 Syntaxe

- i18nHelpers('extractUI', sourceRoot, jsonFile)
- i18nHelpers('extractErrors', sourceRoot, jsonFile)
- i18nHelpers('merge', jsonFile1, jsonFile2)
- i18nHelpers('sort', jsonFileA, jsonFileB)
- i18nHelpers('register', moduleName, moduleRoot)
- i18nHelpers('unregister', moduleName)

## 📥 Argument d'entrée

- sourceRoot - Chaîne : chemin vers l'arborescence source à analyser (fichiers C/C++ et .m, répertoires de tests exclus)
- jsonFile - Chaîne : chemin vers le fichier JSON de traduction de destination
- jsonFile1 - Chaîne : chemin vers le fichier JSON de traduction source
- jsonFile2 - Chaîne : chemin vers le fichier JSON de traduction de destination
- jsonFileA - Chaîne : chemin vers le fichier JSON source à trier
- jsonFileB - Chaîne : chemin vers le fichier JSON trié
- moduleName - Chaîne : le nom du module dont le catalogue de langue est enregistré ou retiré
- moduleRoot - Chaîne : le répertoire racine du module (typiquement modulepath(moduleName)), contenant locale/<moduleName>-ui-<locale>.json et locale/<moduleName>-errors-<locale>.json

## 📤 Argument de sortie

- status - Logique : pour 'register'/'unregister', vrai en cas de succès. Demander cette sortie fait remonter un statut au lieu de lever une erreur, évitant un try/catch.
- message - Vecteur de caractères : pour 'register'/'unregister' avec deux sorties, un message d'erreur quand status est faux, vide sinon.

## 📄 Description

<b>i18nHelpers</b> fournit des fonctions utilitaires essentielles pour gérer les fichiers d'internationalisation. Les fonctions principales incluent :

-<b>
'extractUI'
</b> : Analyse les sources sous<code>sourceRoot</code>pour en extraire les textes traduisibles de l'interface et écrit le catalogue indexé par texte dans<code>jsonFile</code>. L'extraction est native (aucun outil gettext requis).

-<b>
'extractErrors'
</b> : Analyse les sources sous<code>sourceRoot</code>pour en extraire les templates d'erreur/avertissement indexés par identifiant et écrit le catalogue des erreurs dans<code>jsonFile</code>.

-<b>
'merge'
</b> : Fusionne deux fichiers JSON de traduction. Les entrées de<code>jsonFile1</code>sont ajoutées à<code>jsonFile2</code>, et les entrées exclusives à<code>jsonFile2</code>sont supprimées.

-<b>
'sort'
</b> : Trie et organise les entrées d'un fichier JSON de traduction. <code>jsonFileA</code> et <code>jsonFileB</code> peuvent référencer le même fichier si un tri en place est souhaité.

-<b>
'register'
</b> : Enregistre au runtime le catalogue de langue d'un module externe, afin que ses chaînes source<code>\_()</code>et ses templates d'erreur<code><moduleName>:\*</code>soient localisés. Le module fournit<code>locale/<moduleName>-ui-<locale>.json</code>et<code>locale/<moduleName>-errors-<locale>.json</code> ; le catalogue de la langue courante est fusionné immédiatement puis à chaque changement de langue. C'est un appel optionnel, typiquement placé dans le<code>etc/startup.m</code>du module.

<b>Convention d'identifiant d'erreur des modules externes.</b> Une erreur ou un avertissement levé par un module externe doit utiliser le namespace propre du module comme préfixe d'identifiant, c.-à-d.<code>error('<moduleName>:<mnemonic>', 'template anglais littéral', args...)</code>. Seuls les messages génériques et réutilisables dans tout Nelson gardent le préfixe<code>Nelson:</code>(ils appartiennent au catalogue du cœur, pas au module). Pour qu'un message soit extrait et localisé :

- l'identifiant doit commencer par<code><moduleName>:</code>(le nom utilisé dans<code>module.json</code>et comme préfixe des fichiers de catalogue) ;

- le template doit être un unique littéral de chaîne ; une partie dynamique est un indicateur de format<code>printf</code>rempli par les arguments suivants, p.ex.<code>error('mymod:invalidInput', '%s must be a scalar logical.', name)</code>plutôt que<code>error('mymod:invalidInput', [name, ' must be a scalar logical.'])</code> ;

- chaque identifiant correspond à exactement un template (un identifiant réutilisé avec plusieurs messages différents est écarté comme surchargé). Au runtime, le littéral en ligne n'est remplacé par le template localisé que s'il correspond exactement au catalogue, puis les arguments sont appliqués. Générez les catalogues avec<code>nmm('i18n', moduleRoot)</code>(ou<code>ngen.i18n</code>).

-<b>
'unregister'
</b> : Retire un catalogue de module précédemment enregistré et reconstruit les catalogues en mémoire, typiquement depuis le<code>etc/finish.m</code>du module.

Cette utilité est destinée à un usage interne et peut être mise à jour au fil du temps.

## 🔗 Voir aussi

[setlanguage](../localization/setlanguage.md), [getlanguage](../localization/getlanguage.md).

## 🕔 Historique

| Version | 📄 Description                                                                                       |
| ------- | ---------------------------------------------------------------------------------------------------- |
| 1.10.0  | version initiale                                                                                     |
| 2.0.0   | extraction native des sources (extractUI, extractErrors) ; convert supprimé avec l'outillage gettext |

<!--
## 👤 Auteur

Allan CORNET
-->
