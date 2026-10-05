# xmldoctomd

Convertit des fichiers d'aide XML Nelson au format Markdown.

## 📝 Syntaxe

- status = xmldoctomd(source\_dirs, destination\_dir, main\_title, overwrite)
- status = xmldoctomd(source\_dirs, destination\_dir, main\_title, overwrite, index\_dirs)

## 📥 Argument d'entrée

- source\_dirs - une cellule de chaînes : liste des noms de fichiers xml.
- destination\_dir - une chaîne : répertoire de destination.
- main\_title - une chaîne : titre de l'index principal.
- overwrite - un booléen : forcer l'écrasement si le fichier de destination existe déjà.
- index\_dirs - une cellule de chaînes (optionnel) : racines XML d'aide des autres modules dont les pages peuvent être liées, utilisées pour résoudre <link linkend="${module}nom">.

## 📤 Argument de sortie

- status - un booléen : fichiers générés ou non.

## 📄 Description


<b>xmldoctomd</b> convertit des fichiers d'aide XML Nelson au format Markdown. 

Les éléments link de chapter\_description restent des liens dans le sommaire de chapitre généré. Une cible linkend telle que guide ou nested/guide est relative à la racine du module ; ${module}guide et {module}guide désignent un module explicite. Les cibles sont les chemins des pages XML sans leur extension, des mots-clés ou des alias : chaque lien est résolu à partir de l'index des mots-clés de source\_dirs et index\_dirs et pointe vers la page réelle, même dans un sous-répertoire de chapitre ou si le nom de fichier diffère du mot-clé. Les liens non résolus sont signalés par des avertissements.


## 🔗 Voir aussi

[xmldocbuild](../help_tools/xmldocbuild.md), [buildhelpmd](../help_tools/buildhelpmd.md), [buildhelpweb](../help_tools/buildhelpweb.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | argument index_dirs : liens résolus à partir de l'index des mots-clés. |

<!--
## 👤 Auteur

Allan CORNET
-->
