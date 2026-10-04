# nmm_gui

Ouvrir la fenêtre du gestionnaire de paquets.

## 📝 Syntaxe

- nmm_gui()
- nmm_gui(action, package_name)
- nmm_gui(action, package_name, version)

## 📄 Description

<b>nmm_gui</b> ouvre la fenêtre du gestionnaire de paquets Nelson, une interface graphique pour <b>nmm</b>. Un nouvel appel remet la fenêtre existante au premier plan et l’actualise. La fenêtre est accessible depuis le bureau (menu Outils, barre d’outils et rail des panneaux) et depuis la ligne de commande avancée. Dans le bureau web, <b>nmm_gui</b> affiche le gestionnaire de paquets comme un panneau <b>Package Manager</b> ancré à côté de la fenêtre de commande (Outils > Package Manager ouvre le même panneau) : une seule fenêtre de navigateur suffit.

La liste de gauche présente tous les paquets connus de Nelson : les paquets installés et ceux publiés par le registre configuré (voir <b>NELSON_NMM_REGISTRY</b> dans <b>nmm</b>). Les filtres <b>Tous</b>, <b>Installés</b> et <b>Mises à jour</b> ainsi que le champ de recherche restreignent la liste ; le panneau de droite détaille le paquet sélectionné : résumé, métadonnées, mots-clés, page d’accueil et actions applicables.

<b>Installer</b>, <b>Mettre à jour</b> et <b>Supprimer</b> exécutent la commande <b>nmm</b> correspondante dans la console Nelson, dont la sortie reste visible. Pendant l’exécution, la fenêtre affiche la progression étape par étape (récupération, dépendances, construction, tests du paquet s’ils sont activés, enregistrement) et actualise la liste à la fin. Les opérations saisies dans la console sont suivies de la même manière.

Les tests du paquet ne sont pas exécutés à l’installation sauf demande explicite (voir <b>nmm</b>) : l’indication à côté du bouton d’installation précise si un paquet est construit depuis les sources ou installé depuis une archive préconstruite.

<b>nmm_gui(action, package_name)</b> ouvre la fenêtre (ou la met au premier plan) sur un paquet donné. <b>action</b> vaut <b>'show'</b> pour sélectionner le paquet, ou <b>'install'</b> pour le sélectionner et lancer son installation. Un argument <b>version</b> optionnel choisit la version à installer. Les arguments sont vérifiés avant toute ouverture de fenêtre.

Pour un paquet non installé, une liste <b>Version</b> choisit la version à installer. Un paquet installé peut aussi être chargé ou déchargé pour la session, et épinglé sur sa version (<b>Épingler</b>, <b>Dépingler</b>). Dans le filtre <b>Mises à jour</b>, <b>Tout mettre à jour</b> met à jour chaque paquet dont une version plus récente existe. <b>Installer depuis un fichier ou une URL</b> installe une archive <b>.nmz</b> locale, un dossier de module ou une URL git.

Le panneau de détail présente aussi l’arbre des dépendances (installées, à installer ou manquantes), les paquets installés qui requièrent le paquet sélectionné, son readme et son changelog, ainsi que ses liens dépôt, tickets et documentation. <b>Copier la commande d’installation</b> copie l’appel <b>nmm('install', ...)</b> correspondant, avec la version affichée, pour un paquet publié par le registre. <b>Vérifier</b> contrôle un paquet installé (dossier du module, <b>module.json</b>, version, dépendances).

<b>Cache</b> liste les archives du cache hors ligne des paquets, les vérifie et les supprime. <b>Environnement</b> exporte les paquets installés sous forme de lignes <b>nom version</b>, et installe les paquets manquants d’une telle liste.

<b>Actualiser</b> recharge les paquets installés et télécharge toujours le registre actuel ; la sélection d’un paquet réutilise le registre lu lors de la dernière actualisation. La fenêtre suit la langue de Nelson.

La fenêtre requiert le module <b>webview</b>. Sans registre configuré, les paquets installés restent listés et peuvent être supprimés.

## 💡 Exemples

Ouvrir ou actualiser la fenêtre du gestionnaire de paquets.

```matlab
nmm_gui()
```

Ouvrir la fenêtre sur un paquet et l'installer.

```matlab
nmm_gui('install', 'ngen')
```

## 🔗 Voir aussi

[nmm](../modules_manager/nmm.md), [demo](../webview/demo.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
