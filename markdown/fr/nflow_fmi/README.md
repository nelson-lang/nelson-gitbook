# Import FMI NFlow

Le module FMI de NFlow importe des unités de maquette fonctionnelle (FMU) conformes au standard **FMI 3.0** et les exécute comme composants de co-simulation ou de Model Exchange.

NFlow est actuellement publié en version **1.0.0-beta.1** : fonctionnel et testé, mais les détails de ses interfaces et de son format de fichier peuvent encore évoluer selon les retours.

Il lit la description de modèle d'une FMU, expose ses variables et ses interfaces, et soit pilote une co-simulation à pas fixe (la FMU possède son solveur), soit intègre une FMU Model Exchange avec le solveur de NFlow, en enregistrant les sorties de la FMU au cours du temps.

Les fonctions acceptent aussi bien une archive **.fmu** qu'un répertoire de FMU déjà extrait. Les archives sont décompressées avec un extracteur durci contre le ZIP-slip dans un répertoire temporaire supprimé automatiquement.

Cet import alimente aussi deux blocs dans l'éditeur NFlow (catégorie **FMI**) : un bloc **FMU** (co-simulation) et un bloc **FMU (ME)** (Model Exchange, dont les états continus rejoignent le solveur global du diagramme). Posez un bloc, cliquez sur **Browse FMU...** pour choisir un **.fmu**, et ses ports d'entrée et de sortie sont configurés automatiquement d'après la description de modèle. Des diagrammes de démonstration prêts à ouvrir pour plusieurs FMU de référence (VanDerPol, BouncingBall, Dahlquist, StateSpace, Feedthrough) sont fournis dans le répertoire **examples** du module.

| Domaine                | Entrées principales                                        |
| ---------------------- | ---------------------------------------------------------- |
| Description de modèle  | **fmiInfo**                                                |
| Co-simulation          | **fmiCoSimulate**                                          |
| Model Exchange         | **fmiModelExchange**                                       |
| Pont Modelica          | **modelicaInfo**, **modelicaConfigure**, **modelicaToFmu** |
| Assistant d'import FMU | **fmuToBlock**                                             |

L'**assistant d'import FMU** (**fmuToBlock**) transforme n'importe quelle FMU en bloc nflow d'aspect natif -- ports d'entrée et de sortie d'après la description de modèle, paramètres et icône de la FMU -- prêt à déposer dans une bibliothèque. Il se marie avec le pont Modelica : **modelicaToFmu** produit une FMU, **fmuToBlock** l'enveloppe en bloc.

Le **pont Modelica** permet à un modèle nflow d'inclure un bloc **modelica** qui référence un modèle Modelica. À la simulation, le modèle est compilé en FMU avec un **OpenModelica** installé par l'utilisateur puis importé via le chemin FMI ci-dessus, de sorte que des modèles Modelica physiques (acausaux) se simulent aux côtés des blocs ordinaires. **modelicaInfo** et **modelicaConfigure** indiquent et sélectionnent l'OpenModelica utilisé ; **modelicaToFmu** réalise la compilation. Des exemples (RC, RLC, masse-ressort-amortisseur) sont fournis dans le répertoire **examples/modelica** du module.

## Functions

- [fmiCoSimulate](fmiCoSimulate.md) - Exécute une co-simulation à pas fixe d'une FMU FMI 2.0 ou 3.0.
- [fmiInfo](fmiInfo.md) - Lit la description de modèle d'une FMU FMI 2.0 ou 3.0.
- [fmiModelExchange](fmiModelExchange.md) - Importe et intègre une FMU FMI 2.0 ou 3.0 Model Exchange.
- [fmuToBlock](fmuToBlock.md) - Transforme une FMU en bloc natif nflow (manifeste).
- [modelicaConfigure](modelicaConfigure.md) - Définit ou interroge l'OpenModelica du pont Modelica de nflow.
- [modelicaInfo](modelicaInfo.md) - Indique l'OpenModelica utilisé par le pont Modelica de nflow.
- [modelicaToFmu](modelicaToFmu.md) - Compile un modèle Modelica en FMU avec OpenModelica.
