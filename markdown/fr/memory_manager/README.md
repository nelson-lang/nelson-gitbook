# Fonctions du gestionnaire de mémoire

Le module Memory Manager fournit des outils pour gérer les variables et la mémoire dans Nelson.

Il prend en charge la création, l'affectation, l'interrogation et la suppression de variables dans différentes portées, ainsi que la gestion des variables globales et persistantes.

Le module permet également l'inspection de la mémoire, le verrouillage des variables et l'énumération du contenu de l'espace de travail, facilitant une utilisation efficace et contrôlée de la mémoire dans les scripts et applications.

## Functions

- [acquirevar](acquirevar.md) - Récupère la valeur d'une variable depuis une portée de variables spécifiée.
- [assignin](assignin.md) - Assigne une valeur à une variable dans une portée de variables spécifiée.
- [clear](clear.md) - Remove variable from workspace.
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
