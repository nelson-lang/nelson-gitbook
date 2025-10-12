# Moteur

Le module Engine gère l'environnement d'exécution de Nelson lui-même.

Il fournit des mécanismes pour gérer le démarrage et l'arrêt du programme, l'intégration en ligne de commande et les modes d'exécution.

Cela inclut le support des scripts d'initialisation et de terminaison définis par l'utilisateur, les exigences système spécifiques à la plateforme et les directives d'interpréteur pour l'exécution de scripts multiplateforme.

Il sert d'interface principale entre Nelson et le système d'exploitation sous-jacent, garantissant une configuration flexible et un contrôle fluide de la manière dont le logiciel est lancé et utilisé.

## Functions

- [argv](argv.md) - Arguments de la ligne de commande de Nelson.
- [executable](executable.md) - Exécutables pour démarrer le logiciel Nelson.
- [finish](finish.md) - Script de terminaison défini par l'utilisateur pour Nelson.
- [getnelsonmode](getnelsonmode.md) - Retourne le mode courant de Nelson.
- [isquietmode](isquietmode.md) - Renvoie vrai si Nelson a été démarré avec l'option --quiet.
- [Exigences système](nelson_system_requirement.md) - Exigences système par plateforme.
- [#! shebang](shebang.md) - Sur Unix/Linux, analyse la première ligne du script comme directive d'interpréteur.
- [startup](startup.md) - Script de démarrage défini par l'utilisateur pour Nelson.
