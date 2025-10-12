# modulepath

Renvoie le chemin d'un module.

## Syntaxe

- p = modulepath(module_short_name)
- p = modulepath(module_short_name, option)

## Argument d'entrée

- module_short_name or 'nelson' - chaîne : nom court du module. Le module doit exister dans la session Nelson.
- option - chaîne : 'etc', 'bin', 'root', 'builtin', 'tests'.

## Argument de sortie

- p - chaîne : chemin ou sous-chemin du module.

## Description

<p>
            modulepath est une fonction d'aide qui renvoie le chemin racine d'un module ou un sous-répertoire.</p>

<p>
                modulepath('nelson') est équivalent à modulepath('nelson', 'root')
            </p>

<p>
                modulepath('nelson', 'bin') renvoie le chemin des exécutables de Nelson.</p>

<p>
                    modulepath('nelson', 'builtin') renvoie le chemin des bibliothèques dynamiques de Nelson.</p>

## Exemple

```matlab
modulepath('core')
modulepath('core', 'root')
modulepath('core', 'etc')
modulepath('core', 'bin')
modulepath('core', 'builtin')
modulepath('core', 'tests')
modulepath('nelson', 'root')
modulepath('nelson', 'bin')
modulepath('nelson', 'builtin')

```

## Voir aussi

[requiremodule](../modules_manager/requiremodule.md), [getmodules](../modules_manager/getmodules.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
