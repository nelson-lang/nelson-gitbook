#import "nelson_help.typ": *

= audiosupportedformats <audio:audiosupportedformats>

Obtient les formats de fichiers audio supportés.

== Syntaxe

- #raw("formats = audiosupportedformats()");

== Argument de sortie

/ formats: tableau de structures avec les noms de champs 'Name', 'Extension', 'Subformats'.

== Description

#strong[audiosupportedformats]; retourne une structure avec les formats de fichiers audio supportés.


== Exemple

``````matlab
formats = audiosupportedformats();
for k = [1: length(formats)]
  formats(k).Name
  formats(k).Extension
  formats(k).Subformats
end
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
