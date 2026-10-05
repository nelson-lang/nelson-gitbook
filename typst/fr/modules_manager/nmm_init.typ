#import "nelson_help.typ": *

= nmm init <modules_manager:nmm_init>

Genere un manifeste module.json valide.

== Syntaxe

- #raw("module_json_path = nmm('init', destination_dir, champ1, valeur1, ...)");
- #raw("data = nmm('init', destination_dir, ..., 'DryRun', true)");
- #raw("module_json_path = nmm('init', destination_dir, ..., 'Force', true)");
- #raw("module_json_path = nmm('init', destination_dir, ..., 'Skeleton', true)");
- #raw("module_json_path = nmm('init', destination_dir, 'Interactive', true)");

== Argument d'entrée

/ destination\_dir: une chaine de caracteres : repertoire ou #strong[module.json]; est ecrit (cree s'il n'existe pas).
/ champ1, valeur1, ...: des paires nom\/valeur decrivant le manifeste et les options de la commande (voir la description).

== Argument de sortie

/ module\_json\_path: une chaine de caracteres : chemin complet du fichier #strong[module.json]; ecrit.
/ data: une structure : le manifeste assemble, retourne lorsque #strong['DryRun']; vaut #strong[true]; (rien n'est ecrit).

== Description

#strong[nmm('init', destination\_dir, ...)]; assemble un manifeste #strong[module.json]; a partir des champs fournis et de valeurs par defaut raisonnables, le valide avec le meme validateur de schema que #strong[nmm('validate')];, puis ecrit un #strong[module.json]; formate dans #strong[destination\_dir];. Comme il reutilise le validateur de nmm, un manifeste genere est toujours valide pour nmm.

 Champs du manifeste acceptes comme paires nom\/valeur :

 #strong[module]; un nom de module respectant #strong[^\[A-Za-z\]\[A-Za-z0-9\_\]\*\$]; ; par defaut le nom du repertoire de destination (ou le titre) s'il est omis.

 #strong[title];, #strong[summary]; des chaines non vides ; #strong[title]; vaut par defaut le nom du module et #strong[summary]; vaut par defaut le titre.

 #strong[version]; une version semantique ; par defaut #strong[1.0.0];.

 #strong[license]; une expression de licence SPDX (par exemple #strong[MIT]; ou #strong[LGPL-3.0-or-later];) ; obligatoire.

 #strong[platforms]; une chaine ou un tableau de chaines ; par defaut #strong[{'all'}];.

 #strong[nelson]; une plage de versions Nelson ; par defaut #strong[\>\=2.0.0];.

 #strong[builtin]; un booleen ; par defaut #strong[false];.

 #strong[dependencies]; une structure associant des noms de modules a des contraintes de version ; par defaut une structure vide.

 #strong[keywords];, #strong[authors];, #strong[description];, #strong[repository];, #strong[homepage];, #strong[issues];, #strong[documentation]; metadonnees optionnelles.

 Options de la commande :

 #strong['Force', true]; ecrase un #strong[module.json]; existant (sinon la commande echoue).

 #strong['DryRun', true]; retourne la structure du manifeste assemble sans ecrire de fichier.

 #strong['Skeleton', true]; depose aussi une arborescence source minimale, chargeable et empaquetable a cote du manifeste (#strong[loader.m];, #strong[builder.m];, #strong[etc\/startup.m];, #strong[etc\/finish.m];, #strong[help]; et #strong[tests];). Elle est volontairement minimale ; utilisez un generateur dedie pour un module plus complet.

 #strong['Interactive', true]; demande via #strong[input()]; chaque champ requis non fourni, en affichant la valeur par defaut entre crochets et en validant chaque reponse. L'option est desactivee par defaut afin que les scripts lances via #strong[--file]; ne bloquent jamais sur l'entree standard.

 Apres l'ecriture (ou le calcul, avec #strong[DryRun];) du manifeste, #strong[init]; execute le linter de bonnes pratiques de nmm (le meme que #strong[nmm('validate', ..., '-warnings')];) et affiche des suggestions non bloquantes pour les metadonnees recommandees manquantes, telles que #strong[repository];, #strong[authors];, #strong[keywords]; ou #strong[description];. Les avertissements n'empechent jamais l'ecriture du manifeste. Avec #strong[DryRun];, la structure retournee contient egalement un champ #strong[warnings];.

 Le manifeste genere est directement utilisable par #strong[nmm('validate')]; et, pour un module source, par #strong[nmm('pack')];.


== Exemple

Generer un manifeste et le valider

``````matlab
module_dir = [tempdir(), 'my_module/'];
mkdir(module_dir);
nmm('init', module_dir, 'module', 'my_module', 'title', 'My Module', ...
    'summary', 'a demo module', 'license', 'MIT', 'Skeleton', true);
nmm('validate', module_dir)

``````


== Voir aussi

#nlink(<modules_manager:nmm>)[nmm];, #nlink(<modules_manager:module-json>)[module.json];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
