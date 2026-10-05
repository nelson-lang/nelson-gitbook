#import "nelson_help.typ": *

= nelson.compiler.BuildResult <compiler:nelson.compiler.BuildResult>

Consulter le resultat d'une construction applicative.

== Syntaxe

- #raw("result = nelson.compiler.build(options)");
- #raw("result = ncc(options)");
- #raw("result = nelson.compiler.BuildResult(report, options)");
- #raw("values = struct(result)");

== Argument d'entrée

/ report: Structure scalaire contenant Executable, RuntimeDirectory, DependencyPlan, RuntimePlan, Manifest et SHA256.
/ options: Objet scalaire nelson.compiler.BuildOptions.

== Argument de sortie

/ result: Resultat scalaire avec proprietes en lecture seule.

== Description

Obtenir normalement ce resultat avec #strong[ncc(options)]; ou #strong[nelson.compiler.build(options)];. Le constructeur encapsule un rapport existant : il ne construit rien, ne verifie pas les fichiers et n'authentifie pas leur contenu.

 #strong[BuildType]; : standaloneApplication, ou standaloneWindowsApplication lorsque options.NoConsole vaut true.

 #strong[Files]; : cellule de chemins a distribuer, contenant Executable et, en mode bundled, RuntimeDirectory. Ce n'est ni un inventaire recursif ni un installateur.

 #strong[Executable]; : chemin absolu de l'executable natif. #strong[RuntimeDirectory]; : dossier runtime voisin, ou vide en mode installed. Deplacer ensemble l'executable bundled et son dossier runtime sans les renommer.

 #strong[Options]; : copie valeur de la configuration. Les modifications ulterieures des options de l'appelant ne modifient pas le resultat.

 #strong[DependencyPlan]; : analyse des dependances applicatives resolues. #strong[RuntimePlan]; : besoins du runtime et inventaire des fichiers selectionnes en mode bundled. Ces informations permettent de comprendre les modules et fichiers inclus.

 #strong[Manifest]; : manifeste applicatif embarque decrivant les entrees de l'archive et les besoins du runtime. #strong[SHA256]; : empreinte de l'executable produit, pas une signature d'editeur.

 #strong[struct(result)]; convertit le resultat en structure scalaire, y compris Options. Le rapport peut contenir des chemins absolus de la machine de construction ; les examiner avant publication. Ce resultat decrit le paquet applicatif actuel, pas un installateur.

 Lorsque Options.EmbedArchive vaut false, Files contient aussi l'archive .nca entre l'executable et l'eventuel dossier runtime. SHA256 reste l'empreinte de l'executable ; l'integrite de l'archive est verifiee au lancement.


== Exemple

Consulter une construction

``````matlab
options = ncc('options', 'app_entry.m', 'OutputDir', 'application-build');
result = ncc(options);
disp(result.Files);
disp(result.RuntimePlan);
text = jsonencode(struct(result));
``````


== Voir aussi

#nlink(<compiler:nelson.compiler.BuildOptions>)[nelson.compiler.BuildOptions];, #nlink(<compiler:nelson.compiler.build>)[nelson.compiler.build];, #nlink(<compiler:compiler_standalone_tutorial>)[compiler\_standalone\_tutorial];.

// Auteur: Allan CORNET
