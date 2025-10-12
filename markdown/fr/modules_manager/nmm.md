# nmm

Gestionnaire de modules Nelson.

## Syntaxe

- st = nmm('list')
- nmm('load', module_name)
- l = nmm('autoload', module_name)
- nmm('autoload', module_name, state)
- nmm('install', git_url)
- nmm('uninstall', module_name)
- package_filename = nmm('package', module_name, destination_dir)

## Argument d'entrée

- module_name - chaîne : nom court du module.
- state - logique : true active le chargement automatique du module au démarrage, false désactive l'autoload pour ce module.
- git_url - chaîne : une URL git (protocole http/https).
- destination_dir - chaîne : répertoire de destination existant où l'archive sera créée.

## Argument de sortie

- st - struct : liste des modules installés.
- l - logique : état courant de l'autoload.
- package_filename - chaîne : nom du fichier.

## Description

<p>
            nmm est le gestionnaire de modules Nelson.</p>

<p>Les paquets distribués au format source permettent d'obtenir des paquets optimisés pour votre machine et de disposer de dépôts distribués.</p>

<p>Les modules installés sont compilés localement et peuvent nécessiter un compilateur C/C++.</p>

<p></p>

<p>
                st = nmm('list') récupère la liste des modules installés.</p>

<p></p>

<p>
                    nmm('install', git_url) installe un module distant.</p>

<p>Par exemple : 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0'</p>

<p>'#v1.0.0' est un commit-ish : il permet de cloner exactement un commit.</p>

<p>Le commit-ish peut être un tag (version exacte), un sha1 (commit exact) ou un nom de branche.</p>

<p>Sans commit-ish, la branche master sera utilisée.</p>

<p></p>

<p>
                        nmm('install', filename_nmz) installe un module externe précompilé.</p>

<p></p>

<p>
                            nmm('load', module_name) charge un module installé pour la session courante.</p>

<p></p>

<p>
                                l = nmm('autoload', module_name retourne l'état courant d'autoload pour module_name.</p>

<p></p>

<p>
                                    nmm('autoload', module_name, state) marque un module installé pour être chargé automatiquement au démarrage.</p>

<p>Par défaut, les modules sont marqués pour l'autoload.</p>

<p></p>

<p>
                                        nmm('uninstall', module_name) désinstalle un module installé.</p>

<p></p>

<p>
                                            nmm('package', module_name, destination_dir) empaquette un module dans un fichier zip.</p>

<p></p>

## Exemples

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

## Voir aussi

[ismodule](../modules_manager/ismodule.md), [getmodules](../modules_manager/getmodules.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
