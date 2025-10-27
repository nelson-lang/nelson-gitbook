# module.json

Description du fichier module.json

## 📄 Description

Un fichier module.json est requis pour chaque module externe de Nelson ; il permet de le gérer facilement avec la fonction <b>nmm</b>.

<b>module</b>: identifiant unique (nom court du module, caractères alphanumériques), exemple : "module_skeleton_basic"

<b>title</b>: nom complet du module (nom convivial), exemple : "Module skeleton basic"

<b>summary</b>: description sur une ligne, exemple : "Skeleton of a basic nelson package"

<b>version</b>: numéro de version en utilisant le versionnement sémantique, exemple : "1.0.0"

<b>platforms</b>: plateformes supportées.

"all" pour toutes les plateformes

autres plateformes :

"win32" : Windows 32 bits

"win64" : Windows 64 bits

"maci64" : macOS 64 bits

"maci32" : macOS 32 bits

"glnxa64" : Linux 64 bits

"glnxa32" : Linux 32 bits

exemple : <b>["win64", "glnxa64"]</b>, le module ne sera disponible que sur Windows et Linux 64 bits.

<b>nelson</b>: versions de Nelson supportées, exemple : "<2.0.0" (par défaut)

<b>builtin</b>: true si le module nécessite un compilateur C/C++, false si le module contient uniquement des macros.

<b>author</b>: informations sur l'auteur : nom, email et site web

Exemple :

{

"name": "Allan CORNET",

"email": "nelson.numerical.computation@gmail.com",

"url": "https://nelson-lang.github.io/nelson-website/"

}

<b>homepage</b>: page d'accueil du module, exemple "https://github.com/nelson-lang/module_skeleton_basic"

<b>description</b>: description complète du module, format Markdown supporté, exemple : "nelson's module skeleton (macros only)"

<b>copyright</b>: description du copyright, exemple : "Copyright © 2019-present Allan CORNET"

<b>license</b>: licence sous laquelle la boîte à outils sera publiée, exemple : "BSD" ou "LGPLv2", ...

<b>keywords</b>: mots-clés décrivant votre module.

Exemple :

["interpreter", "scientific-computing", "programming-language", "matrix-functions", "skeleton"]

<b>dependencies</b>: liste des dépendances de modules {} (par défaut) ou paires nom : url

{

"module_a": "https://module_a.git#v1.0.0",

"module_b": "https://module_b.git#v1.0.0"

}

## 💡 Exemple

Déployer les templates module_skeleton et
module_skeleton_basic

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

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
