#import "nelson_help.typ": *

= Import FMI NFlow

Le module FMI de NFlow importe des unités de maquette fonctionnelle (FMU) conformes au standard #strong[FMI 3.0]; et les exécute comme composants de co-simulation ou de Model Exchange.

 NFlow est actuellement publié en version #strong[1.0.0-beta.1]; : fonctionnel et testé, mais les détails de ses interfaces et de son format de fichier peuvent encore évoluer selon les retours.

 Il lit la description de modèle d'une FMU, expose ses variables et ses interfaces, et soit pilote une co-simulation à pas fixe (la FMU possède son solveur), soit intègre une FMU Model Exchange avec le solveur de NFlow, en enregistrant les sorties de la FMU au cours du temps.

 Les fonctions acceptent aussi bien une archive #strong[.fmu]; qu'un répertoire de FMU déjà extrait. Les archives sont décompressées avec un extracteur durci contre le ZIP-slip dans un répertoire temporaire supprimé automatiquement.

 Cet import alimente aussi deux blocs dans l'éditeur NFlow (catégorie #strong[FMI];) : un bloc #strong[FMU]; (co-simulation) et un bloc #strong[FMU (ME)]; (Model Exchange, dont les états continus rejoignent le solveur global du diagramme). Posez un bloc, cliquez sur #strong[Browse FMU...]; pour choisir un #strong[.fmu];, et ses ports d'entrée et de sortie sont configurés automatiquement d'après la description de modèle. Des diagrammes de démonstration prêts à ouvrir pour plusieurs FMU de référence (VanDerPol, BouncingBall, Dahlquist, StateSpace, Feedthrough) sont fournis dans le répertoire #strong[examples]; du module.

 
#table(
  columns: 2,
  table.header([Domaine], [Entrées principales], ),
  [Description de modèle], [#strong[fmiInfo];], 
  [Co-simulation], [#strong[fmiCoSimulate];], 
  [Model Exchange], [#strong[fmiModelExchange];], 
  [Pont Modelica], [#strong[modelicaInfo];, #strong[modelicaConfigure];, #strong[modelicaToFmu];], 
  [Assistant d'import FMU], [#strong[fmuToBlock];], 
)
 L'#strong[assistant d'import FMU]; (#strong[fmuToBlock];) transforme n'importe quelle FMU en bloc nflow d'aspect natif -- ports d'entrée et de sortie d'après la description de modèle, paramètres et icône de la FMU -- prêt à déposer dans une bibliothèque. Il se marie avec le pont Modelica : #strong[modelicaToFmu]; produit une FMU, #strong[fmuToBlock]; l'enveloppe en bloc.

 Le #strong[pont Modelica]; permet à un modèle nflow d'inclure un bloc #strong[modelica]; qui référence un modèle Modelica. À la simulation, le modèle est compilé en FMU avec un #strong[OpenModelica]; installé par l'utilisateur puis importé via le chemin FMI ci-dessus, de sorte que des modèles Modelica physiques (acausaux) se simulent aux côtés des blocs ordinaires. #strong[modelicaInfo]; et #strong[modelicaConfigure]; indiquent et sélectionnent l'OpenModelica utilisé ; #strong[modelicaToFmu]; réalise la compilation. Des exemples (RC, RLC, masse-ressort-amortisseur) sont fournis dans le répertoire #strong[examples\/modelica]; du module.

== Functions

- #nlink(<nflow_fmi:fmiCoSimulate>)[fmiCoSimulate]: Exécute une co-simulation à pas fixe d'une FMU FMI 2.0 ou 3.0.
- #nlink(<nflow_fmi:fmiInfo>)[fmiInfo]: Lit la description de modèle d'une FMU FMI 2.0 ou 3.0.
- #nlink(<nflow_fmi:fmiModelExchange>)[fmiModelExchange]: Importe et intègre une FMU FMI 2.0 ou 3.0 Model Exchange.
- #nlink(<nflow_fmi:fmuToBlock>)[fmuToBlock]: Transforme une FMU en bloc natif nflow (manifeste).
- #nlink(<nflow_fmi:modelicaConfigure>)[modelicaConfigure]: Définit ou interroge l'OpenModelica du pont Modelica de nflow.
- #nlink(<nflow_fmi:modelicaInfo>)[modelicaInfo]: Indique l'OpenModelica utilisé par le pont Modelica de nflow.
- #nlink(<nflow_fmi:modelicaToFmu>)[modelicaToFmu]: Compile un modèle Modelica en FMU avec OpenModelica.


#nested[
#pagebreak(weak: true)
#include "fmiCoSimulate.typ"
#pagebreak(weak: true)
#include "fmiInfo.typ"
#pagebreak(weak: true)
#include "fmiModelExchange.typ"
#pagebreak(weak: true)
#include "fmuToBlock.typ"
#pagebreak(weak: true)
#include "modelicaConfigure.typ"
#pagebreak(weak: true)
#include "modelicaInfo.typ"
#pagebreak(weak: true)
#include "modelicaToFmu.typ"
]
