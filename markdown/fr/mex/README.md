# Fonctions MEX

Le module MEX (MATLAB Executable) permet au code C/C++ d'interfacer avec Nelson, étendant ses fonctionnalités et donnant accès au moteur de Nelson, aux variables et aux fonctions.

## Functions

- [dlgeneratemexgateway](dlgeneratemexgateway.md) - Génère une passerelle MEX en C (fonction interne).
- [engClose](engClose.md) - Ferme une session du moteur Nelson
- [engEvalString](engEvalString.md) - Évalue une expression fournie sous forme de chaîne dans la portée de base
- [engGetVariable](engGetVariable.md) - Copie une variable depuis l'espace de travail du moteur Nelson
- [engGetVisible](engGetVisible.md) - Détermine la visibilité de la session du moteur Nelson
- [engOpen](engOpen.md) - Démarre un processus Nelson
- [engOpenSingleUse](engOpenSingleUse.md) - Démarre une session du moteur Nelson pour un usage unique et non partagé.
- [engOutputBuffer](engOutputBuffer.md) - Spécifie le tampon de caractères pour la sortie de Nelson
- [engPutVariable](engPutVariable.md) - Place une variable dans l'espace de travail du moteur Nelson
- [engSetVisible](engSetVisible.md) - Afficher ou masquer la session du moteur Nelson
- [mex](mex.md) - Construire une fonction MEX
- [mexAtExit](mexAtExit.md) - Enregistre une fonction à appeler lorsque le fichier MEX est libéré ou lorsque Nelson se termine
- [mexCallMATLAB](mexCallMATLAB.md) - Appelle une fonction NELSON
- [mexCallMATLABWithTrap](mexCallMATLABWithTrap.md) - Appelle une fonction NELSON et capture l'erreur.
- [mexext](mexext.md) - Extension de nom de fichier binaire MEX
