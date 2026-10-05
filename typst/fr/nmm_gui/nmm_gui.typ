#import "nelson_help.typ": *

= nmm\_gui <nmm_gui:nmm_gui>

Ouvrir la fenêtre du gestionnaire de paquets.

== Syntaxe

- #raw("nmm_gui()");
- #raw("nmm_gui(action, package_name)");
- #raw("nmm_gui(action, package_name, version)");

== Description

#strong[nmm\_gui]; ouvre la fenêtre du gestionnaire de paquets Nelson, une interface graphique pour #strong[nmm];. Un nouvel appel remet la fenêtre existante au premier plan et l’actualise. La fenêtre est accessible depuis le bureau (menu Outils, barre d’outils et rail des panneaux) et depuis la ligne de commande avancée. Dans le bureau web, #strong[nmm\_gui]; affiche le gestionnaire de paquets comme un panneau #strong[Package Manager]; ancré à côté de la fenêtre de commande (Outils \> Package Manager ouvre le même panneau) : une seule fenêtre de navigateur suffit.

 La liste de gauche présente tous les paquets connus de Nelson : les paquets installés et ceux publiés par le registre configuré (voir #strong[NELSON\_NMM\_REGISTRY]; dans #strong[nmm];). Les filtres #strong[Tous];, #strong[Installés]; et #strong[Mises à jour]; ainsi que le champ de recherche restreignent la liste ; le panneau de droite détaille le paquet sélectionné : résumé, métadonnées, mots-clés, page d’accueil et actions applicables.

 #strong[Installer];, #strong[Mettre à jour]; et #strong[Supprimer]; exécutent la commande #strong[nmm]; correspondante dans la console Nelson, dont la sortie reste visible. Pendant l’exécution, la fenêtre affiche la progression étape par étape (récupération, dépendances, construction, tests du paquet s’ils sont activés, enregistrement) et actualise la liste à la fin. Les opérations saisies dans la console sont suivies de la même manière.

 Les tests du paquet ne sont pas exécutés à l’installation sauf demande explicite (voir #strong[nmm];) : l’indication à côté du bouton d’installation précise si un paquet est construit depuis les sources ou installé depuis une archive préconstruite.

 #strong[nmm\_gui(action, package\_name)]; ouvre la fenêtre (ou la met au premier plan) sur un paquet donné. #strong[action]; vaut #strong['show']; pour sélectionner le paquet, ou #strong['install']; pour le sélectionner et lancer son installation. Un argument #strong[version]; optionnel choisit la version à installer. Les arguments sont vérifiés avant toute ouverture de fenêtre.

 Pour un paquet non installé, une liste #strong[Version]; choisit la version à installer. Un paquet installé peut aussi être chargé ou déchargé pour la session, et épinglé sur sa version (#strong[Épingler];, #strong[Dépingler];). Dans le filtre #strong[Mises à jour];, #strong[Tout mettre à jour]; met à jour chaque paquet dont une version plus récente existe. #strong[Installer depuis un fichier ou une URL]; installe une archive #strong[.nmz]; locale, un dossier de module ou une URL git.

 Le panneau de détail présente aussi l’arbre des dépendances (installées, à installer ou manquantes), les paquets installés qui requièrent le paquet sélectionné, son readme et son changelog, ainsi que ses liens dépôt, tickets et documentation. #strong[Copier la commande d’installation]; copie l’appel #strong[nmm('install', ...)]; correspondant, avec la version affichée, pour un paquet publié par le registre. #strong[Vérifier]; contrôle un paquet installé (dossier du module, #strong[module.json];, version, dépendances).

 #strong[Cache]; liste les archives du cache hors ligne des paquets, les vérifie et les supprime. #strong[Environnement]; exporte les paquets installés sous forme de lignes #strong[nom version];, et installe les paquets manquants d’une telle liste.

 #strong[Actualiser]; recharge les paquets installés et télécharge toujours le registre actuel ; la sélection d’un paquet réutilise le registre lu lors de la dernière actualisation. La fenêtre suit la langue de Nelson.

 La fenêtre requiert le module #strong[webview];. Sans registre configuré, les paquets installés restent listés et peuvent être supprimés.


== Exemples

Ouvrir ou actualiser la fenêtre du gestionnaire de paquets.

``````matlab
nmm_gui()
``````

Ouvrir la fenêtre sur un paquet et l'installer.

``````matlab
nmm_gui('install', 'ngen')
``````


== Voir aussi

#nlink(<modules_manager:nmm>)[nmm];, #nlink(<webview:demo>)[demo];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
