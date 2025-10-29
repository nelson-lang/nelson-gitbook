# deployhelp

Installer, désinstaller et gérer le système d'aide local de Nelson et les fichiers d'aide des modules.

## 📝 Syntaxe

- deployhelp('install')
- deployhelp('install', verbose)
- deployhelp('add', module_name, module_help_dir)
- deployhelp('remove', module_name)
- [status, message] = deployhelp('uninstall')
- status = deployhelp('status')
- [status, message] = deployhelp('refresh')

## 📥 Argument d'entrée

- 'install' - Installer le système d'aide local (tous les modules, toutes les langues). Le deuxième argument optionnel verbose (logique) contrôle la verbosité ; la valeur par défaut est true.
- module_name - Nom du module à ajouter ou à supprimer de l'arborescence d'aide locale.
- module_help_dir - Répertoire contenant l'(les) archive(s) d'aide du module.
- verbose - scalaire logique (true/false). Lorsqu'il est fourni à 'install', il contrôle si les étapes d'installation affichent une sortie détaillée.

## 📄 Description

La fonction gère un répertoire d'aide local versionné sous userdir()/Nelson/<version>/help/.

Actions :

<b>install</b>: crée et installe le système d'aide local (appelle docroot('.') et installe localement). Utilisez l'option verbose pour activer ou désactiver la sortie détaillée.

<b>add</b>: extrait les archives d'aide .nhz par langue trouvées dans module_help_dir/help/ vers les répertoires versionnés help/lang/<module_name>.

<b>remove</b>: supprime le répertoire d'aide du module pour chaque langue.

<b>refresh</b>, <b>uninstall</b>, <b>status</b>: respectivement rafraîchit la base de données d'aide, désinstalle le système d'aide local ou renvoie si le dossier d'aide local existe. Les actions qui peuvent échouer renvoient [status, message].

## 🔗 Voir aussi

[doc](../help_tools/doc.md), [docroot](../help_tools/docroot.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.15.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
