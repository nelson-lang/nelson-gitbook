#import "../nelson_help.typ": *

= sprintf <string:1_create_convert_text.sprintf>

Écrit des données dans une chaîne.

== Syntaxe

- #raw("sprintf(format, v1, ... , vn)");

== Argument d'entrée

/ format: une chaîne décrivant le format à utiliser.
/ v1, ... , vn: données à convertir et à écrire selon le paramètre de format précédent.

== Description

Écrit des données sous forme de texte dans une chaîne.

 Le #strong[format]; suit la syntaxe C de fprintf.

 

#table(
  columns: 3,
  [Type de valeur], [Format], [Remarque], 
  [Entier], [%i], [base 10], 
  [Entier signé], [%d], [base 10], 
  [Entier non signé], [%u], [base 10], 
  [Entier], [%o], [Octal (base 8)], 
  [Entier], [%x], [Hexadécimal (minuscules)], 
  [Entier], [%X], [Hexadécimal (MAJUSCULES)], 
  [Nombre à virgule flottante], [%f], [Notation décimale fixe], 
  [Nombre à virgule flottante], [%e], [Notation exponentielle (minuscules)], 
  [Nombre à virgule flottante], [%E], [Notation exponentielle (MAJUSCULES)], 
  [Nombre à virgule flottante], [%g], [Notation exponentielle (format compact, minuscules)], 
  [Nombre à virgule flottante], [%G], [Notation exponentielle (format compact, MAJUSCULES)], 
  [Caractère], [%c], [Caractère unique], 
  [Chaîne], [%s], [Vecteur de caractères.], 
)
 Pour afficher un signe pourcentage, utilisez un double pourcentage (%%) dans la chaîne de format.

 Un signe pourcentage placé seul en fin de chaîne de format est ignoré.


== Exemples

``````matlab
sprintf('an example of %s.', 'text')
``````

``````matlab
sprintf("an example of %s.", "text")
``````

``````matlab
sprintf('an value %g.', pi)
``````

Display a percent sign

``````matlab
sprintf('%d%%.', 95)
``````

Gestion du pourcentage final

``````matlab
sprintf(' %d %', 10)
sprintf(' %d %%', 10)
``````


== Voir aussi

#nlink(<stream_manager:fprintf>)[fprintf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
