#import "nelson_help.typ": *

= Fonctions MEX

Le module MEX permet au code C\/C++ de s'interfacer avec Nelson et d'accéder au moteur, aux variables et aux fonctions de Nelson.

== Functions

- #nlink(<mex:dlgeneratemexgateway>)[dlgeneratemexgateway]: Génère une passerelle MEX en C (fonction interne).
- #nlink(<mex:engClose>)[engClose]: Ferme une session du moteur Nelson
- #nlink(<mex:engEvalString>)[engEvalString]: Évalue une expression fournie sous forme de chaîne dans la portée de base
- #nlink(<mex:engGetVariable>)[engGetVariable]: Copie une variable depuis l'espace de travail du moteur Nelson
- #nlink(<mex:engGetVisible>)[engGetVisible]: Détermine la visibilité de la session du moteur Nelson
- #nlink(<mex:engOpen>)[engOpen]: Démarre un processus Nelson
- #nlink(<mex:engOpenSingleUse>)[engOpenSingleUse]: Démarre une session du moteur Nelson pour un usage unique et non partagé.
- #nlink(<mex:engOutputBuffer>)[engOutputBuffer]: Spécifie le tampon de caractères pour la sortie de Nelson
- #nlink(<mex:engPutVariable>)[engPutVariable]: Place une variable dans l'espace de travail du moteur Nelson
- #nlink(<mex:engSetVisible>)[engSetVisible]: Afficher ou masquer la session du moteur Nelson
- #nlink(<mex:mex>)[mex]: Construire une fonction MEX
- #nlink(<mex:mexAtExit>)[mexAtExit]: Enregistre une fonction à appeler lorsque le fichier MEX est libéré ou lorsque Nelson se termine
- #nlink(<mex:mexCallMATLAB>)[mexCallMATLAB]: Appelle une fonction NELSON
- #nlink(<mex:mexCallMATLABWithTrap>)[mexCallMATLABWithTrap]: Appelle une fonction NELSON et capture l'erreur.
- #nlink(<mex:mexext>)[mexext]: Extension de nom de fichier binaire MEX


#nested[
#pagebreak(weak: true)
#include "dlgeneratemexgateway.typ"
#pagebreak(weak: true)
#include "engClose.typ"
#pagebreak(weak: true)
#include "engEvalString.typ"
#pagebreak(weak: true)
#include "engGetVariable.typ"
#pagebreak(weak: true)
#include "engGetVisible.typ"
#pagebreak(weak: true)
#include "engOpen.typ"
#pagebreak(weak: true)
#include "engOpenSingleUse.typ"
#pagebreak(weak: true)
#include "engOutputBuffer.typ"
#pagebreak(weak: true)
#include "engPutVariable.typ"
#pagebreak(weak: true)
#include "engSetVisible.typ"
#pagebreak(weak: true)
#include "mex.typ"
#pagebreak(weak: true)
#include "mexAtExit.typ"
#pagebreak(weak: true)
#include "mexCallMATLAB.typ"
#pagebreak(weak: true)
#include "mexCallMATLABWithTrap.typ"
#pagebreak(weak: true)
#include "mexext.typ"
]
