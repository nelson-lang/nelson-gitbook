#import "nelson_help.typ": *

= Votre premier Notebook Nelson <notebook:1_notebook_first_steps>

Créer, exécuter et enregistrer votre premier document Notebook.

== Description

Un #strong[Notebook]; est un document unique qui réunit du texte mis en forme, du code Nelson et la sortie de ce code, dans l'ordre que vous choisissez. Il est construit à partir de #strong[blocs]; : un titre, un paragraphe, une cellule de code, une équation ou un contrôle interactif. Exécuter une cellule de code affiche sa sortie texte et ses figures juste en dessous du code, si bien que l'explication, le calcul et le résultat restent ensemble.

 Toutes les cellules de code d'un même document partagent un seul espace de travail, le même espace de travail de base que celui de la ligne de commande. Une variable créée dans une cellule est visible dans les cellules qui s'exécutent ensuite. Ce tutoriel crée un document, l'exécute et l'enregistre.

 #strong[Ouvrir l'éditeur];

 La fonction #strong[notebook]; ouvre l'éditeur Notebook :

 

- #strong[notebook()]; sans argument ouvre un nouveau document vide.
- #strong[notebook(filename, 'edit')]; ouvre un document existant, et #strong[edit(filename)]; fait de même pour un fichier #strong[.nlx];. Sur le bureau Nelson, vous pouvez aussi utiliser le bouton #strong[Nouveau Notebook]; de la barre d'outils, ou le menu #strong[Fenêtre];. L'éditeur s'ouvre comme un onglet du bureau web ou, sur le bureau Qt, comme la fenêtre Notebook (une seule fenêtre, un onglet par document). Sans bureau (nelson-cli, nelson-adv-cli), l'éditeur ne peut pas s'ouvrir et l'appel signale une erreur.

 L'éditeur affiche une barre d'outils en haut et le document en dessous. Un nouveau document contient déjà un court exemple que vous pouvez exécuter et modifier.

 
#align(center)[#image("notebook_editor.png")]


 #strong[Ajouter du texte et du code];

 Cliquez dans le document et saisissez du texte. Appuyez sur #strong[Entrée]; pour commencer un nouveau bloc. Pour insérer autre chose qu'un paragraphe, tapez #strong[\/]; en début de ligne et choisissez un élément dans la liste, ou utilisez le menu #strong[Insérer]; de la barre d'outils. Choisissez #strong[Cellule de code]; pour ajouter une cellule et y saisir du code Nelson, par exemple :

 #raw("x = linspace(0, 2 * pi, 200);");

 #raw("plot(x, sin(x))");

 #strong[Exécuter une cellule];

 Chaque cellule de code a un bouton d'exécution dans sa marge de gauche. Cliquez dessus pour exécuter cette seule cellule, ou cliquez sur #strong[Tout exécuter]; dans la barre d'outils pour exécuter toutes les cellules de code de haut en bas. La sortie texte apparaît sous la cellule, et toute figure dessinée par la cellule est affichée en ligne, dans le document, au lieu d'une fenêtre figure séparée.

 #strong[L'espace de travail partagé];

 Comme les cellules partagent un seul espace de travail, vous pouvez répartir un calcul sur plusieurs cellules. La valeur fixée dans une cellule antérieure est utilisée par une cellule ultérieure :

 

+ Première cellule : #raw("N = 200;");
+ Deuxième cellule : #raw("x = linspace(0, 2 * pi, N);");
+ Troisième cellule : #raw("plot(x, sin(x))"); Ce qui compte, c'est l'ordre dans lequel les cellules s'exécutent, pas leur position sur la page. Si une cellule ultérieure signale une variable inconnue, exécutez d'abord les cellules antérieures, ou utilisez #strong[Tout exécuter];.

 #strong[Enregistrer votre travail];

 Utilisez #strong[Enregistrer]; dans la barre d'outils pour écrire le document sous forme de fichier #strong[.nlx];, le format Notebook natif. Le conteneur #strong[.nlx]; garde le texte, le code, la sortie enregistrée et les figures ensemble dans un seul fichier portable. Vous pouvez aussi enregistrer le document comme un script texte #strong[.m]; avec #strong[Enregistrer comme script];. Rouvrez un document enregistré avec #strong[Open];, avec #strong[edit(filename)]; ou avec #strong[notebook(filename, 'edit')];.

 #strong[Pour continuer];

 Les tutoriels suivants décrivent les types de blocs et les contrôles interactifs, et comment exécuter ou partager un document sans l'éditeur.


== Voir aussi

#nlink(<notebook:2_notebook_cells_and_controls>)[Cellules et contrôles d'un Notebook];, #nlink(<notebook:3_notebook_run_and_share>)[Exécuter et partager un Notebook];, #nlink(<notebook:notebook>)[notebook];, #nlink(<notebook:nlx>)[nlx];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
