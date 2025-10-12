# Gestion des erreurs

Le module Error Manager fournit les mécanismes de gestion des erreurs et des avertissements dans Nelson.

Il définit comment les exceptions sont créées, levées et relancées, ainsi que la manière de récupérer les informations diagnostiques après qu'une erreur ou un avertissement se soit produit.

Ce module permet aux utilisateurs de gérer le flux d'exécution en présence d'échecs, de capturer des rapports d'erreur significatifs et d'afficher des avertissements sans interrompre l'exécution du programme.

Il constitue la base d'une gestion robuste des erreurs et du débogage dans les applications Nelson.

## Functions

- [MException](MException.md) - Informations sur l'exception MException.
- [error](error.md) - Lever une erreur.
- [getLastReport](getLastReport.md) - Renvoie le dernier message d'erreur formaté enregistré.
- [lasterror](lasterror.md) - Renvoie le dernier message d'erreur enregistré.
- [lastwarn](lastwarn.md) - Renvoie le dernier message d'avertissement enregistré.
- [rethrow](rethrow.md) - relancer une erreur.
- [throw](throw.md) - lancer une erreur.
- [throwAsCaller](throwAsCaller.md) - Lancer une exception comme si elle se produisait dans la fonction appelante.
- [warning](warning.md) - Afficher un message d'avertissement.
