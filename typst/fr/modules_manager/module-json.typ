#import "nelson_help.typ": *

= module.json <modules_manager:module-json>

Description du fichier module.json

== Description

Un fichier module.json est requis pour chaque module externe de Nelson ; il permet de le gérer facilement avec la fonction #strong[nmm];.

 

 #strong[module];: identifiant unique (nom court du module, caractères alphanumériques), exemple : "module\_skeleton\_basic"

 #strong[title];: nom complet du module (nom convivial), exemple : "Module skeleton basic"

 #strong[summary];: description sur une ligne, exemple : "Skeleton of a basic nelson package"

 #strong[version];: numéro de version en utilisant le versionnement sémantique, exemple : "1.0.0"

 #strong[platforms];: plateformes supportées.

 "all" pour toutes les plateformes

 autres plateformes :

 "win32" : Windows 32 bits

 "win64" : Windows 64 bits

 "maci64" : macOS 64 bits

 "maca64" : macOS Apple silicon

 "maci32" : macOS 32 bits

 "glnxa64" : Linux 64 bits

 "glnxa32" : Linux 32 bits

 exemple :#strong[\["win64", "glnxa64"\]];, le module ne sera disponible que sur Windows et Linux 64 bits.

 L'architecture courante doit correspondre exactement à l'une des plateformes listées, sauf si #strong[all]; est présent.

 #strong[nelson];: versions de Nelson supportées, exemple : " \<2.0.0" (par défaut)

 #strong[builtin];: true si le module nécessite un compilateur C\/C++, false si le module contient uniquement des macros.

 #strong[author];: informations sur l'auteur : nom, email et site web

 Exemple :

 {

 "name": "Allan CORNET",

 "email": "nelson.numerical.computation\@gmail.com",

 "url": "https:\/\/nelson-lang.github.io\/nelson-website\/"

 }

 

 #strong[homepage];: page d'accueil du module, exemple "https:\/\/github.com\/nelson-lang\/module\_skeleton\_basic"

 #strong[issues];: URL optionnelle du gestionnaire de tickets du module, exemple "https:\/\/github.com\/nelson-lang\/module\_skeleton\_basic\/issues"

 #strong[documentation];: URL optionnelle de la documentation du module, exemple "https:\/\/nelson-lang.github.io\/nelson-website\/"

 #strong[description];: description complète du module, format Markdown supporté, exemple : "nelson's module skeleton (macros only)"

 #strong[copyright];: description du copyright, exemple : "Copyright © 2019-present Allan CORNET"

 #strong[license];: expression de licence SPDX sous laquelle la boîte à outils sera publiée, exemple : "BSD-3-Clause", "MIT" ou "LGPL-3.0-or-later OR GPL-3.0-or-later".

 #strong[keywords];: mots-clés décrivant votre module.

 Exemple :

 \["interpreter", "scientific-computing", "programming-language", "matrix-functions", "skeleton"\]

 

 #strong[dependencies];: liste des dépendances de modules {} (par défaut) ou paires nom : url

 {

 "module\_a": "https:\/\/module\_a.git\#v1.0.0",

 "module\_b": "https:\/\/module\_b.git\#v1.0.0"

 }

 Lors de la création d'un paquet, les versions installées des dépendances sont résolues dans #strong[module-lock.json];. Le fichier de verrou enregistre aussi sa version de format, le type de paquet (#strong[source]; ou #strong[binary];), les métadonnées de source, la version de Nelson, l'architecture, le tag ABI et les checksums des fichiers installés essentiels. Une archive #strong[.nmz]; ne peut être installée que si ces dépendances verrouillées sont déjà installées. Les paquets binaires exigent aussi que l'architecture Nelson et le tag ABI verrouillés correspondent au build Nelson en cours.

 Lors de l'installation d'un module source, les valeurs de dépendances peuvent être des chemins locaux, des archives #strong[.nmz];, des dépôts Git HTTP, des versions exactes ou des contraintes semver. Les dépendances source sont installées récursivement avant la construction du module. Si l'arborescence source contient déjà #strong[module-lock.json];, ses versions exactes de dépendances sont utilisées pour une installation reproductible. Les installations source construisent et exécutent les tests dans un répertoire temporaire de staging avant que le module soit écrit dans son emplacement final. Une installation source en échec conserve intacte toute version précédente déjà installée du même module.

 Une archive #strong[.nmz]; peut être accompagnée d'un fichier checksum #strong[.sha256];. #strong[nmm]; vérifie ce checksum lorsqu'il est présent, sinon il vérifie après extraction les checksums de fichiers embarqués dans #strong[module-lock.json];.

 

 #strong[nmm('validate', module\_path)]; vérifie que ces champs obligatoires sont présents et correctement formés avant installation ou empaquetage.

 #strong[nmm('validate', module\_path, '-strict')]; ajoute des vérifications orientées publication pour #strong[repository];, #strong[homepage];, des #strong[keywords]; non vides, au moins un fichier de test et au moins un fichier d'aide XML.

 En mode strict, #strong[repository]; et #strong[homepage]; doivent être des URLs HTTP ou HTTPS. Les champs optionnels #strong[issues]; et #strong[documentation]; ne sont validés que lorsqu'ils sont présents et doivent alors être des URLs HTTP ou HTTPS. #strong[nmm('validate', module\_path, '-json')]; retourne un rapport de validation exploitable par des outils.

 La validation vérifie aussi la structure du paquet : un module source doit inclure #strong[builder.m]; ou #strong[loader.m];, #strong[etc\/startup.m];, #strong[etc\/finish.m];, #strong[help]; et #strong[tests];. L'empaquetage exige au moins un fichier de test et exécute les tests du paquet avant d'écrire une archive.

 #strong[nmm('pack', module\_path, destination\_dir)]; utilise ce descripteur pour construire un module source et créer une archive de paquet reproductible avec fichier de verrou et checksum.

 #strong[nmm('lock', module\_path)]; écrit ou rafraîchit #strong[module-lock.json]; pour un module source sans l'installer ni l'empaqueter.

 #strong[nmm('publish', package\_filename)]; lit le fichier de verrou du paquet et #strong[module.json];, puis écrit une entrée de registre local contenant les métadonnées du paquet, le chemin source du paquet et son checksum SHA-256. La commande écrit aussi un sidecar #strong[registry.json.sha256];. Lorsque #strong[NELSON\_NMM\_REGISTRY\_SIGNING\_KEY]; est défini, elle écrit et vérifie aussi un sidecar à clé #strong[registry.json.sig];. Les installations d'archives depuis le registre vérifient le checksum du paquet et les fichiers de registre locaux exigent le sidecar de checksum.

 

 Un index de registre est un document JSON avec un tableau #strong[packages];. Chaque entrée de paquet contient les métadonnées comme le nom, la version, le type de paquet, les plateformes, la compatibilité Nelson, les dépendances, le checksum et une métadonnée de signature de paquet optionnelle. Une entrée installable contient aussi #strong[source];, #strong[url]; ou #strong[archive];. Les dépendances déclarées par une entrée installable sont résolues récursivement avant l'installation de la source du paquet. #strong[nmm('search')];, #strong[nmm('info')]; et #strong[nmm('versions')]; lisent cet index.

 Les versions du registre sont aussi utilisées par #strong[nmm('outdated')]; et #strong[nmm('update')];. Les archives #strong[.nmz]; vérifiées sont mises en cache localement et peuvent être réutilisées par les installations offline.

 Plusieurs versions du même module peuvent être installées côte à côte. #strong[modules.json]; stocke la version active dans les champs racine #strong[path]; et #strong[version];, toutes les versions installées dans #strong[versions];, et la version par défaut explicite dans #strong[pinned\_version]; lorsque #strong[nmm('pin')]; est utilisé.


== Exemple

Déployer les templates module\_skeleton et module\_skeleton\_basic

``````matlab
if ~ismodule('module_skeleton_basic')
        nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0');
    end
    if ~ismodule('module_skeleton')
        nmm('install', 'https://github.com/nelson-lang/module_skeleton.git#v1.0.0');
    end
    modules_installed = nmm('list');
    edit([modules_installed.module_skeleton.path, 'module.json']);
    edit([modules_installed.module_skeleton_basic.path, 'module.json']);
    
``````


== Voir aussi

#nlink(<modules_manager:nmm>)[nmm];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [lockfile, registre et métadonnées de validation stricte],
)

// Auteur: Allan CORNET
