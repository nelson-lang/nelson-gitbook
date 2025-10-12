# module.json

Description du fichier module.json

## Description

<p>Un fichier module.json est requis pour chaque module externe de Nelson ; il permet de le
            gérer facilement avec la fonction nmm.</p>

<p></p>

<p>module: identifiant unique (nom court du module, caractères alphanumériques),
            exemple : "module_skeleton_basic"</p>

<p>title: nom complet du module (nom convivial), exemple : "Module skeleton basic"</p>

<p>summary: description sur une ligne, exemple : "Skeleton of a basic nelson package"</p>

<p>version: numéro de version en utilisant le versionnement sémantique, exemple :
            "1.0.0"</p>

<p>platforms: plateformes supportées.</p>

<p>"all" pour toutes les plateformes</p>

<p>autres plateformes :</p>

<p>"win32" : Windows 32 bits</p>

<p>"win64" : Windows 64 bits</p>

<p>"maci64" : macOS 64 bits</p>

<p>"maci32" : macOS 32 bits</p>

<p>"glnxa64" : Linux 64 bits</p>

<p>"glnxa32" : Linux 32 bits</p>

<p>exemple : ["win64", "glnxa64"], le module ne sera disponible que sur Windows et
            Linux 64 bits.</p>

<p>nelson: versions de Nelson supportées, exemple : "<2.0.0" (par défaut)</p>

<p>builtin: true si le module nécessite un compilateur C/C++, false si le module
            contient uniquement des macros.</p>

<p>author: informations sur l'auteur : nom, email et site web</p>

<p>Exemple :</p>

<p>{</p>

<p>"name": "Allan CORNET",</p>

<p>"email": "nelson.numerical.computation@gmail.com",</p>

<p>"url": "https://nelson-lang.github.io/nelson-website/"</p>

<p>}</p>

<p></p>

<p>homepage: page d'accueil du module, exemple
            "https://github.com/nelson-lang/module_skeleton_basic"</p>

<p>description: description complète du module, format Markdown supporté, exemple :
            "nelson's module skeleton (macros only)"</p>

<p>copyright: description du copyright, exemple : "Copyright © 2019-present Allan
            CORNET"</p>

<p>license: licence sous laquelle la boîte à outils sera publiée, exemple : "BSD" ou
            "LGPLv2", ...</p>

<p>keywords: mots-clés décrivant votre module.</p>

<p>Exemple :</p>

<p>["interpreter", "scientific-computing", "programming-language", "matrix-functions",
            "skeleton"]</p>

<p></p>

<p>dependencies: liste des dépendances de modules {} (par défaut) ou paires nom : url</p>

<p>{</p>

<p>"module_a": "https://module_a.git#v1.0.0",</p>

<p>"module_b": "https://module_b.git#v1.0.0"</p>

<p>}</p>

## Exemple

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

## Voir aussi

[nmm](../modules_manager/nmm.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
