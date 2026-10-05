#import "nelson_help.typ": *

= compiler.build.standaloneWindowsApplication <compiler:compiler.build.standaloneWindowsApplication>

Construire une application Windows native sans console.

== Syntaxe

- #raw("result = compiler.build.standaloneWindowsApplication(AppFile)");
- #raw("result = compiler.build.standaloneWindowsApplication(AppFile, Name, Value, ...)");
- #raw("result = compiler.build.standaloneWindowsApplication(options)");

== Description

Charger d'abord le module optionnel compiler avec ncc('--help'). Cette fonction requiert Windows et produit un veritable executable du sous-systeme Windows. Elle ne cree pas de console pour la masquer ensuite.

 Fournir un point d'entree .m existant et des paires nom-valeur, ou un objet scalaire compiler.build.StandaloneApplicationOptions sans surcharges. La sortie facultative est un objet compiler.build.Results dont BuildType vaut standaloneWindowsApplication.

 La validation des options, les donnees embarquees, l'analyse des dependances et le runtime installe compatible sont partages avec compiler.build.standaloneApplication. Aucun runtime ni installateur n'est copie.

 Cette cible ne demande pas de services graphiques par elle-meme. Une application numerique reste numerique ; une application graphique selectionne ces services et conserve la gestion existante des fenetres et de la boucle d'evenements.

 Files contient l'executable, l'archive .nca lorsque EmbedArchive vaut false, et readme.txt. Le comportement d'archive est partage avec standaloneApplication. ExecutableIcon embarque l'image choisie dans les ressources natives Windows. Les sorties redirigees restent disponibles.

 OutputDir peut contenir des fichiers sans rapport. Une construction precedente du meme ExecutableName et de la meme architecture peut etre reconstruite apres verification du rapport et des empreintes des sorties. Les fichiers modifies et collisions non enregistrees sont refuses. Les regles de publication protegee et de recuperation de compiler.build.standaloneApplication s'appliquent aussi, y compris lors du passage entre cibles avec et sans console. Seuls les parametres operationnels de StandaloneApplicationOptions sont acceptes.

 Le dossier de sortie contient aussi buildresult.json, un rapport de preparation de la distribution. Il ne fait pas partie de Results.Files et n'est pas necessaire pour executer l'application. Une reconstruction verifiee publie le nouveau rapport en dernier. Utiliser le nouvel objet Results apres reconstruction. Voir compiler.build.Results pour le contenu et les limites du rapport.

 Les erreurs de chargement natif utilisent le meme code de sortie 2 et les memes diagnostics stderr que compiler.build.standaloneApplication, avec le chemin et le code d'erreur Windows. Configurer RuntimeLogFile pour conserver ces diagnostics et les sorties applicatives sans console. Voir StandaloneApplicationOptions pour les chemins et les erreurs.

 #strong[TreatInputsAsNumeric]; (false par defaut) active une conversion unique des arguments de fonction par la builtin str2double. Les formes de commande sont #strong[-n]; et #strong[--numeric-inputs];. Le texte invalide donne NaN, aucun argument n'est execute comme du code et argv('user') conserve le texte original. Voir #nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions]; pour les valeurs prises en charge et le runtime requis.

 #strong[SupportPackages]; selectionne la detection automatique, aucun paquet enregistre ou une liste de noms nmm autorises. Voir #nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions]; pour la politique de dependances et ses limites.


== Voir aussi

#nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions];, #nlink(<compiler:compiler.build.Results>)[compiler.build.Results];, #nlink(<compiler:compiler_build_tutorial>)[compiler\_build\_tutorial];.

// Auteur: Allan CORNET
