#import "nelson_help.typ": *

= Exécuter et partager un Notebook <notebook:3_notebook_run_and_share>

Exécuter un Notebook sans l'éditeur, puis l'exporter ou l'importer.

== Description

Un document Notebook est plus qu'une vue d'éditeur. Le même fichier s'exécute depuis la ligne de commande, s'enregistre et voyage sous forme d'un seul fichier portable, et se convertit depuis et vers d'autres formats.

 
#align(center)[#image("notebook_workflow.svg")]


 #strong[Exécuter sans l'éditeur];

 #strong[notebook(filename)]; exécute un document sans l'ouvrir : il lit le code de chaque cellule de code, dans l'ordre, et l'évalue dans l'espace de travail de base, exactement comme le ferait l'éditeur. #strong[run(filename)]; sur un fichier #strong[.nlx]; fait de même. C'est ainsi qu'un document s'exécute depuis nelson-cli ou dans un traitement par lots, là où aucun éditeur n'est disponible. Les blocs de texte, les titres, les équations et les contrôles sont ignorés ; seules les cellules de code s'exécutent.

 #strong[Le conteneur .nlx];

 Le fichier natif #strong[.nlx]; est un conteneur zip. Il garde la source (#strong[document.json];), la sortie enregistrée (#strong[output.json];) et les figures (#strong[media\/];) à part, si bien que la source reste petite et lisible, tandis que les figures enregistrées voyagent avec elle. La page de référence #strong[nlx]; décrit chaque entrée.

 #strong[La forme texte .m];

 Un Notebook peut aussi être enregistré comme un script texte #strong[.m];, où chaque bloc est écrit sous un marqueur #raw("%% [kind]"); (par exemple #raw("%% [code]"); ou #raw("%% [text]");). Ce fichier s'ouvre dans n'importe quel éditeur de texte et s'exécute comme un script ordinaire. Un fichier #strong[.m]; sans un tel marqueur est traité comme une seule cellule de code et exécuté en entier.

 #strong[Export et import];

 Depuis le menu #strong[Exporter];, un document est écrit en #strong[HTML];, #strong[Markdown];, #strong[Word (.docx)]; ou en notebook #strong[Jupyter (.ipynb)];, et #strong[Enregistrer comme script]; écrit la forme texte #strong[.m];. #strong[Ouvrir]; relit un document #strong[.nlx];, un script #strong[.m]; ordinaire ou un notebook #strong[.ipynb]; dans l'éditeur.

 #strong[Vérifier qu'un document s'exécute de bout en bout];

 Un document est fiable quand il s'exécute depuis un espace de travail vide, dans l'ordre, sans erreur. Comme les cellules partagent l'espace de travail de base, une variable laissée par une session antérieure peut masquer une étape manquante. Pour vérifier, exécutez le document dans une session neuve, par exemple avec #raw("nelson-cli"); et #strong[notebook(filename)]; ; si une cellule échoue, l'exécution s'arrête sur l'erreur. Ce même contrôle convient à un travail d'intégration continue.

 L'exemple ci-dessous construit un document #strong[.nlx]; minimal et l'exécute sans l'éditeur.


== Exemple

Construire un document Notebook (.nlx) et l'exécuter sans éditeur.

``````matlab
% écrit la source d'un document à une cellule
d = [tempdir(), createGUID()];
mkdir(d);
fw = fopen([d, '/document.json'], 'wt');
fwrite(fw, '{"blocks":[{"type":"codecell","props":{"code":"answer = 6 * 7;"}}]}');
fclose(fw);
fw = fopen([d, '/manifest.json'], 'wt');
fwrite(fw, '{"format":"nelson-notebook","version":1}');
fclose(fw);
% l'empaquette comme un conteneur .nlx
nlx = [tempdir(), createGUID(), '.nlx'];
odir = pwd();
cd(d);
zip(nlx, '*.json');
cd(odir);
% l'exécute : la cellule de code est évaluée dans l'espace de travail de base
notebook(nlx);
answer
``````


== Voir aussi

#nlink(<notebook:1_notebook_first_steps>)[Votre premier Notebook Nelson];, #nlink(<notebook:2_notebook_cells_and_controls>)[Cellules et contrôles d'un Notebook];, #nlink(<notebook:notebook>)[notebook];, #nlink(<notebook:nlx>)[nlx];, #nlink(<core:run>)[run];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
