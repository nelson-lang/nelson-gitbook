#import "nelson_help.typ": *


= Prise en main de Nelson <main:getting_started>


Nelson est un langage de calcul numérique open source. Son type de données principal est le tableau : vecteurs, matrices et tableaux à N dimensions. Vous pouvez l'utiliser comme une calculatrice interactive, écrire des scripts et des fonctions, tracer des graphiques et construire des programmes plus importants.

Ce guide vous accompagne de l'installation à votre premier script. Chaque exemple peut être tapé à l'invite ou enregistré dans un fichier #raw(".m");. Comptez environ trente minutes de lecture.

---

== 1. Installation


Choisissez la méthode adaptée à votre système :

- #strong[Windows]; : téléchargez l'installateur depuis la #link("https://github.com/nelson-lang/nelson/releases")[page des versions];, ou lancez #raw("winget install NelsonNumericalSoftware.Nelson");. Des paquets Chocolatey et Scoop existent aussi.
- #strong[Linux]; : installez depuis le #link("https://snapcraft.io/nelson")[Snap Store]; ou depuis #link("https://flathub.org/apps/io.github.nelson_lang.Nelson")[Flathub];.
- #strong[Docker]; : #raw("docker pull nelsonsoftware/nelson");.
- #strong[Navigateur, sans installation]; : #link("https://www.npmjs.com/package/nelson-cloud")[Nelson Cloud]; exécute Nelson dans une page web.

La compilation depuis les sources est décrite dans le fichier #raw("BUILDING.md"); du dépôt.

== 2. Démarrer Nelson


La commande #raw("nelson"); accepte une option de mode :

``````bash
nelson              # bureau avec fenêtre de commandes, éditeur et explorateur de variables
nelson -cli         # mode texte dans le terminal
nelson -adv-cli     # mode texte avec prise en charge des graphiques
nelson-webview      # le bureau dans une fenêtre web native
nelson-webview --web   # le même bureau servi en HTTP pour un navigateur
``````


Deux options servent à l'automatisation :

``````bash
nelson -cli -e "disp(2 + 2)"      # exécuter une commande et afficher le résultat
nelson -cli -f mon_script.m       # exécuter un fichier, puis rester à l'invite
``````


Pour quitter Nelson, tapez #raw("quit"); ou #raw("exit");.

== 3. Premières commandes


=== Une calculatrice


Tapez une expression à l'invite et appuyez sur Entrée :

``````matlab
1 + 2 * 3
sin(pi / 4)
2^10
``````


Quand vous n'affectez pas le résultat, il est rangé dans la variable #raw("ans");.

=== Variables


Le signe #raw("="); crée une variable. Nelson choisit le type et la taille pour vous.

``````matlab
x = 2 * pi
name = 'Ada'
ok = true
``````


Une instruction terminée par #raw(";"); est exécutée sans afficher son résultat :

``````matlab
t = 5;
``````


=== Travailler à l'invite


- Les flèches haut et bas rappellent les commandes précédentes.
- #raw("clc"); efface l'écran.
- #raw("who"); et #raw("whos"); listent les variables de l'espace de travail. #raw("whos"); affiche aussi la taille et le type.
- #raw("clear"); supprime toutes les variables. #raw("clear x"); ne supprime que #raw("x");.
- #raw("format long"); affiche plus de décimales. #raw("format short"); rétablit l'affichage par défaut.

=== Obtenir de l'aide


``````matlab
help sin        % texte court à l'invite
doc sin         % page complète dans le navigateur d'aide
doc             % ouvrir le navigateur d'aide
which sin       % où une fonction est définie
``````


== 4. Vecteurs et matrices


=== Créer des tableaux


Les crochets construisent des tableaux. Un espace ou une virgule sépare les colonnes, un point-virgule sépare les lignes.

``````matlab
v = [1 4 7 10]          % vecteur ligne
w = [1; 4; 7; 10]       % vecteur colonne
A = [1 2; 3 4]          % matrice 2 x 2
v'                      % transposée
``````


L'opérateur deux-points et #raw("linspace"); construisent des suites régulières :

``````matlab
0:0.25:1                % de 0 à 1 par pas de 0.25
1:5                     % 1 2 3 4 5
linspace(0, 1, 5)       % 5 points entre 0 et 1
``````


Constructeurs courants :

``````matlab
zeros(2, 3)             % matrice 2 x 3 de zéros
ones(3)                 % matrice 3 x 3 de uns
eye(3)                  % matrice identité
rand(2, 2)              % nombres aléatoires uniformes
``````


=== Indexation


Les indices commencent à 1. Le mot-clé #raw("end"); désigne le dernier élément.

``````matlab
v(2)                    % deuxième élément
v(end)                  % dernier élément
v(1:3)                  % éléments 1 à 3
A(2, :)                 % deuxième ligne
A(:, 1)                 % première colonne
A(1, 2) = 10            % affecter un élément
``````


#raw("size(A)"); renvoie les dimensions et #raw("numel(A)"); le nombre d'éléments.

=== Arithmétique


Les opérateurs #raw("*");, #raw("/"); et #raw("^"); suivent les règles de l'algèbre matricielle. Placez un point devant pour travailler élément par élément.

``````matlab
A * A                   % produit matriciel
A .* A                  % produit élément par élément
A .^ 2                  % chaque élément au carré
A + 1                   % le scalaire est ajouté à chaque élément
``````


La plupart des fonctions acceptent des tableaux et agissent sur chaque élément :

``````matlab
sqrt([1 4 9])
exp(A)
sum(v)
mean(v)
max(v)
``````


=== Systèmes linéaires


L'opérateur antislash résout #raw("A * x = b"); :

``````matlab
A = [1 2 3; 3 3 4; 2 3 3];
b = [1; 1; 2];
x = A \ b
``````


#raw("A \\ b"); est plus rapide et plus précis que #raw("inv(A) * b");. D'autres fonctions utiles : #raw("det");, #raw("rank");, #raw("eig"); et #raw("inv");.

== 5. Texte, cellules et structures


Les guillemets doubles créent une chaîne (#raw("string");). Les guillemets simples créent un tableau de caractères. Les deux fonctionnent dans la plupart des fonctions.

``````matlab
s = "Hello";
t = s + " world"            % "Hello world"
parts = split("a,b,c", ",") % tableau de chaînes à 3 éléments
n = num2str(42)             % nombre vers texte
fprintf('%d au carré vaut %d\n', 3, 9)
``````


Un tableau de cellules contient des valeurs de types différents. Les accolades lisent le contenu d'une cellule.

``````matlab
c = {1, 'two', [3 4]};
c{2}                        % 'two'
``````


Une structure regroupe des champs nommés :

``````matlab
p.name = 'Ada';
p.age = 36;
p.name
fieldnames(p)
``````


Les tables, les dates, les tableaux catégoriels et les dictionnaires sont aussi disponibles. Voir #raw("doc table"); et #raw("doc datetime");.

== 6. Graphiques


#raw("plot"); trace une courbe à partir de deux vecteurs :

``````matlab
x = linspace(0, 2 * pi, 201);
y = sin(x);
plot(x, y)
xlabel('x')
ylabel('sin(x)')
title('Sinus')
grid on
``````


Plusieurs courbes en un appel, avec des styles de ligne :

``````matlab
plot(x, cos(x), '-', x, 2 * cos(x), '--', x, 0.5 * cos(x), ':')
legend('cos(x)', '2 cos(x)', '0.5 cos(x)')
``````


La chaîne de format combine une couleur (#raw("r");, #raw("g");, #raw("b");, #raw("k");), un style de ligne (#raw("-");, #raw("--");, #raw(":");) et un marqueur (#raw("o");, #raw("*");, #raw("+");). Par exemple #raw("'ro-'"); trace des cercles rouges reliés par une ligne.

D'autres commandes dont vous aurez vite besoin :

``````matlab
figure                      % ouvrir une nouvelle fenêtre graphique
hold on                     % conserver les courbes en place au prochain tracé
subplot(2, 1, 1)            % découper la figure en grille, sélectionner la case 1
surf(peaks)                 % surface 3D
saveas(gcf, 'figure.png')   % enregistrer la figure courante dans un fichier
``````


#raw("bar");, #raw("histogram");, #raw("scatter");, #raw("pie"); et #raw("polarplot"); couvrent les autres types de graphiques courants.

== 7. Scripts et fonctions


=== Scripts


Un script est un fichier texte d'extension #raw(".m"); qui contient des commandes. Créez #raw("example1.m"); :

``````matlab
% example1.m
A = [1 2 3; 3 3 4; 2 3 3];
b = [1; 1; 2];
x = A \ b
``````


Exécutez-le avec la commande #raw("run");, ou en tapant son nom quand le fichier est dans le dossier courant :

``````matlab
run('example1.m')
example1
``````


Depuis le terminal : #raw("nelson -cli -f example1.m");.

La commande #raw("edit"); ouvre un fichier dans l'éditeur intégré. Dans l'éditeur, #raw("%%"); commence une section qui peut être exécutée seule.

Les variables créées par un script vont dans l'espace de travail. Elles y restent après la fin du script.

=== Fonctions


Une fonction a ses propres variables. Elle reçoit ses entrées par les arguments et renvoie les sorties que vous nommez. Enregistrez ceci dans #raw("area_circle.m"); ; le nom du fichier doit correspondre au nom de la fonction.

``````matlab
function a = area_circle(r)
    arguments
        r (1,:) double {mustBeNonnegative}
    end
    a = pi * r.^2;
end
``````


Appelez-la avec #raw("area_circle(2)"); ou #raw("area_circle([1 2 3])");. Le bloc #raw("arguments"); est facultatif. Il vérifie la taille et le type des entrées et donne une erreur claire quand elles sont incorrectes.

Une fonction peut renvoyer plusieurs valeurs :

``````matlab
function [s, p] = sum_and_product(a, b)
    s = a + b;
    p = a * b;
end
``````


``````matlab
[s, p] = sum_and_product(3, 4)
``````


=== Fonctions anonymes


Pour une expression courte, une fonction anonyme évite de créer un fichier :

``````matlab
f = @(x) x.^2 + 1;
f(3)
``````


=== Entrées et sorties


``````matlab
n = input('Entrez un nombre : ');
disp(n)
fprintf('n = %g\n', n)
``````


== 8. Structures de contrôle


Chaque bloc se termine par #raw("end");.

``````matlab
if x > 0
    disp('positif')
elseif x < 0
    disp('négatif')
else
    disp('zéro')
end
``````


``````matlab
for i = 1:5
    fprintf('%d\n', i^2)
end
``````


``````matlab
k = 0;
while k < 10
    k = k + 3;
end
``````


``````matlab
switch day
    case 'Saturday'
        disp('week-end')
    case {'Sunday'}
        disp('week-end')
    otherwise
        disp('jour de semaine')
end
``````


Opérateurs de comparaison : #raw("<");, #raw("<=");, #raw(">");, #raw(">=");, #raw("==");, #raw("~=");.
Opérateurs logiques : #raw("&");, #raw("|");, #raw("~"); sur les tableaux, #raw("&&"); et #raw("||"); pour les conditions scalaires.

Préférez les opérations sur tableaux aux boucles quand c'est possible. #raw("sum(v.^2)"); est plus court et plus rapide qu'une boucle qui ajoute #raw("v(i)^2"); à chaque tour. #raw("tic"); et #raw("toc"); mesurent le temps d'un morceau de code.

== 9. Enregistrer son travail


``````matlab
save('session.nh5')             % enregistrer toutes les variables (format HDF5)
save('session.nh5', 'A', 'v')   % enregistrer certaines variables
load('session.nh5')             % les recharger
save('data.mat', 'A')           % fichier MAT pour échanger avec d'autres outils
``````


#raw("diary('log.txt')"); enregistre tout ce qui est tapé et affiché jusqu'à #raw("diary off");.

Pour lire et écrire des fichiers de données, utilisez #raw("readtable"); et #raw("writetable"); pour les fichiers CSV et Excel, #raw("readmatrix"); pour les fichiers numériques, et #raw("jsondecode"); et #raw("jsonencode"); pour le JSON.

== 10. Ajouter des modules


Le gestionnaire de modules de Nelson installe des extensions depuis un fichier de paquet, un dossier ou un dépôt Git :

``````matlab
nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic')
nmm('list')
nmm('help')
``````


== 11. Aide-mémoire


#table(
  columns: 2,
  table.header([Tâche], [Commandes]),
  [Aide], [#raw("help f");, #raw("doc f");, #raw("which f");],
  [Espace de travail], [#raw("who");, #raw("whos");, #raw("clear");, #raw("clc");],
  [Tableaux], [#raw("[ ]");, #raw(":");, #raw("linspace");, #raw("zeros");, #raw("ones");, #raw("eye");, #raw("rand");, #raw("size");, #raw("numel");],
  [Algèbre linéaire], [#raw("A \\ b");, #raw("inv");, #raw("det");, #raw("eig");, #raw("rank");],
  [Statistiques], [#raw("sum");, #raw("mean");, #raw("max");, #raw("min");, #raw("sort");],
  [Texte], [#raw("\"...\"");, #raw("'...'");, #raw("split");, #raw("num2str");, #raw("sprintf");, #raw("fprintf");],
  [Graphiques], [#raw("plot");, #raw("figure");, #raw("hold on");, #raw("subplot");, #raw("xlabel");, #raw("legend");, #raw("saveas");],
  [Fichiers], [#raw("save");, #raw("load");, #raw("readtable");, #raw("writetable");, #raw("diary");],
  [Exécuter du code], [#raw("run");, #raw("edit");, #raw("nelson -f");, #raw("nelson -e");],
  [Modules], [#raw("nmm('install', ...)");, #raw("nmm('list')");],
)


== Pour aller plus loin


- Parcourez la liste des fonctions dans le navigateur d'aide (#raw("doc");).
- Lisez l'aperçu des principales fonctionnalités de Nelson 2.0.
- Signalez un problème ou posez une question sur #link("https://github.com/nelson-lang/nelson/issues")[https:\/\/github.com/nelson-lang/nelson/issues];.
