# xmldoctohtml

Convertit des fichiers d'aide XML Nelson en HTML.

## 📝 Syntaxe

- status = xmldoctohtml(source_dirs, destination_dir, main_title, overwrite)

## 📥 Argument d'entrée

- source_dirs - une cellule de chaînes : liste des noms de fichiers xml.
- destination_dir - une chaîne : répertoire de destination.
- main_title - une chaîne : titre de l'index principal.
- overwrite - un booléen : forcer l'écrasement si le fichier de destination existe déjà.
- html_type - une chaîne : 'web' (par défaut) ou 'html' (local).

## 📤 Argument de sortie

- status - un booléen : fichiers générés ou non.

## 📄 Description

<b>xmldoctohelp</b> convertit des fichiers d'aide XML Nelson en HTML.

Les éléments link de chapter_description restent des liens dans le sommaire de chapitre généré. Une cible linkend telle que guide ou nested/guide est relative à la racine du module ; ${module}guide et {module}guide désignent un module explicite. Les cibles sont les chemins des pages XML sans leur extension.

## 🔗 Voir aussi

[xmldocbuild](../help_tools/xmldocbuild.md), [buildhelp](../help_tools/buildhelp.md), [buildhelpweb](../help_tools/buildhelpweb.md).

## 🕔 Historique

| Version | 📄 Description           |
| ------- | ------------------------ |
| 1.0.0   | version initiale         |
| 1.15.0  | html_type input argument |

<!--
## 👤 Auteur

Allan CORNET
-->
