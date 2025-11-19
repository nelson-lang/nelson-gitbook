# nmm

Gestionnaire de modules Nelson.

## 📝 Syntaxe

- st = nmm('list')
- nmm('load', module_name)
- l = nmm('autoload', module_name)
- nmm('autoload', module_name, state)
- nmm('install', git_url)
- nmm('uninstall', module_name)
- package_filename = nmm('package', module_name, destination_dir)

## 📥 Argument d'entrée

- module_name - chaîne : nom court du module.
- state - logique : true active le chargement automatique du module au démarrage, false désactive l'autoload pour ce module.
- git_url - chaîne : une URL git (protocole http/https).
- destination_dir - chaîne : répertoire de destination existant où l'archive sera créée.

## 📤 Argument de sortie

- st - struct : liste des modules installés.
- l - logique : état courant de l'autoload.
- package_filename - chaîne : nom du fichier.

## 📄 Description

<b>nmm</b> est le gestionnaire de modules Nelson.

Les paquets distribués au format source permettent d'obtenir des paquets optimisés pour votre machine et de disposer de dépôts distribués.

Les modules installés sont compilés localement et peuvent nécessiter un compilateur C/C++.

<b>st = nmm('list')</b> récupère la liste des modules installés.

<b>nmm('install', git_url)</b> installe un module distant.

Par exemple : 'https://github.com/nelson-lang/module\_skeleton\_basic.git#v1.0.0'

'#v1.0.0' est un<i>commit-ish</i>: il permet de cloner exactement un commit.

Le commit-ish peut être un tag (version exacte), un sha1 (commit exact) ou un nom de branche.

Sans commit-ish, la branche master sera utilisée.

<b>nmm('install', filename_nmz)</b> installe un module externe précompilé.

<b>nmm('load', module_name)</b> charge un module installé pour la session courante.

<b>l = nmm('autoload', module_name</b> retourne l'état courant d'autoload pour<b>module_name</b>.

<b>nmm('autoload', module_name, state)</b> marque un module installé pour être chargé automatiquement au démarrage.

Par défaut, les modules sont marqués pour l'autoload.

<b>nmm('uninstall', module_name)</b> désinstalle un module installé.

<b>nmm('package', module_name, destination_dir)</b> empaquette un module dans un fichier zip.

## 💡 Exemples

Deploy module_skeleton_basic template

```matlab
if ~ismodule('module_skeleton_basic')
    nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0');
    macro_sum(3, 4)
    nmm('uninstall', 'module_skeleton_basic')
end
```

Package easily a module

```matlab
if ~ismodule('module_skeleton_basic')
    nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0');
end
package_filename = nmm('package', 'module_skeleton_basic', tempdir())

```

## 🔗 Voir aussi

[ismodule](../modules_manager/ismodule.md), [getmodules](../modules_manager/getmodules.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
