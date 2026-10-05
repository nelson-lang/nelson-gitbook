#import "nelson_help.typ": *

= audiodevinfo <audio:audiodevinfo>

Obtient les informations des périphériques audio.

== Syntaxe

- #raw("devices = audiodevinfo()");
- #raw("devices = audiodevinfo('default')");
- #raw("devices = audiodevinfo(io)");
- #raw("name = audiodevinfo(io, id)");
- #raw("id = audiodevinfo(io, name)");
- #raw("id = audiodevinfo(io, rate, bits, channels)");
- #raw("support = audiodevinfo(io, id, rate, bits, channels)");

== Argument d'entrée

/ io: périphérique d'entrée (1) ou de sortie (0)
/ id: une valeur entière.
/ name: une chaîne : nom du périphérique audio à rechercher.
/ rate: un scalaire double : taux d'échantillonnage.
/ bits: une valeur entière : bits par échantillon.
/ channels: une valeur entière : nombre de canaux audio.

== Argument de sortie

/ devices: tableau de structures
/ name: une chaîne : nom du périphérique audio spécifié par io et id.
/ id: une valeur entière.
/ support: un booléen : vrai si les valeurs sont supportées ou faux.

== Description

#strong[audiodevinfo]; retourne une structure avec les périphériques audio d'entrée et de sortie disponibles.

 #strong[devices \= audiodevinfo('default')]; retourne une structure avec les périphériques audio d'entrée et de sortie utilisés par défaut.


== Exemple

``````matlab
info = audiodevinfo()
OUTPUT_DEVICE = 0;
INPUT_DEVICE = 1;
for k = [1:audiodevinfo(OUTPUT_DEVICE)]
  info.output(k)
end
for k = [1:audiodevinfo(INPUT_DEVICE)]
  info.output(k)
end
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
