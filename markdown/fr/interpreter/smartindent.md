# smartindent

Formatage et indentation d'un fichier Nelson

## 📝 Syntaxe

- smartindent(filename)
- smartindent(filename, indentsize)
- smartindent(filename, indentsize, dobackup)
- smartindent(filename, indentsize, dobackup, fullformat)

## 📥 Argument d'entrée

- filename - une chaine : nom du fichier a formater.
- indentsize - un entier > 0. par defaut : 2
- dobackup - un booleen : false par defaut. Si true, cree un fichier .bak.
- fullformat - un booleen : true par defaut. Si false, seule l'indentation de debut de ligne est modifiee.

## 📄 Description

<b>smartindent</b> valide, formate et indente le code Nelson sans l'executer. Par defaut, il normalise l'indentation, les espaces autour des operateurs courants, les separateurs et les blocs classdef. Mettre <b>fullformat</b> a false pour modifier uniquement l'indentation de debut de ligne.

Le formatage complet conserve les points accoles aux noms de packages, aux membres des objets et aux champs des structures, y compris les champs dynamiques comme <b>value.(name)</b>. Les operateurs element par element conservent leur espacement d'operateur.

Les noms de blocs de classe comme <b>properties</b> et <b>methods</b> restent des identifiants ordinaires dans les instructions executables. Ils ouvrent des blocs d'indentation uniquement dans le corps de la classe.

Les marqueurs de commentaire de bloc dans les tableaux de caracteres, les chaines et les commentaires de ligne restent du texte. Un vrai commentaire de bloc non termine est rejete avant l'ecriture du fichier.

Un bloc ouvert et ferme sur la meme ligne, comme <b>if ready, value = 1; end</b>, n'augmente pas l'indentation des lignes suivantes. Un <b>end</b> utilise dans une indexation ne ferme pas un bloc.

## 🔗 Voir aussi

[edit](../text_editor/edit.md).

## 🕔 Historique

| Version | 📄 Description              |
| ------- | --------------------------- |
| 1.0.0   | version initiale            |
| 2.0.0   | parametre fullformat ajoute |

<!--
## 👤 Auteur

Allan CORNET
-->
