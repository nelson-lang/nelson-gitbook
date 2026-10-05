#import "nelson_help.typ": *

= nargchk <core:nargchk>

Valide le nombre d'arguments d'entrée.

== Syntaxe

- #raw("msg = nargchk(minArgs, maxArgs, n)");
- #raw("msg = nargchk(minArgs, maxArgs, n, 'string')");
- #raw("msgstruct = nargchk(minArgs, maxArgs, n, 'struct')");

== Argument d'entrée

/ minArgs: nombre minimum d'entrées acceptées (valeur entière scalaire).
/ maxArgs: nombre maximum d'entrées acceptées (valeur entière scalaire).
/ n: nombre d'entrées fournies à vérifier, généralement #strong[nargin]; (valeur entière scalaire).
/ 'string' ou 'struct': type de sortie : #strong['string']; (par défaut) renvoie un message de caractères, #strong['struct']; renvoie une structure d'erreur.

== Argument de sortie

/ msg: un vecteur ligne de caractères contenant le message d'erreur, ou #strong['']; (vide) si #strong[n]; est dans l'intervalle #strong[\[minArgs, maxArgs\]];.
/ msgstruct: une structure avec les champs #strong[message]; et #strong[identifier]; (une structure vide #strong[1x0]; si #strong[n]; est dans l'intervalle).

== Description

#strong[nargchk]; vérifie si le nombre d'arguments d'entrée #strong[n]; est dans l'intervalle #strong[\[minArgs, maxArgs\]];.

 Il renvoie le message #strong['Not enough input arguments.']; lorsque #strong[n]; est inférieur à #strong[minArgs];, #strong['Too many input arguments.']; lorsque #strong[n]; est supérieur à #strong[maxArgs];, et un résultat vide sinon.

 Il est généralement utilisé sous la forme #strong[error(nargchk(minArgs, maxArgs, nargin))]; au début d'une fonction.

 #strong[nargchk]; est obsolète et conservé pour la compatibilité avec le code existant. Utilisez plutôt #strong[narginchk]; dans le nouveau code.


== Exemples

Pas assez d'arguments d'entrée :

``````matlab
msg = nargchk(2, 3, 1)
``````

Trop d'arguments d'entrée :

``````matlab
msg = nargchk(1, 2, 3)
``````

Dans l'intervalle, renvoie un message vide :

``````matlab
msg = nargchk(1, 3, 2)
``````


== Voir aussi

#nlink(<core:narginchk>)[narginchk];, #nlink(<core:nargoutchk>)[nargoutchk];, #nlink(<core:nargin>)[nargin];, #nlink(<error_manager:error>)[error];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
