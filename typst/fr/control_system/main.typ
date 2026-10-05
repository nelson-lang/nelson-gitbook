#import "nelson_help.typ": *

= Fonctions de système de contrôle

Le module Système de Contrôle fournit des algorithmes et des outils pour concevoir, analyser et ajuster des systèmes de contrôle linéaires dans Nelson.

 Il prend en charge les modèles d'espace d'état et de fonction de transfert, les transformations de système entre temps continu et discret, et le calcul des pôles, zéros et réponses en fréquence.

 Le module comprend également des fonctionnalités pour l'équilibrage des systèmes, l'analyse de contrôlabilité et d'observabilité, la conception de régulateurs et d'estimateurs, et la simulation des réponses des systèmes dynamiques.

 Ces outils permettent une modélisation, une analyse et un contrôle robustes des systèmes dynamiques linéaires pour les applications d'ingénierie et de recherche.

== Modeles de systemes dynamiques

Fonctions pour creer, inspecter et reduire des modeles de systemes dynamiques.

=== Functions

- #nlink(<control_system:1_dynamic_system_models.balreal>)[balreal]: Équilibrage basé sur le Gramien des réalisations d'espace d'état.
- #nlink(<control_system:1_dynamic_system_models.isct>)[isct]: Vérifie si le modèle dynamique est en temps continu.
- #nlink(<control_system:1_dynamic_system_models.isdt>)[isdt]: Vérifie si le modèle dynamique est en temps discret.
- #nlink(<control_system:1_dynamic_system_models.islti>)[islti]: Vérifie si la variable est un modèle linéaire de type tf, ss ou zpk.
- #nlink(<control_system:1_dynamic_system_models.issiso>)[issiso]: Vérifie si le modèle dynamique est mono-entrée mono-sortie.
- #nlink(<control_system:1_dynamic_system_models.isstatic>)[isstatic]: Vérifie si le modèle est statique ou dynamique.
- #nlink(<control_system:1_dynamic_system_models.minreal>)[minreal]: Réalisation minimale ou annulation pôle‑zéro.
- #nlink(<control_system:1_dynamic_system_models.pole>)[pole]: Pôles d'un système dynamique.
- #nlink(<control_system:1_dynamic_system_models.ss>)[ss]: Modèle en espace d'état.
- #nlink(<control_system:1_dynamic_system_models.ssdata>)[ssdata]: Accède aux données d'un modèle en espace d'état.
- #nlink(<control_system:1_dynamic_system_models.tf>)[tf]: Construit un modèle de fonction de transfert.
- #nlink(<control_system:1_dynamic_system_models.tfdata>)[tfdata]: Accède aux données d'un modèle en fonction de transfert.
- #nlink(<control_system:1_dynamic_system_models.tzero>)[tzero]: Zéros invariants d'un système linéaire.
- #nlink(<control_system:1_dynamic_system_models.zero>)[zero]: Zéros et gain d'un système SISO.

== Conversion et interconnexion de modeles

Fonctions pour conversion, composition, selection et interconnexion de modeles.

=== Functions

- #nlink(<control_system:2_model_conversion_interconnection.abcdchk>)[abcdchk]: Vérifie la compatibilité dimensionnelle des matrices A, B, C et D.
- #nlink(<control_system:2_model_conversion_interconnection.append>)[append]: Ajoute les entrées et sorties des deux modèles.
- #nlink(<control_system:2_model_conversion_interconnection.augstate>)[augstate]: Ajoute le vecteur d'état au vecteur de sortie.
- #nlink(<control_system:2_model_conversion_interconnection.c2d>)[c2d]: Convertit le modèle du temps continu au temps discret.
- #nlink(<control_system:2_model_conversion_interconnection.d2c>)[d2c]: Convertit un modèle du temps discret au temps continu.
- #nlink(<control_system:2_model_conversion_interconnection.feedback>)[feedback]: Connexion en boucle fermée de plusieurs modèles.
- #nlink(<control_system:2_model_conversion_interconnection.gensign>)[gensig]: GÃ©nÃ¨re des signaux de test (carrÃ©, impulsion, bruit, ...).
- #nlink(<control_system:2_model_conversion_interconnection.padecoef>)[padecoef]: Calcule l'approximation de Padé des délais temporels.
- #nlink(<control_system:2_model_conversion_interconnection.parallel>)[parallel]: Connexion parallèle de deux modèles.
- #nlink(<control_system:2_model_conversion_interconnection.series>)[series]: Connexion en série de deux modèles.
- #nlink(<control_system:2_model_conversion_interconnection.ss2tf>)[ss2tf]: Convertit une représentation état-espace en fonction de transfert.
- #nlink(<control_system:2_model_conversion_interconnection.ssdelete>)[ssdelete]: Supprime des entrées, sorties et états d'un système en espace d'état.
- #nlink(<control_system:2_model_conversion_interconnection.ssselect>)[ssselect]: Extraire un sous-système d'un système plus grand.
- #nlink(<control_system:2_model_conversion_interconnection.tf2ss>)[tf2ss]: Convertit les paramètres d'un filtre en fonction de transfert en forme état-espace.

== Analyse lineaire

Fonctions pour analyse temporelle, frequentielle et reponse de modeles.

=== Functions

- #nlink(<control_system:3_linear_analysis.bode>)[bode]: Diagramme de Bode de la rÃƒÂ©ponse en frÃƒÂ©quence, donnÃƒÂ©es de magnitude et de phase.
- #nlink(<control_system:3_linear_analysis.damp>)[damp]: Fréquence naturelle et rapport d'amortissement.
- #nlink(<control_system:3_linear_analysis.dcgain>)[dcgain]: Gain en basse fréquence (DC) du système LTI.
- #nlink(<control_system:3_linear_analysis.evalfr>)[evalfr]: Évalue la réponse en fréquence à une fréquence donnée.
- #nlink(<control_system:3_linear_analysis.freqresp>)[freqresp]: RÃ©ponse en frÃ©quence du systÃ¨me.
- #nlink(<control_system:3_linear_analysis.hsvd>)[hsvd]: Décomposition en valeurs singulières de Hankel.
- #nlink(<control_system:3_linear_analysis.nyquist>)[nyquist]: Diagramme de Nyquist de la rÃ©ponse en frÃ©quence.
- #nlink(<control_system:3_linear_analysis.sigma>)[sigma]: Reponse en valeurs singulieres d'un modele LTI.

== Reponses temporelles et frequentielles

Fonctions de simulation et de reponse pour systemes dynamiques.

=== Functions

- #nlink(<control_system:4_time_frequency_response.impulse>)[impulse]: RÃ©ponse impulsionnelle d'un systÃ¨me dynamique.
- #nlink(<control_system:4_time_frequency_response.initial>)[initial]: Conditions initiales et configurations de simulation.
- #nlink(<control_system:4_time_frequency_response.lsim>)[lsim]: Trace la rÃ©ponse temporelle simulÃ©e d'un systÃ¨me dynamique Ã  des entrÃ©es arbitraires.
- #nlink(<control_system:4_time_frequency_response.step>)[step]: RÃ©ponse indicielle d'un systÃ¨me dynamique.

== Conception et reglage de commande

Fonctions pour conception de controleurs, estimateurs et calculs de regulateurs.

=== Functions

- #nlink(<control_system:5_control_design_tuning.acker>)[acker]: Sélection du gain de placement des pôles utilisant la formule d'Ackermann.
- #nlink(<control_system:5_control_design_tuning.are>)[are]: Solution d'equation algebrique de Riccati.
- #nlink(<control_system:5_control_design_tuning.care>)[care]: Solution de l'équation algébrique de Riccati en temps continu.
- #nlink(<control_system:5_control_design_tuning.dare>)[dare]: Solution de l'équation de Riccati algébrique en temps discret.
- #nlink(<control_system:5_control_design_tuning.dlqr>)[dlqr]: Régulateur de retour d'état linéaire-quadratique (LQ) pour système d'espace d'état en temps discret.
- #nlink(<control_system:5_control_design_tuning.kalman>)[kalman]: Conception d'un filtre de Kalman pour l'estimation d'état.
- #nlink(<control_system:5_control_design_tuning.lqe>)[lqe]: Conception d'un estimateur de Kalman pour systèmes en temps continu.
- #nlink(<control_system:5_control_design_tuning.lqed>)[lqed]: Calcule l'estimateur de Kalman discret basé sur un critère de coût continu.
- #nlink(<control_system:5_control_design_tuning.lqr>)[lqr]: Conception d'un régulateur linéaire-quadratique (LQR).
- #nlink(<control_system:5_control_design_tuning.lqry>)[lqry]: Forme un régulateur LQ (rétroaction d'état) avec pondération sur la sortie.
- #nlink(<control_system:5_control_design_tuning.ord2>)[ord2]: Génère des systèmes du second ordre continus.

== Calculs matriciels

Calculs matriciels orientes commande pour analyse en espace d etat.

=== Functions

- #nlink(<control_system:6_matrix_computations.bdschur>)[bdschur]: Factorisation de Schur en blocs diagonaux.
- #nlink(<control_system:6_matrix_computations.cloop>)[cloop]: Connexion en boucle fermée de plusieurs modèles.
- #nlink(<control_system:6_matrix_computations.compreal>)[compreal]: Réalisation compagnon des fonctions de transfert.
- #nlink(<control_system:6_matrix_computations.ctrb>)[ctrb]: Contrôlabilité du modèle d'espace d'état.
- #nlink(<control_system:6_matrix_computations.ctrbf>)[ctrbf]: Calcule la forme escalier de contrôlabilité.
- #nlink(<control_system:6_matrix_computations.dlyap>)[dlyap]: Équations de Lyapunov en temps discret.
- #nlink(<control_system:6_matrix_computations.dsort>)[dsort]: Trie les pôles en temps discret par magnitude.
- #nlink(<control_system:6_matrix_computations.esort>)[esort]: Tri et réordonnancement des valeurs propres.
- #nlink(<control_system:6_matrix_computations.gram>)[gram]: Matrices de Gram d'un système.
- #nlink(<control_system:6_matrix_computations.lyap>)[lyap]: Solution de l'équation de Lyapunov continue.
- #nlink(<control_system:6_matrix_computations.obsv>)[obsv]: Observabilité d'un modèle d'état.
- #nlink(<control_system:6_matrix_computations.obsvf>)[obsvf]: Calcul de la forme en escalier d'observabilité.
- #nlink(<control_system:6_matrix_computations.schord>)[schord]: Ordonne une decomposition de Schur.


#nested[
#pagebreak(weak: true)
#include "1_dynamic_system_models/balreal.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/isct.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/isdt.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/islti.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/issiso.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/isstatic.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/minreal.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/pole.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/ss.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/ssdata.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/tf.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/tfdata.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/tzero.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/zero.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/abcdchk.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/append.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/augstate.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/c2d.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/d2c.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/feedback.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/gensign.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/padecoef.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/parallel.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/series.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/ss2tf.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/ssdelete.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/ssselect.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/tf2ss.typ"
#pagebreak(weak: true)
#include "3_linear_analysis/bode.typ"
#pagebreak(weak: true)
#include "3_linear_analysis/damp.typ"
#pagebreak(weak: true)
#include "3_linear_analysis/dcgain.typ"
#pagebreak(weak: true)
#include "3_linear_analysis/evalfr.typ"
#pagebreak(weak: true)
#include "3_linear_analysis/freqresp.typ"
#pagebreak(weak: true)
#include "3_linear_analysis/hsvd.typ"
#pagebreak(weak: true)
#include "3_linear_analysis/nyquist.typ"
#pagebreak(weak: true)
#include "3_linear_analysis/sigma.typ"
#pagebreak(weak: true)
#include "4_time_frequency_response/impulse.typ"
#pagebreak(weak: true)
#include "4_time_frequency_response/initial.typ"
#pagebreak(weak: true)
#include "4_time_frequency_response/lsim.typ"
#pagebreak(weak: true)
#include "4_time_frequency_response/step.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/acker.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/are.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/care.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/dare.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/dlqr.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/kalman.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/lqe.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/lqed.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/lqr.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/lqry.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/ord2.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/bdschur.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/cloop.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/compreal.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/ctrb.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/ctrbf.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/dlyap.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/dsort.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/esort.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/gram.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/lyap.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/obsv.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/obsvf.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/schord.typ"
]
