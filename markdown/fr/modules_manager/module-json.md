# module.json

Description du fichier module.json

## 📄 Description


Un fichier module.json est requis pour chaque module externe de Nelson ; il permet de le gérer facilement avec la fonction <b>nmm</b>. 

 

<b>module</b>: identifiant unique (nom court du module, caractères alphanumériques), exemple : "module\_skeleton\_basic" 

<b>title</b>: nom complet du module (nom convivial), exemple : "Module skeleton basic" 

<b>summary</b>: description sur une ligne, exemple : "Skeleton of a basic nelson package" 

<b>version</b>: numéro de version en utilisant le versionnement sémantique, exemple : "1.0.0" 

<b>platforms</b>: plateformes supportées. 

"all" pour toutes les plateformes 

autres plateformes : 

"win32" : Windows 32 bits 

"win64" : Windows 64 bits 

"maci64" : macOS 64 bits 

"maca64" : macOS Apple silicon 

"maci32" : macOS 32 bits 

"glnxa64" : Linux 64 bits 

"glnxa32" : Linux 32 bits 

exemple :<b>["win64", "glnxa64"]</b>, le module ne sera disponible que sur Windows et Linux 64 bits. 

L'architecture courante doit correspondre exactement à l'une des plateformes listées, sauf si <b>all</b> est présent. 

<b>nelson</b>: versions de Nelson supportées, exemple : " <2.0.0" (par défaut) 

<b>builtin</b>: true si le module nécessite un compilateur C/C++, false si le module contient uniquement des macros. 

<b>author</b>: informations sur l'auteur : nom, email et site web 

Exemple : 

{ 

"name": "Allan CORNET", 

"email": "nelson.numerical.computation@gmail.com", 

"url": "https://nelson-lang.github.io/nelson-website/" 

} 

 

<b>homepage</b>: page d'accueil du module, exemple "https://github.com/nelson-lang/module\_skeleton\_basic" 

<b>issues</b>: URL optionnelle du gestionnaire de tickets du module, exemple "https://github.com/nelson-lang/module\_skeleton\_basic/issues" 

<b>documentation</b>: URL optionnelle de la documentation du module, exemple "https://nelson-lang.github.io/nelson-website/" 

<b>description</b>: description complète du module, format Markdown supporté, exemple : "nelson's module skeleton (macros only)" 

<b>copyright</b>: description du copyright, exemple : "Copyright © 2019-present Allan CORNET" 

<b>license</b>: expression de licence SPDX sous laquelle la boîte à outils sera publiée, exemple : "BSD-3-Clause", "MIT" ou "LGPL-3.0-or-later OR GPL-3.0-or-later". 

<b>keywords</b>: mots-clés décrivant votre module. 

Exemple : 

["interpreter", "scientific-computing", "programming-language", "matrix-functions", "skeleton"] 

 

<b>dependencies</b>: liste des dépendances de modules {} (par défaut) ou paires nom : url 

{ 

"module\_a": "https://module\_a.git#v1.0.0", 

"module\_b": "https://module\_b.git#v1.0.0" 

} 

Lors de la création d'un paquet, les versions installées des dépendances sont résolues dans <b>module-lock.json</b>. Le fichier de verrou enregistre aussi sa version de format, le type de paquet (<b>source</b> ou <b>binary</b>), les métadonnées de source, la version de Nelson, l'architecture, le tag ABI et les checksums des fichiers installés essentiels. Une archive <b>.nmz</b> ne peut être installée que si ces dépendances verrouillées sont déjà installées. Les paquets binaires exigent aussi que l'architecture Nelson et le tag ABI verrouillés correspondent au build Nelson en cours. 

Lors de l'installation d'un module source, les valeurs de dépendances peuvent être des chemins locaux, des archives <b>.nmz</b>, des dépôts Git HTTP, des versions exactes ou des contraintes semver. Les dépendances source sont installées récursivement avant la construction du module. Si l'arborescence source contient déjà <b>module-lock.json</b>, ses versions exactes de dépendances sont utilisées pour une installation reproductible. Les installations source construisent et exécutent les tests dans un répertoire temporaire de staging avant que le module soit écrit dans son emplacement final. Une installation source en échec conserve intacte toute version précédente déjà installée du même module. 

Une archive <b>.nmz</b> peut être accompagnée d'un fichier checksum <b>.sha256</b>. <b>nmm</b> vérifie ce checksum lorsqu'il est présent, sinon il vérifie après extraction les checksums de fichiers embarqués dans <b>module-lock.json</b>. 

 

<b>nmm('validate', module\_path)</b> vérifie que ces champs obligatoires sont présents et correctement formés avant installation ou empaquetage. 

<b>nmm('validate', module\_path, '-strict')</b> ajoute des vérifications orientées publication pour <b>repository</b>, <b>homepage</b>, des <b>keywords</b> non vides, au moins un fichier de test et au moins un fichier d'aide XML. 

En mode strict, <b>repository</b> et <b>homepage</b> doivent être des URLs HTTP ou HTTPS. Les champs optionnels <b>issues</b> et <b>documentation</b> ne sont validés que lorsqu'ils sont présents et doivent alors être des URLs HTTP ou HTTPS. <b>nmm('validate', module\_path, '-json')</b> retourne un rapport de validation exploitable par des outils. 

La validation vérifie aussi la structure du paquet : un module source doit inclure <b>builder.m</b> ou <b>loader.m</b>, <b>etc/startup.m</b>, <b>etc/finish.m</b>, <b>help</b> et <b>tests</b>. L'empaquetage exige au moins un fichier de test et exécute les tests du paquet avant d'écrire une archive. 

<b>nmm('pack', module\_path, destination\_dir)</b> utilise ce descripteur pour construire un module source et créer une archive de paquet reproductible avec fichier de verrou et checksum. 

<b>nmm('lock', module\_path)</b> écrit ou rafraîchit <b>module-lock.json</b> pour un module source sans l'installer ni l'empaqueter. 

<b>nmm('publish', package\_filename)</b> lit le fichier de verrou du paquet et <b>module.json</b>, puis écrit une entrée de registre local contenant les métadonnées du paquet, le chemin source du paquet et son checksum SHA-256. La commande écrit aussi un sidecar <b>registry.json.sha256</b>. Lorsque <b>NELSON\_NMM\_REGISTRY\_SIGNING\_KEY</b> est défini, elle écrit et vérifie aussi un sidecar à clé <b>registry.json.sig</b>. Les installations d'archives depuis le registre vérifient le checksum du paquet et les fichiers de registre locaux exigent le sidecar de checksum. 

 

Un index de registre est un document JSON avec un tableau <b>packages</b>. Chaque entrée de paquet contient les métadonnées comme le nom, la version, le type de paquet, les plateformes, la compatibilité Nelson, les dépendances, le checksum et une métadonnée de signature de paquet optionnelle. Une entrée installable contient aussi <b>source</b>, <b>url</b> ou <b>archive</b>. Les dépendances déclarées par une entrée installable sont résolues récursivement avant l'installation de la source du paquet. <b>nmm('search')</b>, <b>nmm('info')</b> et <b>nmm('versions')</b> lisent cet index. 

Les versions du registre sont aussi utilisées par <b>nmm('outdated')</b> et <b>nmm('update')</b>. Les archives <b>.nmz</b> vérifiées sont mises en cache localement et peuvent être réutilisées par les installations offline. 

Plusieurs versions du même module peuvent être installées côte à côte. <b>modules.json</b> stocke la version active dans les champs racine <b>path</b> et <b>version</b>, toutes les versions installées dans <b>versions</b>, et la version par défaut explicite dans <b>pinned\_version</b> lorsque <b>nmm('pin')</b> est utilisé.

## 💡 Exemple

Déployer les templates module_skeleton et module_skeleton_basic

```matlab
if ~ismodule('module_skeleton_basic')
        nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0');
    end
    if ~ismodule('module_skeleton')
        nmm('install', 'https://github.com/nelson-lang/module_skeleton.git#v1.0.0');
    end
    modules_installed = nmm('list');
    edit([modules_installed.module_skeleton.path, 'module.json']);
    edit([modules_installed.module_skeleton_basic.path, 'module.json']);
    
```


## 🔗 Voir aussi

[nmm](../modules_manager/nmm.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | lockfile, registre et métadonnées de validation stricte |

<!--
## 👤 Auteur

Allan CORNET
-->
