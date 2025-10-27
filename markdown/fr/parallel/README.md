# Parallel

Le module parallel fournit des outils pour exécuter des calculs de manière asynchrone en
arrière-plan, gérer la planification des tâches et récupérer les résultats.

Il permet aux programmes Nelson d'exécuter des fonctions de manière concurrente, améliorant
l'efficacité et la réactivité en déléguant le travail à des workers en arrière-plan.

## Functions

- [afterAll](afterAll.md) - Exécuter une fonction après que toutes les fonctions en arrière-plan soient terminées.
- [afterEach](afterEach.md) - Exécuter une fonction après chaque fin d'exécution en arrière-plan.
- [backgroundPool](backgroundPool.md) - Environnement pour exécuter du code Nelson en arrière-plan.
- [cancel](cancel.md) - Arrêter une fonction s'exécutant en arrière-plan.
- [cancelAll](cancelAll.md) - Arrêter toutes les fonctions s'exécutant en arrière-plan.
- [fetchNext](fetchNext.md) - Récupérer les prochaines sorties non lues d'un tableau FevalFuture.
- [fetchOutputs](fetchOutputs.md) - Récupérer les résultats d'une fonction s'exécutant dans le pool d'arrière-plan.
- [parfeval](parfeval.md) - Exécuter une fonction en arrière-plan.
- [wait](wait.md) - Attendre la complétion des futures.
