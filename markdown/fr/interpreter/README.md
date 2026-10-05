# Fonctions de l'interpréteur


    
Le module Fonctions de l'interpréteur fournit les constructions de langage de base et les mécanismes de contrôle qui définissent le flux d'exécution dans Nelson.

    
Il inclut des éléments essentiels tels que les boucles, les branchements conditionnels, la gestion des erreurs et les déclarations de fonctions.

    
Le module propose également des outils pour analyser la syntaxe et la qualite du code, travailler avec les mots-clés et gérer les limites de récursion.

    
Ensemble, ces fonctionnalités établissent la syntaxe et la sémantique fondamentales du langage Nelson, permettant aux utilisateurs d'
      écrire des programmes structurés, dynamiques et fiables.

  

## Functions

- [abort](abort.md) - arrêter l'évaluation.
- [return](abort.md) - arrêter l'évaluation.
- [arguments](arguments.md) - bloc de validation des arguments de fonction.
- [break](break.md) - sortir d'une boucle.
- [checkcode](checkcode.md) - Analyse les fichiers source Nelson et signale les problemes de code.
- [classdef](classdef.md) - Définition de classe
- [classdef tutorial](classdef_tutorial.md) - Tutoriel classdef pas a pas.
- [codeAnalyzerRules](codeAnalyzerRules.md) - Identifiants des diagnostics de l'analyseur de code.
- [codeIssues](codeIssues.md) - Collecte les diagnostics de l'analyseur de code Nelson sous forme de tables.
- [commentaires](comments.md) - Ajouter des commentaires au code Nelson.
- [continue](continue.md) - continuer l'exécution dans une boucle.
- [ctfroot](ctfroot.md) - Racine de l'archive applicative extraite.
- [for](for.md) - boucle for.
- [parfor](for.md) - boucle for.
- [function](function.md) - déclaration de fonction.
- [if](if.md) - instruction conditionnelle.
- [tilde](ignore_outputs_function.md) - Ignore les sorties d'une fonction.
- [isdeployed](isdeployed.md) - Indique si le code s'execute dans une application deployee.
- [iskeyword](iskeyword.md) - Renvoie tous les mots-clés de Nelson.
- [keyboard](keyboard.md) - Arrête l'exécution du script et entre en mode débogage.
- [max_recursion_depth](max_recursion_depth.md) - Limite interne du nombre de fois qu'une fonction peut être appelée récursivement.
- [nom=valeur](name_value_syntax.md) - Nom=valeur syntaxe pour les arguments nom=valeur.
- [nelson-format](nelson_format.md) - Formateur de source Nelson en ligne de commande.
- [nelson-lint](nelson_lint.md) - Analyseur de code Nelson en ligne de commande.
- [nelson-lsp](nelson_lsp.md) - Point d'entree Language Server Protocol pour les diagnostics de code Nelson.
- [numeric types](numeric_types.md) - À propos des types entiers et à virgule flottante.
- [onCleanup](onCleanup.md) - Tâches de nettoyage à la fin de l'exécution d'une fonction
- [parsefile](parsefile.md) - Analyser un fichier Nelson.
- [parsestring](parsestring.md) - Analyser une chaîne.
- [smartindent](smartindent.md) - Formatage et indentation d'un fichier Nelson
- [switch](switch.md) - instruction switch.
- [indexation de résultat temporaire](temporary_result_indexing.md) - indexer directement le résultat d'un appel de fonction ou d'une expression.
- [indexation de résultat de fonction](temporary_result_indexing.md) - indexer directement le résultat d'un appel de fonction ou d'une expression.
- [try](try.md) - instruction try/catch.
- [catch](try.md) - instruction try/catch.
- [while](while.md) - boucle while.

