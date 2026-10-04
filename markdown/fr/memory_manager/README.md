# Fonctions du gestionnaire de memoire

Le module Memory Manager fournit des outils pour gerer les variables et la memoire dans Nelson.

Il prend en charge la creation, l'affectation, l'interrogation et la suppression de variables dans differentes portees, ainsi que la gestion des variables globales et persistantes.

Le module permet aussi d'inspecter la memoire, de verrouiller des variables et d'enumerer le contenu de l'espace de travail.

## Functions

- [acquirevar](acquirevar.md) - Récupère la valeur d'une variable depuis une portée de variables spécifiée.
- [assignin](assignin.md) - Assigne une valeur à une variable dans une portée de variables spécifiée.
- [clear](clear.md) - Efface une variable de l'espace de travail.
- [clearvars](clearvars.md) - Supprime des variables de l'espace de travail courant.
- [global](global.md) - Définit une variable globale.
- [isglobal](isglobal.md) - Vérifie si une variable est globale.
- [isvar](isvar.md) - Vérifie l'existence d'une variable.
- [memory](memory.md) - Obtenir des informations sur la mémoire.
- [persistent](persistent.md) - Variable persistante.
- [varislock](varislock.md) - Vérifie si une variable est verrouillée.
- [varlock](varlock.md) - Verrouille une variable.
- [varunlock](varunlock.md) - Déroque une variable.
- [who](who.md) - Liste les variables en mémoire ou dans un fichier .nh5 ou .mat.
- [whos](whos.md) - Liste les variables en mémoire ou dans un fichier .nh5 ou .mat avec tailles et types.
