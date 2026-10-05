#import "nelson_help.typ": *

= Fonctions de l'interpréteur

Le module Fonctions de l'interpréteur fournit les constructions de langage de base et les mécanismes de contrôle qui définissent le flux d'exécution dans Nelson.

 Il inclut des éléments essentiels tels que les boucles, les branchements conditionnels, la gestion des erreurs et les déclarations de fonctions.

 Le module propose également des outils pour analyser la syntaxe et la qualite du code, travailler avec les mots-clés et gérer les limites de récursion.

 Ensemble, ces fonctionnalités établissent la syntaxe et la sémantique fondamentales du langage Nelson, permettant aux utilisateurs d' écrire des programmes structurés, dynamiques et fiables.

== Functions

- #nlink(<interpreter:abort>)[abort]: arrêter l'évaluation.
- #nlink(<interpreter:abort>)[return]: arrêter l'évaluation.
- #nlink(<interpreter:arguments>)[arguments]: bloc de validation des arguments de fonction.
- #nlink(<interpreter:break>)[break]: sortir d'une boucle.
- #nlink(<interpreter:checkcode>)[checkcode]: Analyse les fichiers source Nelson et signale les problemes de code.
- #nlink(<interpreter:classdef>)[classdef]: Définition de classe
- #nlink(<interpreter:classdef_tutorial>)[classdef tutorial]: Tutoriel classdef pas a pas.
- #nlink(<interpreter:codeAnalyzerRules>)[codeAnalyzerRules]: Identifiants des diagnostics de l'analyseur de code.
- #nlink(<interpreter:codeIssues>)[codeIssues]: Collecte les diagnostics de l'analyseur de code Nelson sous forme de tables.
- #nlink(<interpreter:comments>)[commentaires]: Ajouter des commentaires au code Nelson.
- #nlink(<interpreter:continue>)[continue]: continuer l'exécution dans une boucle.
- #nlink(<interpreter:ctfroot>)[ctfroot]: Racine de l'archive applicative extraite.
- #nlink(<interpreter:for>)[for]: boucle for.
- #nlink(<interpreter:for>)[parfor]: boucle for.
- #nlink(<interpreter:function>)[function]: déclaration de fonction.
- #nlink(<interpreter:if>)[if]: instruction conditionnelle.
- #nlink(<interpreter:ignore_outputs_function>)[tilde]: Ignore les sorties d'une fonction.
- #nlink(<interpreter:isdeployed>)[isdeployed]: Indique si le code s'execute dans une application deployee.
- #nlink(<interpreter:iskeyword>)[iskeyword]: Renvoie tous les mots-clés de Nelson.
- #nlink(<interpreter:keyboard>)[keyboard]: Arrête l'exécution du script et entre en mode débogage.
- #nlink(<interpreter:max_recursion_depth>)[max\_recursion\_depth]: Limite interne du nombre de fois qu'une fonction peut être appelée récursivement.
- #nlink(<interpreter:name_value_syntax>)[nom\=valeur]: Nom\=valeur syntaxe pour les arguments nom\=valeur.
- #nlink(<interpreter:nelson_format>)[nelson-format]: Formateur de source Nelson en ligne de commande.
- #nlink(<interpreter:nelson_lint>)[nelson-lint]: Analyseur de code Nelson en ligne de commande.
- #nlink(<interpreter:nelson_lsp>)[nelson-lsp]: Point d'entree Language Server Protocol pour les diagnostics de code Nelson.
- #nlink(<interpreter:numeric_types>)[numeric types]: À propos des types entiers et à virgule flottante.
- #nlink(<interpreter:onCleanup>)[onCleanup]: Tâches de nettoyage à la fin de l'exécution d'une fonction
- #nlink(<interpreter:parsefile>)[parsefile]: Analyser un fichier Nelson.
- #nlink(<interpreter:parsestring>)[parsestring]: Analyser une chaîne.
- #nlink(<interpreter:smartindent>)[smartindent]: Formatage et indentation d'un fichier Nelson
- #nlink(<interpreter:switch>)[switch]: instruction switch.
- #nlink(<interpreter:temporary_result_indexing>)[indexation de résultat temporaire]: indexer directement le résultat d'un appel de fonction ou d'une expression.
- #nlink(<interpreter:temporary_result_indexing>)[indexation de résultat de fonction]: indexer directement le résultat d'un appel de fonction ou d'une expression.
- #nlink(<interpreter:try>)[try]: instruction try\/catch.
- #nlink(<interpreter:try>)[catch]: instruction try\/catch.
- #nlink(<interpreter:while>)[while]: boucle while.


#nested[
#pagebreak(weak: true)
#include "abort.typ"
#pagebreak(weak: true)
#include "arguments.typ"
#pagebreak(weak: true)
#include "break.typ"
#pagebreak(weak: true)
#include "checkcode.typ"
#pagebreak(weak: true)
#include "classdef.typ"
#pagebreak(weak: true)
#include "classdef_tutorial.typ"
#pagebreak(weak: true)
#include "codeAnalyzerRules.typ"
#pagebreak(weak: true)
#include "codeIssues.typ"
#pagebreak(weak: true)
#include "comments.typ"
#pagebreak(weak: true)
#include "continue.typ"
#pagebreak(weak: true)
#include "ctfroot.typ"
#pagebreak(weak: true)
#include "for.typ"
#pagebreak(weak: true)
#include "function.typ"
#pagebreak(weak: true)
#include "if.typ"
#pagebreak(weak: true)
#include "ignore_outputs_function.typ"
#pagebreak(weak: true)
#include "isdeployed.typ"
#pagebreak(weak: true)
#include "iskeyword.typ"
#pagebreak(weak: true)
#include "keyboard.typ"
#pagebreak(weak: true)
#include "max_recursion_depth.typ"
#pagebreak(weak: true)
#include "name_value_syntax.typ"
#pagebreak(weak: true)
#include "nelson_format.typ"
#pagebreak(weak: true)
#include "nelson_lint.typ"
#pagebreak(weak: true)
#include "nelson_lsp.typ"
#pagebreak(weak: true)
#include "numeric_types.typ"
#pagebreak(weak: true)
#include "onCleanup.typ"
#pagebreak(weak: true)
#include "parsefile.typ"
#pagebreak(weak: true)
#include "parsestring.typ"
#pagebreak(weak: true)
#include "smartindent.typ"
#pagebreak(weak: true)
#include "switch.typ"
#pagebreak(weak: true)
#include "temporary_result_indexing.typ"
#pagebreak(weak: true)
#include "try.typ"
#pagebreak(weak: true)
#include "while.typ"
]
