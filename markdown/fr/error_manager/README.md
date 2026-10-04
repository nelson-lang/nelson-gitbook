# Gestion des erreurs

Le module Error Manager fournit les mecanismes de gestion des erreurs et des avertissements dans Nelson.

Il definit comment les exceptions sont creees, levees et relancees, ainsi que la maniere de recuperer les informations diagnostiques apres une erreur ou un avertissement.

Ce module permet de controler l'execution apres un echec, de recuperer des diagnostics et d'afficher des avertissements sans arreter le programme.

Il fournit les primitives communes d'erreurs et d'avertissements utilisees par le code Nelson.

## Functions

- [MException.last](MException.last.md) - Renvoie ou efface la derniere MException non interceptee.
- [MException](MException.md) - Informations sur l'exception MException.
- [addCause](addCause.md) - Ajoute une cause a MException.
- [addCorrection](addCorrection.md) - Ajoute une correction a MException.
- [error](error.md) - Lever une erreur.
- [getLastReport](getLastReport.md) - Renvoie le dernier message d'erreur formaté enregistré.
- [getReport](getReport.md) - Obtient le rapport MException.
- [lasterr](lasterr.md) - Retourne ou definit le dernier message d'erreur.
- [lasterror](lasterror.md) - Renvoie le dernier message d'erreur enregistré.
- [lastwarn](lastwarn.md) - Renvoie le dernier message d'avertissement enregistré.
- [nelson.lang.correction.AppendArgumentsCorrection](nelson.lang.correction.AppendArgumentsCorrection.md) - Corrige une erreur en ajoutant des arguments manquants.
- [nelson.lang.correction.ConvertToFunctionNotationCorrection](nelson.lang.correction.ConvertToFunctionNotationCorrection.md) - Corrige une erreur en convertissant vers la notation fonction.
- [nelson.lang.correction.ReplaceIdentifierCorrection](nelson.lang.correction.ReplaceIdentifierCorrection.md) - Corrige une erreur en remplacant un identifiant dans un appel de fonction.
- [rethrow](rethrow.md) - relancer une erreur.
- [throw](throw.md) - lancer une erreur.
- [throwAsCaller](throwAsCaller.md) - Lancer une exception comme si elle se produisait dans la fonction appelante.
- [warning](warning.md) - Afficher un message d'avertissement.
