# buildhelptypst

Génère l'aide des modules de Nelson en sources Typst.

## 📝 Syntaxe

- buildhelptypst(dirdest)
- buildhelptypst(dirdest, module\_name)

## 📥 Argument d'entrée

- dirdest - une chaîne : répertoire de destination.
- module\_name - une chaîne : nom du module (le module doit être chargé).

## 📄 Description


<b>buildhelptypst</b> génère l'aide en sources Typst, prêtes à être compilées en PDF. 

Pour chaque langue disponible, les pages d'un module sont écrites dans <code>dirdest/<lang>/<module>/</code> avec un document racine <code>main.typ</code> (voir [xmldoctotypst](../help_tools/xmldoctotypst.md)). Le document racine <code>dirdest/<lang>/main.typ</code> applique le style de page <code>nelson-style</code> de <code>nelson_help.typ</code> et inclut, dans l'ordre : les modules, puis une table des matières. 

Avec un seul argument, tout le manuel est généré : la page d'accueil, le guide de démarrage, les changelogs et les licences (pages markdown du module <code>main</code>, converties en Typst) encadrent les modules, comme dans le manuel markdown produit par [buildhelpmd](../help_tools/buildhelpmd.md). 

Compiler un module avec <code>typst compile dirdest/fr/core/main.typ</code>, ou tout le manuel avec <code>typst compile dirdest/fr/main.typ</code>. Les fragments LaTeX des pages sont composés avec le paquet Typst <code>mitex</code>, téléchargé au premier usage par le compilateur typst.

## 💡 Exemple



```matlab
buildhelptypst(tempdir(), 'core');
dir([tempdir(), 'fr/core'])
```


## 🔗 Voir aussi

[buildhelp](../help_tools/buildhelp.md), [buildhelpmd](../help_tools/buildhelpmd.md), [xmldoctotypst](../help_tools/xmldoctotypst.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
