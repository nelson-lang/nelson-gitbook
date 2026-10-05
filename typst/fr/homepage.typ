#import "nelson_help.typ": *

#align(center)[#image("banner_homepage.png")]


= Nelson 2.0.0 <main:homepage>


#strong[Nelson 2.0 est une version majeure.]; Elle apporte un moteur de langage plus rapide fondé sur du bytecode, la programmation orientée objet complète avec #raw("classdef");, NFlow (un éditeur visuel de schémas-blocs avec simulation native et génération de code C/Rust), un bureau web disponible en aperçu (avec une version WebAssembly qui s'exécute dans le navigateur), ainsi qu'un ensemble bien plus large de types de données, de graphiques, de statistiques et d'outils de développement.

La page d'accueil principale de Nelson se trouve à #link("https://nelson-lang.github.io/nelson-website/")[https:\/\/nelson-lang.github.io/nelson-website/];. La liste complète des changements est disponible dans le #nlink(<main:CHANGELOG>)[Journal des modifications v2.x.x];.

== Introduction


Nelson est un langage open source de calcul numérique destiné à l'ingénierie, au calcul scientifique et à l'enseignement. Il fournit plus de 3 000 fonctions, natives ou écrites en Nelson, pour le calcul sur tableaux, l'algèbre linéaire, le traitement du signal, l'analyse de données, la visualisation et les interfaces avec des langages externes.

Nelson reprend les conventions orientées tableaux utilisées par les environnements de calcul numérique établis et GNU Octave, tout en conservant son propre système de modules, ses formats de fichiers, ses interfaces moteur et son modèle d'exécution.

== Nouveautés de Nelson 2.0


=== Moteur de langage


- #strong[Machine virtuelle à bytecode]; : le code est compilé en bytecode au lieu d'être interprété ligne par ligne. Les boucles et les fonctions récursives s'exécutent nettement plus vite.
- #strong[Structure de projet]; : paquets, #raw("import");, fonctions imbriquées, fonctions locales dans les scripts et #raw("localfunctions");.
- #strong[Validation des arguments]; : blocs #raw("arguments"); avec sections #raw("Repeating");, arguments nom-valeur et spécifications de taille N-D, ainsi que #raw("validateattributes");, #raw("validatestring"); et #raw("inputParser");.
- #strong[Expressions plus courtes]; : un appel peut être suivi directement d'un accès à un champ ou d'une indexation, par exemple #raw("f().Field");, #raw("f()(1)");, #raw("f(){1}");.
- #strong[Syntaxe plus stricte]; : #raw("end"); est obligatoire pour fermer les blocs, et une incohérence entre nom de fichier et nom de fonction est signalée comme une erreur.
- #strong[Fonctions plus rapides]; : #raw("diff");, #raw("interp1");, #raw("interp2");, #raw("interp3");, #raw("filter"); et #raw("upfirdn"); sont désormais implémentées en C++, et les opérateurs binaires prennent en charge l'expansion implicite de tailles compatibles sur les tableaux N-D, creux et vides.

=== Programmation orientée objet avec #raw("classdef");


- #strong[Classes valeur et handle]; avec héritage simple et multiple, paquets, membres abstraits et scellés, membres statiques, constantes, énumérations et système d'événements/écouteurs.
- #strong[Validation des propriétés]; avec vérification de type et règles de validation, plus #raw("Dependent");, #raw("Observable");, #raw("Transient");, #raw("AbortSet"); et #raw("SetAccess = immutable");.
- #strong[Propriétés dynamiques]; (#raw("addprop");/#raw("rmprop");), références faibles et classes de base mixin (#raw("nelson.mixin.SetGet");, #raw("Heterogeneous");, #raw("Copyable");, #raw("CustomDisplay");).
- #strong[Indexation personnalisée et tableaux d'objets]; : construire des conteneurs ou des objets mandataires, indexer et concaténer des tableaux d'objets, et dériver des types numériques, logiques et caractères intégrés.
- #strong[Introspection et persistance]; : #raw("metaclass"); et #raw("?ClassName"); renvoient des métadonnées typées, et les objets personnalisés se sauvegardent et se rechargent sans perte.

=== NFlow : éditeur visuel de schémas-blocs (1.0.0-beta.1)


- #strong[Éditeur de schémas]; : glisser et connecter des blocs ; les fils sont routés automatiquement. Les schémas sont enregistrés dans des fichiers texte, compatibles avec tout système de gestion de versions.
- #strong[Bibliothèque de blocs]; : sources, mathématiques, dynamiques continues et discrètes, logique, tables de correspondance, bus, magasins de données et puits. Tous les blocs acceptent des signaux vectoriels, matriciels et typés.
- #strong[Modélisation physique acausale]; : composants électriques, de translation, de rotation, thermiques et multicorps 2-D plans connectés par des broches physiques, résolus comme un système algébro-différentiel.
- #strong[Sous-systèmes conditionnels et itérés]; : sous-systèmes activés, déclenchés, réinitialisables, action, if/switch-case, appel de fonction, for-each et itérateurs For/While.
- #strong[Simulation]; : solveurs à pas fixe et adaptatif, moteur CVODES/IDAS optionnel pour les systèmes raides, localisation des passages par zéro, résolution des boucles algébriques et périodes d'échantillonnage multiples ; #raw("sim()");, #raw("linmod"); et #raw("trim"); pilotent les modèles depuis des scripts.
- #strong[Génération de code et FMI]; : génération C ou Rust autonome depuis le même schéma, import FMI 2.0/3.0, export FMI 3.0 Co-Simulation et import/export SSP.
- #strong[API de modèle scriptée]; : #raw("new_system");, #raw("add_block");, #raw("add_line");, #raw("get_param");/#raw("set_param");, #raw("find_system"); et fonctions associées ; les modifications faites par script apparaissent immédiatement dans l'éditeur.

=== Bureau web et interface navigateur (aperçu)


- #strong[Tout le bureau dans un navigateur]; : fenêtre de commandes, explorateur d'espace de travail, historique, explorateur de fichiers, éditeur de variables, éditeur de code et figures dans des panneaux ancrables avec thèmes clair et sombre.
- #strong[Deux modes d'exécution]; : le lanceur #raw("nelson-webview"); ouvre par défaut une fenêtre webview native, ou sert le même bureau en HTTP avec #raw("--web");.
- #strong[Éditeur de code]; : un éditeur fondé sur Monaco, avec autocomplétion, aide au survol, exécution de sections #raw("%%");, débogage en direct et un panneau Problèmes avec corrections rapides.
- #strong[Figures et interfaces sans Qt]; : un moteur de rendu par liste d'affichage avec WebGL2 pour la 3-D, rotation/déplacement/zoom interactifs, #raw("uicontrol"); et composants ui rendus comme des widgets HTML, et boîtes de dialogue standard en modales.
- #strong[Autres panneaux]; : profileur, navigateur de documentation, terminal système, boîte d'import de données, galerie d'exemples et gestionnaire de paquets.
- #strong[Version WebAssembly]; : Nelson se compile aussi en WebAssembly. Le même bureau web s'exécute alors entièrement dans le navigateur, sans serveur ni installation, et le moteur peut être utilisé depuis Node.js. Cette version est monothread et exclut les extensions natives, la création de processus et la génération de code ; #raw("iswasm"); indique la plateforme.

=== Nouveaux types de données


- #strong[Dates et heures]; : #raw("datetime");, #raw("duration"); et #raw("calendarDuration"); avec arithmétique calendaire, fuseaux horaires et heure d'été, et valeurs manquantes #raw("NaT");.
- #strong[Tables, timetables et séries temporelles]; : jointures de type SQL, pivots, résumés par groupe, gestion des données manquantes, #raw("timetable"); avec #raw("retime"); et synchronisation, #raw("timeseries");, et calcul direct sur les données tabulaires avec propagation des unités.
- #strong[Tableaux catégoriels]; : un type #raw("categorical"); natif avec gestion complète des catégories, catégories ordinales, opérations ensemblistes et intégration aux tables.
- #strong[Fonctions de texte]; : #raw("compose");, #raw("extractBetween");, #raw("insertAfter");, #raw("pad");, #raw("split");, #raw("strjoin"); et fonctions associées, plus #raw("nelson.lang.makeValidName"); et #raw("makeUniqueStrings");.
- #strong[Matrices creuses]; : prise en charge #raw("single"); et simple complexe, solveurs itératifs (#raw("gmres");, #raw("pcg");, #raw("bicgstab");, #raw("lsqr"); et autres) avec préconditionneurs, #raw("ilu");/#raw("ichol");, et #raw("eigs");/#raw("svds"); pour les entrées creuses simple précision.

=== Méthodes numériques


- #strong[Solveurs ODE et DAE]; : une interface commune #raw("ode_solvers");, un moteur SUNDIALS optionnel, bascule automatique raide/non raide, équations différentielles à retard, analyse de sensibilité et jacobiennes creuses.
- #strong[Optimisation]; : programmation linéaire, linéaire mixte en nombres entiers, quadratique, non linéaire, moindres carrés et flux de travail par problème ; #raw("fsolve");, #raw("lsqnonlin"); et #raw("fmincon"); implémentent les familles d'algorithmes standard et les structures de sortie.
- #strong[Statistiques]; : statistiques descriptives, ajustement de plus de quinze familles de distributions, corrélation et régression (linéaire, linéaire généralisée, robuste, ridge, lasso), tests d'hypothèses, partitionnement (#raw("kmeans");, #raw("kmedoids");, hiérarchique, spectral, mélanges gaussiens) et modèles de classification avec #raw("predict");.
- #strong[Traitement d'images]; : fonctions 2-D et 3-D pour les conversions de couleurs, le filtrage, la détection de contours, la morphologie, les composantes connexes et mesures de régions, les transformations géométriques, le recalage, la segmentation et la détection de points d'intérêt. Les opérations lourdes sont parallélisées avec OpenMP.

=== Graphiques et interfaces utilisateur


- #strong[Nouveaux types de graphiques]; : camemberts et anneaux, graphiques à bulles, tracés polaires, boîtes à moustaches, visualisation de volumes (#raw("isosurface");), annotations de figures et éclairage de surfaces (#raw("light");, #raw("camlight");, #raw("material");, #raw("shading");, #raw("fsurf");).
- #strong[Utilitaires d'objets graphiques]; : #raw("gobjects");, #raw("gco");, #raw("gcbo");, #raw("gcbf");, #raw("allchild");, #raw("findall");, #raw("findfigs");, #raw("copyobj");, #raw("reset");, avec une couverture de propriétés bien plus large sur tous les objets graphiques.
- #strong[Composants d'application pour #raw("uifigure");]; : panneaux, groupes de boutons, onglets, grilles, cases à cocher, boutons radio et bascules, listes déroulantes, zones de texte, compteurs, curseurs, molettes, jauges, voyants, interrupteurs, sélecteurs de date, #raw("uitable");, #raw("uitree"); et #raw("uiaxes");.
- #strong[Rendu plus prévisible]; : géométrie des figures alignée, éclairage dans l'espace caméra, rendu groupé des lignes pour les scènes 3-D denses et tracés natifs pour #raw("patch");, #raw("fill");, #raw("fill3"); et #raw("area");.

=== Interopérabilité et IA


- #strong[Formats de fichiers]; : lecture/écriture Open XML #raw(".xlsx"); sur toutes les plateformes, module #raw("netcdf"); optionnel, prise en charge optionnelle de Parquet et API de documents XML (#raw("xmlread");, #raw("xmlwrite");, #raw("xslt");, #raw("readstruct");, #raw("writestruct");).
- #strong[Python]; : le paquet Python #raw("nelson"); pilote une session Nelson depuis Python, NumPy et pandas se convertissent dans les deux sens, et #raw("pyfunction"); permet au code Python de rappeler Nelson.
- #strong[Intégration]; : une nouvelle API C/C++ embarque un interpréteur Nelson complet dans d'autres applications.
- #strong[Assistants IA]; : un serveur MCP intégré permet aux assistants et agents IA d'interagir directement avec Nelson.

=== Qualité de code, tests et paquets


- #strong[Analyse statique]; : #raw("checkcode"); et #raw("codeIssues"); détectent complexité, variables et imports inutilisés, masquage, code inaccessible et problèmes de style, avec diagnostics en ligne dans l'éditeur et corrections en un clic.
- #strong[Outils en ligne de commande]; : #raw("nelson-lint"); pour l'intégration continue (SARIF, JSON, texte brut) et #raw("nelson-lsp");, un serveur de langage avec diagnostics en direct, formatage, aide au survol et corrections rapides.
- #strong[Tests]; : le lanceur #raw("nelson.unittest"); avec rapports HTML, JSON, JUnit XML et TAP13, le module #raw("mocking"); (#raw("nelson.mock");) et une API d'assertions #raw("asserts.*"); par méthodes.
- #strong[Gestionnaire de paquets]; : #raw("nmm"); ajoute la recherche dans les registres, la résolution récursive des dépendances avec contraintes de versions sémantiques, des fichiers de verrouillage avec sommes SHA-256, des registres signés Ed25519, des installations transactionnelles avec retour arrière et des flux de publication.
- #strong[Démarrage plus rapide]; : les bibliothèques dynamiques sont chargées à la première utilisation, grâce à un cache de descripteurs de passerelles.

== Fonctionnalités principales


=== Types de données


- #strong[Double, simple et complexe]; : scalaires, vecteurs, matrices 2-D, tableaux N-dimensionnels et matrices creuses.
- #strong[Logiques et entiers]; : types signés et non signés 8, 16, 32 et 64 bits.
- #strong[Tableaux de caractères et de chaînes]; avec prise en charge complète d'UNICODE.
- #strong[Structures, cellules, dictionnaires, tables, timetables, tableaux catégoriels, dates et durées];.
- #strong[Objets handle, classes #raw("classdef"); et fonctions anonymes]; ; tous les types peuvent être surchargés.

=== Performance


- #strong[OpenMP et SIMD]; pour le parallélisme et la vectorisation.
- #strong[Calcul parallèle]; sur processeurs multicœurs, #strong[MPI]; pour le calcul distribué et un module optionnel #strong[#raw("gpu_engine");]; pour le calcul GPU via WebGPU.
- #strong[FFT haute performance]; fondée sur FFTW et MKL.

=== Visualisation et interface


- #strong[Tracés 2-D et 3-D]; avec commandes de haut niveau et deux moteurs de rendu (Qt et web).
- #strong[Contrôles d'interface utilisateur]; et composants #raw("uifigure"); pour construire des applications personnalisées.
- #strong[Environnement de bureau]; avec historique des commandes, explorateur de fichiers, explorateur d'espace de travail, éditeur de variables, éditeur de code intégré et panneau terminal.

=== Modules scientifiques


- Outils de #strong[systèmes de contrôle]; et interface #strong[SLICOT]; optionnelle.
- #strong[Traitement du signal];, #strong[polynômes];, #strong[géométrie];, #strong[fonctions spéciales];, calcul #strong[symbolique];, #strong[traitement d'images];, #strong[statistiques];, #strong[optimisation]; et #strong[solveurs ODE];.

=== Formats de données et interfaces


- #strong[JSON, XML, HDF5]; (format d'espace de travail #raw(".nh5"); par défaut), #strong[MAT-file];, #strong[#raw(".xlsx");];, #strong[NetCDF]; et #strong[Parquet];.
- #strong[Interface de fonctions étrangères (FFI)]; : construction et chargement à la volée de code C/Fortran.
- Compatibilité #strong[API MEX C]; et #strong[API Nelson Engine];.
- Interfaces #strong[Julia]; et #strong[Python];, #strong[API RESTful];, #strong[communication inter-processus];, #strong[moteur QML]; et composants #strong[COM]; sous Windows.

=== Aide, tests et profilage


- #strong[Moteur d'aide]; générant la documentation en HTML, Markdown, PDF ou GitBook.
- #strong[Moteur de test]; avec export de rapports xUnit, JUnit, TAP13 et HTML.
- Outils de #strong[profilage]; et de #strong[couverture de code];.

== Ressources


- #strong[Site web]; : #link("https://nelson-lang.github.io/nelson-website/")[https:\/\/nelson-lang.github.io/nelson-website/];
- #strong[Code source et tickets]; : #link("https://github.com/nelson-lang/nelson")[https:\/\/github.com/nelson-lang/nelson];
- #strong[Nelson Cloud]; : utiliser Nelson depuis un navigateur web avec #link("https://www.npmjs.com/package/nelson-cloud")[Nelson Cloud];.
- #strong[Nelson Modules Manager (nmm)]; : installer et gérer les extensions de Nelson.
- #strong[Squelettes de module]; pour étendre Nelson :
  - #link("https://github.com/nelson-lang/module_skeleton")[Template avec Macros et Builtins];.
  - #link("https://github.com/nelson-lang/module_skeleton_basic")[Template de Macros de Base];.

---

== Journal des modifications


- #nlink(<main:CHANGELOG>)[Journal des modifications v2.x.x];
- #nlink(<main:CHANGELOG-1.x.x>)[Journal des modifications v1.x.x];
- #nlink(<main:CHANGELOG-0.7.x>)[Journal des modifications v0.7.x];
- #nlink(<main:CHANGELOG-0.6.x>)[Journal des modifications v0.6.x];
- #nlink(<main:CHANGELOG-0.5.x>)[Journal des modifications v0.5.x];
- #nlink(<main:CHANGELOG-0.4.x>)[Journal des modifications v0.4.x];
- #nlink(<main:CHANGELOG-0.3.x>)[Journal des modifications v0.3.x];
- #nlink(<main:CHANGELOG-0.2.x>)[Journal des modifications v0.2.x];
- #nlink(<main:CHANGELOG-0.1.x>)[Journal des modifications v0.1.x];

---

== Licence


- #nlink(<main:license>)[Licence de Nelson];
