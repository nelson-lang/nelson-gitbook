#import "nelson_help.typ": *

= debugging workflow <text_editor:debugging_workflow>

Déroulement d'une session de débogage des fichiers Nelson dans l'éditeur.

== Description

Le débogueur de Nelson fournit des outils interactifs pour diagnostiquer et corriger les scripts et fonctions en contrôlant l'exécution et en inspectant l'état du programme. Le bureau Qt et le bureau web exposent les mêmes commandes, touches, couleurs de marqueurs et libellés.

 Avant de déboguer, enregistrez les fichiers. Les points d'arrêt appartiennent au fichier enregistré : tant qu'un fichier a des modifications non enregistrées, ses marqueurs deviennent gris foncé (invalides) et sont réappliqués sur leurs nouvelles lignes à l'enregistrement. Enregistrer un fichier pendant une pause termine la session de débogage.

 #strong[Points d'arrêt];

 Cliquez dans la marge gauche à côté du numéro de ligne, ou appuyez sur #strong[F12]; sur la ligne, pour poser ou retirer un point d'arrêt standard (rouge). Un point d'arrêt demandé sur un commentaire, une ligne vide ou une ligne #raw("function"); glisse vers la ligne exécutable suivante ; le #raw("end"); d'une boucle ou d'une fonction est une ligne d'arrêt à part entière. Les lignes #raw("else");, #raw("elseif");, #raw("case");, #raw("otherwise"); et #raw("catch"); glissent vers l'instruction suivante.

 Un clic droit dans la marge ouvre le menu des points d'arrêt : #strong[Set\/Clear Breakpoint];, #strong[Set\/Modify Condition...]; (point d'arrêt conditionnel, orange : l'exécution ne s'arrête que si l'expression est vraie ; une expression en erreur ou non scalaire affiche un avertissement et s'arrête), #strong[Enable\/Disable Breakpoint]; (gris clair quand désactivé), #strong[Enable\/Disable All Breakpoints in File];, #strong[Clear All Breakpoints in File]; et #strong[Clear All Breakpoints];. Les mêmes opérations existent en ligne de commande avec #strong[dbstop];, #strong[dbclear]; et #strong[dbstatus]; ; l'éditeur et le panneau Breakpoints les suivent.

 #strong[Pause on Errors]; (#raw("dbstop if error");) s'arrête sur une erreur non attrapée : l'erreur est affichée, puis la ligne ; l'espace de travail de la fonction fautive reste inspectable et la session se termine avec #strong[Continue];, #strong[Step]; ou #strong[Stop];. #strong[Pause on Caught Errors]; (#raw("dbstop if caught error");) s'arrête avant l'exécution d'un bloc #raw("catch"); ; #strong[Continue]; reprend dans celui-ci.

 #strong[Exécution pas à pas];

 Quand l'exécution s'arrête, le fichier s'ouvre dans l'éditeur, la ligne courante est surlignée en vert avec une flèche dans la marge, et l'invite devient #raw("K>>");. La ligne courante n'a pas encore été exécutée.

 Un arrêt obtenu par une commande tapée dans la console y affiche aussi la ligne, sous la forme #raw("3   r = r * 2;"); ; un arrêt obtenu depuis l'éditeur (Step, Continue, Run to Here, Run) déplace la flèche sans rien afficher. Le numéro de ligne imprimé est un lien : un clic ouvre l'éditeur à cette ligne.

 Touches : #strong[F5]; Run, ou Continue pendant une pause ; #strong[F10]; Step ; #strong[F11]; Step In ; #strong[Shift+F11]; Step Out ; #strong[Shift+F5]; Stop (#raw("dbquit");) ; #strong[F12]; Set\/Clear Breakpoint ; #strong[F9]; évaluer la sélection ; #strong[F6]; Pause, qui arrête un programme en cours à sa prochaine instruction ; #strong[Ctrl+F10]; Run to Here, qui exécute jusqu'à la ligne du curseur et s'arrête avant elle.

 Pendant une pause, survoler un nom de variable affiche sa valeur (data tip) ; le panneau Breakpoints liste tous les points d'arrêt avec leur condition et leur état, et le panneau Call Stack liste les fonctions actives (cliquer sur une trame l'ouvre). Chaque fonction a son propre espace de travail : entrer dans une fonction bascule le navigateur d'espace de travail sur elle.

 Les points d'arrêt durent jusqu'à leur suppression ou la fin de Nelson ; ils ne sont pas conservés entre deux sessions.


== Exemples

Crée demo\_debugger.m pour les exemples de débogage.

``````matlab
n = 50;
r = rand(n,1);
plot(r)

m = mean(r);
hold on
plot([0,n],[m,m])
hold off
title("Mean of Random Uniform Data")
``````

Posez un point d'arrêt dans la fonction demo\_debugger : cliquez dans la marge gauche à côté du numéro de ligne.


#align(center)[#image("set_breakpoint.png")]
Lancez le débogage en appelant demo\_debugger depuis la ligne de commande ou le bouton "Run file".


#align(center)[#image("stop_at_breakpoint.png")]
Point d'arrêt conditionnel et arrêt sur erreur depuis la ligne de commande.

``````matlab
dbstop in demo_debugger at 5 if n > 10
dbstop if error
dbstatus
% Breakpoint for demo_debugger is on line 5.
%   Breakpoint on line 5 has conditional expression "n > 10".
%
% Stop if error.
dbclear all
``````


== Voir aussi

#nlink(<text_editor:edit>)[edit];, #nlink(<debugger:dbstop>)[dbstop];, #nlink(<debugger:dbclear>)[dbclear];, #nlink(<debugger:dbstep>)[dbstep];, #nlink(<debugger:dbcont>)[dbcont];, #nlink(<debugger:dbquit>)[dbquit];, #nlink(<debugger:dbstatus>)[dbstatus];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [Version initiale],
  [2.0.0], [Points d'arrêt conditionnels, activation\/désactivation, arrêt sur erreur, Pause, Run to Here, data tips, touches de fonction et marqueurs, parité de l'éditeur web.],
)

// Auteur: Allan CORNET
