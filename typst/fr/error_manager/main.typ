#import "nelson_help.typ": *

= Gestion des erreurs

Le module Error Manager fournit les mecanismes de gestion des erreurs et des avertissements dans Nelson.

 Il definit comment les exceptions sont creees, levees et relancees, ainsi que la maniere de recuperer les informations diagnostiques apres une erreur ou un avertissement.

 Ce module permet de controler l'execution apres un echec, de recuperer des diagnostics et d'afficher des avertissements sans arreter le programme.

 Il fournit les primitives communes d'erreurs et d'avertissements utilisees par le code Nelson.

== Functions

- #nlink(<error_manager:MException.last>)[MException.last]: Renvoie ou efface la derniere MException non interceptee.
- #nlink(<error_manager:MException>)[MException]: Informations sur l'exception MException.
- #nlink(<error_manager:addCause>)[addCause]: Ajoute une cause a MException.
- #nlink(<error_manager:addCorrection>)[addCorrection]: Ajoute une correction a MException.
- #nlink(<error_manager:error>)[error]: Lever une erreur.
- #nlink(<error_manager:getLastReport>)[getLastReport]: Renvoie le dernier message d'erreur formaté enregistré.
- #nlink(<error_manager:getReport>)[getReport]: Obtient le rapport MException.
- #nlink(<error_manager:lasterr>)[lasterr]: Retourne ou definit le dernier message d'erreur.
- #nlink(<error_manager:lasterror>)[lasterror]: Renvoie le dernier message d'erreur enregistré.
- #nlink(<error_manager:lastwarn>)[lastwarn]: Renvoie le dernier message d'avertissement enregistré.
- #nlink(<error_manager:nelson.lang.correction.AppendArgumentsCorrection>)[nelson.lang.correction.AppendArgumentsCorrection]: Corrige une erreur en ajoutant des arguments manquants.
- #nlink(<error_manager:nelson.lang.correction.ConvertToFunctionNotationCorrection>)[nelson.lang.correction.ConvertToFunctionNotationCorrection]: Corrige une erreur en convertissant vers la notation fonction.
- #nlink(<error_manager:nelson.lang.correction.ReplaceIdentifierCorrection>)[nelson.lang.correction.ReplaceIdentifierCorrection]: Corrige une erreur en remplacant un identifiant dans un appel de fonction.
- #nlink(<error_manager:rethrow>)[rethrow]: relancer une erreur.
- #nlink(<error_manager:throw>)[throw]: lancer une erreur.
- #nlink(<error_manager:throwAsCaller>)[throwAsCaller]: Lancer une exception comme si elle se produisait dans la fonction appelante.
- #nlink(<error_manager:warning>)[warning]: Afficher un message d'avertissement.


#nested[
#pagebreak(weak: true)
#include "MException.last.typ"
#pagebreak(weak: true)
#include "MException.typ"
#pagebreak(weak: true)
#include "addCause.typ"
#pagebreak(weak: true)
#include "addCorrection.typ"
#pagebreak(weak: true)
#include "error.typ"
#pagebreak(weak: true)
#include "getLastReport.typ"
#pagebreak(weak: true)
#include "getReport.typ"
#pagebreak(weak: true)
#include "lasterr.typ"
#pagebreak(weak: true)
#include "lasterror.typ"
#pagebreak(weak: true)
#include "lastwarn.typ"
#pagebreak(weak: true)
#include "nelson.lang.correction.AppendArgumentsCorrection.typ"
#pagebreak(weak: true)
#include "nelson.lang.correction.ConvertToFunctionNotationCorrection.typ"
#pagebreak(weak: true)
#include "nelson.lang.correction.ReplaceIdentifierCorrection.typ"
#pagebreak(weak: true)
#include "rethrow.typ"
#pagebreak(weak: true)
#include "throw.typ"
#pagebreak(weak: true)
#include "throwAsCaller.typ"
#pagebreak(weak: true)
#include "warning.typ"
]
