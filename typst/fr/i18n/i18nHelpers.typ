#import "nelson_help.typ": *

= i18nHelpers <i18n:i18nHelpers>

Fonctions utilitaires d'internationalisation (i18n)

== Syntaxe

- #raw("i18nHelpers('extractUI', sourceRoot, jsonFile)");
- #raw("i18nHelpers('extractErrors', sourceRoot, jsonFile)");
- #raw("i18nHelpers('merge', jsonFile1, jsonFile2)");
- #raw("i18nHelpers('sort', jsonFileA, jsonFileB)");
- #raw("i18nHelpers('register', moduleName, moduleRoot)");
- #raw("i18nHelpers('unregister', moduleName)");

== Argument d'entrée

/ sourceRoot: Chaîne : chemin vers l'arborescence source à analyser (fichiers C\/C++ et .m, répertoires de tests exclus)
/ jsonFile: Chaîne : chemin vers le fichier JSON de traduction de destination
/ jsonFile1: Chaîne : chemin vers le fichier JSON de traduction source
/ jsonFile2: Chaîne : chemin vers le fichier JSON de traduction de destination
/ jsonFileA: Chaîne : chemin vers le fichier JSON source à trier
/ jsonFileB: Chaîne : chemin vers le fichier JSON trié
/ moduleName: Chaîne : le nom du module dont le catalogue de langue est enregistré ou retiré
/ moduleRoot: Chaîne : le répertoire racine du module (typiquement modulepath(moduleName)), contenant locale\/\<moduleName\>-ui-\<locale\>.json et locale\/\<moduleName\>-errors-\<locale\>.json

== Argument de sortie

/ status: Logique : pour 'register'\/'unregister', vrai en cas de succès. Demander cette sortie fait remonter un statut au lieu de lever une erreur, évitant un try\/catch.
/ message: Vecteur de caractères : pour 'register'\/'unregister' avec deux sorties, un message d'erreur quand status est faux, vide sinon.

== Description

#strong[i18nHelpers]; fournit des fonctions utilitaires essentielles pour gérer les fichiers d'internationalisation. Les fonctions principales incluent :

 -#strong['extractUI']; : Analyse les sources sous#raw("sourceRoot");pour en extraire les textes traduisibles de l'interface et écrit le catalogue indexé par texte dans#raw("jsonFile");. L'extraction est native (aucun outil gettext requis).

 -#strong['extractErrors']; : Analyse les sources sous#raw("sourceRoot");pour en extraire les templates d'erreur\/avertissement indexés par identifiant et écrit le catalogue des erreurs dans#raw("jsonFile");.

 -#strong['merge']; : Fusionne deux fichiers JSON de traduction. Les entrées de#raw("jsonFile1");sont ajoutées à#raw("jsonFile2");, et les entrées exclusives à#raw("jsonFile2");sont supprimées.

 -#strong['sort']; : Trie et organise les entrées d'un fichier JSON de traduction. #raw("jsonFileA"); et #raw("jsonFileB"); peuvent référencer le même fichier si un tri en place est souhaité.

 -#strong['register']; : Enregistre au runtime le catalogue de langue d'un module externe, afin que ses chaînes source#raw("_()");et ses templates d'erreur#raw("<moduleName>:*");soient localisés. Le module fournit#raw("locale/<moduleName>-ui-<locale>.json");et#raw("locale/<moduleName>-errors-<locale>.json"); ; le catalogue de la langue courante est fusionné immédiatement puis à chaque changement de langue. C'est un appel optionnel, typiquement placé dans le#raw("etc/startup.m");du module.

 #strong[Convention d'identifiant d'erreur des modules externes.]; Une erreur ou un avertissement levé par un module externe doit utiliser le namespace propre du module comme préfixe d'identifiant, c.-à-d.#raw("error('<moduleName>:<mnemonic>', 'template anglais littéral', args...)");. Seuls les messages génériques et réutilisables dans tout Nelson gardent le préfixe#raw("Nelson:");(ils appartiennent au catalogue du cœur, pas au module). Pour qu'un message soit extrait et localisé :

 - l'identifiant doit commencer par#raw("<moduleName>:");(le nom utilisé dans#raw("module.json");et comme préfixe des fichiers de catalogue) ;

 - le template doit être un unique littéral de chaîne ; une partie dynamique est un indicateur de format#raw("printf");rempli par les arguments suivants, p.ex.#raw("error('mymod:invalidInput', '%s must be a scalar logical.', name)");plutôt que#raw("error('mymod:invalidInput', [name, ' must be a scalar logical.'])"); ;

 - chaque identifiant correspond à exactement un template (un identifiant réutilisé avec plusieurs messages différents est écarté comme surchargé). Au runtime, le littéral en ligne n'est remplacé par le template localisé que s'il correspond exactement au catalogue, puis les arguments sont appliqués. Générez les catalogues avec#raw("nmm('i18n', moduleRoot)");(ou#raw("ngen.i18n");).

 -#strong['unregister']; : Retire un catalogue de module précédemment enregistré et reconstruit les catalogues en mémoire, typiquement depuis le#raw("etc/finish.m");du module.

 Cette utilité est destinée à un usage interne et peut être mise à jour au fil du temps.


== Voir aussi

#nlink(<localization:setlanguage>)[setlanguage];, #nlink(<localization:getlanguage>)[getlanguage];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale],
  [2.0.0], [extraction native des sources (extractUI, extractErrors) ; convert supprimé avec l'outillage gettext],
)

// Auteur: Allan CORNET
