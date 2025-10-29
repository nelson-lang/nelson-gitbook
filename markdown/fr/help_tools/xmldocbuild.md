# xmldocbuild

Fonction interne pour convertir des fichiers XML en HTML.

## 📝 Syntaxe

- status = xmldocbuild(source_dirs, destination_dir, main_title, export_format, overwrite)

## 📥 Argument d'entrée

- source_dirs - une cellule de chaînes : liste des noms de fichiers xml.
- destination_dir - une chaîne : répertoire de destination.
- main_title - une chaîne : titre de l'index principal.
- export_format - une chaîne : 'html' ou 'md'.
- overwrite - un booléen : forcer l'écrasement si le fichier de destination existe déjà.

## 📤 Argument de sortie

- status - un booléen : fichiers générés ou non.

## 📄 Description

<b>xmldocbuild</b> convertit des fichiers de documentation XML en HTML.

fonction interne

## 🔗 Voir aussi

[buildhelp](../help_tools/buildhelp.md), [buildhelpweb](../help_tools/buildhelpweb.md).

## 🕔 Historique

| Version | 📄 Description                |
| ------- | ----------------------------- |
| 1.0.0   | version initiale              |
| 1.15.0  | 'qt' input parameter removed. |

<!--
## 👤 Auteur

Allan CORNET
-->
