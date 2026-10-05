# modulepath

Renvoie le chemin d'un module.

## 📝 Syntaxe

- p = modulepath(module\_short\_name)
- p = modulepath(module\_short\_name, option)

## 📥 Argument d'entrée

- module\_short\_name or 'nelson' - chaîne : nom court du module. Le module doit exister dans la session Nelson.
- option - chaîne : 'etc', 'bin', 'root', 'builtin', 'tests'.

## 📤 Argument de sortie

- p - chaîne : chemin ou sous-chemin du module.

## 📄 Description


<b>modulepath</b> est une fonction d'aide qui renvoie le chemin racine d'un module ou un sous-répertoire. 

<b>modulepath('nelson')</b> est équivalent à <b>modulepath('nelson', 'root')</b> 

<b>modulepath('nelson', 'bin')</b> renvoie le chemin des exécutables de Nelson. 

<b>modulepath('nelson', 'builtin')</b> renvoie le chemin des bibliothèques dynamiques de Nelson.

## 💡 Exemple



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


## 🔗 Voir aussi

[requiremodule](../modules_manager/requiremodule.md), [getmodules](../modules_manager/getmodules.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
