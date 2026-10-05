#import "nelson_help.typ": *

= nelson.compiler.analyze <compiler:nelson.compiler.analyze>

Examiner les dependances sans produire d'executable.

== Syntaxe

- #raw("plan = nelson.compiler.analyze(options)");
- #raw("nelson.compiler.analyze(options)");

== Argument d'entrée

/ options: Un objet scalaire nelson.compiler.BuildOptions.

== Argument de sortie

/ plan: Structure scalaire decrivant dependances resolues, diagnostics et besoins du runtime.

== Description

Cette fonction est equivalente a #strong[ncc(options, '--explain-link')];. Elle lit les sources, les ressources incluses et le catalogue des fonctions chargees. Elle n'execute pas le point d'entree, ne cree pas le dossier de sortie, ne construit pas d'executable et ne copie pas de runtime.

 #strong[plan.complete]; indique si l'analyse s'est terminee sans dependance non resolue. Examiner les diagnostics lorsque cette valeur est false. Un plan statique complet ne prouve pas que tous les appels dynamiques et chemins de ressources possibles sont couverts.

 #strong[plan.runtime]; decrit les besoins du runtime ; #strong[plan.runtime.modules]; liste les modules selectionnes. plan.noConsole et plan.executableVersion refletent la configuration du lanceur. Les autres champs decrivent les fonctions et ressources resolues, les exclusions et les raisons d'inclusion.

 Utiliser AdditionalFiles pour les chemins calcules dynamiquement et examiner les diagnostics avant construction. L'analyse reflete les fichiers et l'environnement courants. Elle ne fige pas les entrees : build effectue une nouvelle analyse.

 Sans sortie, le plan est affiche. Avec une sortie, la structure peut etre examinee ou convertie avec jsonencode. Le rapport peut contenir des chemins absolus de la machine de construction.


== Exemple

Examiner une configuration

``````matlab
options = ncc('options', 'app_entry.m', 'RuntimeMode', 'installed');
plan = nelson.compiler.analyze(options);
disp(plan.complete);
disp(plan.runtime.modules);
``````


== Voir aussi

#nlink(<modules_manager:ncc>)[ncc];, #nlink(<compiler:nelson.compiler.BuildOptions>)[nelson.compiler.BuildOptions];, #nlink(<compiler:nelson.compiler.build>)[nelson.compiler.build];, #nlink(<compiler:compiler_standalone_tutorial>)[compiler\_standalone\_tutorial];.

// Auteur: Allan CORNET
