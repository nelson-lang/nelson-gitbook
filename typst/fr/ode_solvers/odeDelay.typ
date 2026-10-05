#import "nelson_help.typ": *

= odeDelay <ode_solvers:odeDelay>

Objet de definition des delais pour les workflows EDO.

== Syntaxe

- #raw("D = odeDelay()");
- #raw("D = odeDelay(name, value)");

== Description

#strong[odeDelay]; stocke les reglages lies aux equations avec retard resolues par l'objet #strong[ode];.

 

#table(
  columns: 3,
  [Objet], [Role], [Utilise par], 
  [#strong[odeDelay];], [Stocke une definition reutilisable pour le workflow objet #strong[ode];.], [La propriete correspondante de #strong[ode]; et #strong[solve];.], 
  [Validation], [Verifie les noms et formes supportes au moment de la construction.], [Les tests et erreurs restent explicites avant integration.], 
)
 Le perimetre actuel prend en charge les entrees #strong[ValueDelay]; et #strong[SlopeDelay]; constantes positives ou fonctions, avec un #strong[History]; numerique ou fonction. Les fonctions de retard sont evaluees comme #strong[d(t,y)]; ou #strong[d(t,y,p)]; et doivent referencer un etat passe deja connu. La fonction EDO recoit les valeurs retardees avec #strong[f(t, y, z)];. Quand des retards de pente sont presents, elle recoit #strong[f(t, y, z, zp)];, ou les colonnes de #strong[zp]; contiennent les pentes retardees.

 Les evenements, matrices de masse et sensibilites directes sont pris en charge pour les equations avec retard explicites ou lineairement implicites. Les sensibilites adjointes, parties complexes separees et equations avec retard pleinement implicites ne sont pas encore prises en charge et signalent des erreurs explicites.


== Voir aussi

#nlink(<ode_solvers:ode>)[ode];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
