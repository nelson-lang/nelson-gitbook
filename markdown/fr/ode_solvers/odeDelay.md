# odeDelay

Objet de definition des delais pour les workflows EDO.

## 📝 Syntaxe

- D = odeDelay()
- D = odeDelay(name, value)

## 📄 Description

<b>odeDelay</b> stocke les reglages lies aux equations avec retard resolues par l'objet <b>ode</b>.

| Objet        | Role                                                               | Utilise par                                                |
| ------------ | ------------------------------------------------------------------ | ---------------------------------------------------------- |
| **odeDelay** | Stocke une definition reutilisable pour le workflow objet **ode**. | La propriete correspondante de **ode** et **solve**.       |
| Validation   | Verifie les noms et formes supportes au moment de la construction. | Les tests et erreurs restent explicites avant integration. |

Le perimetre actuel prend en charge les entrees <b>ValueDelay</b> et <b>SlopeDelay</b> constantes positives ou fonctions, avec un <b>History</b> numerique ou fonction. Les fonctions de retard sont evaluees comme <b>d(t,y)</b> ou <b>d(t,y,p)</b> et doivent referencer un etat passe deja connu. La fonction EDO recoit les valeurs retardees avec <b>f(t, y, z)</b>. Quand des retards de pente sont presents, elle recoit <b>f(t, y, z, zp)</b>, ou les colonnes de <b>zp</b> contiennent les pentes retardees.

Les evenements, matrices de masse et sensibilites directes sont pris en charge pour les equations avec retard explicites ou lineairement implicites. Les sensibilites adjointes, parties complexes separees et equations avec retard pleinement implicites ne sont pas encore prises en charge et signalent des erreurs explicites.

## 🔗 Voir aussi

[ode](../ode_solvers/ode.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
