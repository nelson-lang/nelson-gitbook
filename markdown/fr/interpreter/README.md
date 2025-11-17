# Fonctions de l'interpréteur

Le module Fonctions de l'interpréteur fournit les constructions de langage de base et les mécanismes de contrôle qui définissent le flux d'exécution dans Nelson.

Il inclut des éléments essentiels tels que les boucles, les branchements conditionnels, la gestion des erreurs et les déclarations de fonctions.

Le module propose également des outils pour analyser le code, travailler avec les mots-clés et gérer les limites de récursion.

Ensemble, ces fonctionnalités établissent la syntaxe et la sémantique fondamentales du langage Nelson, permettant aux utilisateurs d'écrire des programmes structurés, dynamiques et fiables.

## Functions

- [abort](abort.md) - arrêter l'évaluation.
- [return](abort.md) - arrêter l'évaluation.
- [break](break.md) - sortir d'une boucle.
- [continue](continue.md) - continuer l'exécution dans une boucle.
- [for](for.md) - boucle for.
- [parfor](for.md) - boucle for.
- [function](function.md) - déclaration de fonction.
- [endfunction](function.md) - déclaration de fonction.
- [if](if.md) - instruction conditionnelle.
- [tilde](ignore_outputs_function.md) - Ignore les sorties d'une fonction.
- [iskeyword](iskeyword.md) - Renvoie tous les mots-clés de Nelson.
- [keyboard](keyboard.md) - Arrête l'exécution du script et entre en mode débogage.
- [max_recursion_depth](max_recursion_depth.md) - Limite interne du nombre de fois qu'une fonction peut être appelée récursivement.
- [nom=valeur](name_value_syntax.md) - Nom=valeur syntaxe pour les arguments nom=valeur.
- [numeric types](numeric_types.md) - À propos des types entiers et à virgule flottante.
- [parsefile](parsefile.md) - Analyser un fichier Nelson.
- [parsestring](parsestring.md) - Analyser une chaîne.
- [switch](switch.md) - instruction switch.
- [try](try.md) - instruction try/catch.
- [catch](try.md) - instruction try/catch.
- [while](while.md) - boucle while.
