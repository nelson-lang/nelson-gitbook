# Fonctions de système de contrôle

Le module Système de Contrôle fournit des algorithmes et des outils pour concevoir, analyser et ajuster des systèmes de contrôle linéaires dans Nelson.

Il prend en charge les modèles d'espace d'état et de fonction de transfert, les transformations de système entre temps continu et discret, et le calcul des pôles, zéros et réponses en fréquence.

Le module comprend également des fonctionnalités pour l'équilibrage des systèmes, l'analyse de contrôlabilité et d'observabilité, la conception de régulateurs et d'estimateurs, et la simulation des réponses des systèmes dynamiques.

Ces outils permettent une modélisation, une analyse et un contrôle robustes des systèmes dynamiques linéaires pour les applications d'ingénierie et de recherche.

## Modeles de systemes dynamiques

Fonctions pour creer, inspecter et reduire des modeles de systemes dynamiques.

### Functions

- [balreal](1_dynamic_system_models/balreal.md) - Équilibrage basé sur le Gramien des réalisations d'espace d'état.
- [isct](1_dynamic_system_models/isct.md) - Vérifie si le modèle dynamique est en temps continu.
- [isdt](1_dynamic_system_models/isdt.md) - Vérifie si le modèle dynamique est en temps discret.
- [islti](1_dynamic_system_models/islti.md) - Vérifie si la variable est un modèle linéaire de type tf, ss ou zpk.
- [issiso](1_dynamic_system_models/issiso.md) - Vérifie si le modèle dynamique est mono-entrée mono-sortie.
- [isstatic](1_dynamic_system_models/isstatic.md) - Vérifie si le modèle est statique ou dynamique.
- [minreal](1_dynamic_system_models/minreal.md) - Réalisation minimale ou annulation pôle‑zéro.
- [pole](1_dynamic_system_models/pole.md) - Pôles d'un système dynamique.
- [ss](1_dynamic_system_models/ss.md) - Modèle en espace d'état.
- [ssdata](1_dynamic_system_models/ssdata.md) - Accède aux données d'un modèle en espace d'état.
- [tf](1_dynamic_system_models/tf.md) - Construit un modèle de fonction de transfert.
- [tfdata](1_dynamic_system_models/tfdata.md) - Accède aux données d'un modèle en fonction de transfert.
- [tzero](1_dynamic_system_models/tzero.md) - Zéros invariants d'un système linéaire.
- [zero](1_dynamic_system_models/zero.md) - Zéros et gain d'un système SISO.

## Conversion et interconnexion de modeles

Fonctions pour conversion, composition, selection et interconnexion de modeles.

### Functions

- [abcdchk](2_model_conversion_interconnection/abcdchk.md) - Vérifie la compatibilité dimensionnelle des matrices A, B, C et D.
- [append](2_model_conversion_interconnection/append.md) - Ajoute les entrées et sorties des deux modèles.
- [augstate](2_model_conversion_interconnection/augstate.md) - Ajoute le vecteur d'état au vecteur de sortie.
- [c2d](2_model_conversion_interconnection/c2d.md) - Convertit le modèle du temps continu au temps discret.
- [d2c](2_model_conversion_interconnection/d2c.md) - Convertit un modèle du temps discret au temps continu.
- [feedback](2_model_conversion_interconnection/feedback.md) - Connexion en boucle fermée de plusieurs modèles.
- [gensig](2_model_conversion_interconnection/gensign.md) - GÃ©nÃ¨re des signaux de test (carrÃ©, impulsion, bruit, ...).
- [padecoef](2_model_conversion_interconnection/padecoef.md) - Calcule l'approximation de Padé des délais temporels.
- [parallel](2_model_conversion_interconnection/parallel.md) - Connexion parallèle de deux modèles.
- [series](2_model_conversion_interconnection/series.md) - Connexion en série de deux modèles.
- [ss2tf](2_model_conversion_interconnection/ss2tf.md) - Convertit une représentation état-espace en fonction de transfert.
- [ssdelete](2_model_conversion_interconnection/ssdelete.md) - Supprime des entrées, sorties et états d'un système en espace d'état.
- [ssselect](2_model_conversion_interconnection/ssselect.md) - Extraire un sous-système d'un système plus grand.
- [tf2ss](2_model_conversion_interconnection/tf2ss.md) - Convertit les paramètres d'un filtre en fonction de transfert en forme état-espace.

## Analyse lineaire

Fonctions pour analyse temporelle, frequentielle et reponse de modeles.

### Functions

- [bode](3_linear_analysis/bode.md) - Diagramme de Bode de la rÃƒÂ©ponse en frÃƒÂ©quence, donnÃƒÂ©es de magnitude et de phase.
- [damp](3_linear_analysis/damp.md) - Fréquence naturelle et rapport d'amortissement.
- [dcgain](3_linear_analysis/dcgain.md) - Gain en basse fréquence (DC) du système LTI.
- [evalfr](3_linear_analysis/evalfr.md) - Évalue la réponse en fréquence à une fréquence donnée.
- [freqresp](3_linear_analysis/freqresp.md) - RÃ©ponse en frÃ©quence du systÃ¨me.
- [hsvd](3_linear_analysis/hsvd.md) - Décomposition en valeurs singulières de Hankel.
- [nyquist](3_linear_analysis/nyquist.md) - Diagramme de Nyquist de la rÃ©ponse en frÃ©quence.
- [sigma](3_linear_analysis/sigma.md) - Reponse en valeurs singulieres d'un modele LTI.

## Reponses temporelles et frequentielles

Fonctions de simulation et de reponse pour systemes dynamiques.

### Functions

- [impulse](4_time_frequency_response/impulse.md) - RÃ©ponse impulsionnelle d'un systÃ¨me dynamique.
- [initial](4_time_frequency_response/initial.md) - Conditions initiales et configurations de simulation.
- [lsim](4_time_frequency_response/lsim.md) - Trace la rÃ©ponse temporelle simulÃ©e d'un systÃ¨me dynamique Ã  des entrÃ©es arbitraires.
- [step](4_time_frequency_response/step.md) - RÃ©ponse indicielle d'un systÃ¨me dynamique.

## Conception et reglage de commande

Fonctions pour conception de controleurs, estimateurs et calculs de regulateurs.

### Functions

- [acker](5_control_design_tuning/acker.md) - Sélection du gain de placement des pôles utilisant la formule d'Ackermann.
- [are](5_control_design_tuning/are.md) - Solution d'equation algebrique de Riccati.
- [care](5_control_design_tuning/care.md) - Solution de l'équation algébrique de Riccati en temps continu.
- [dare](5_control_design_tuning/dare.md) - Solution de l'équation de Riccati algébrique en temps discret.
- [dlqr](5_control_design_tuning/dlqr.md) - Régulateur de retour d'état linéaire-quadratique (LQ) pour système d'espace d'état en temps discret.
- [kalman](5_control_design_tuning/kalman.md) - Conception d'un filtre de Kalman pour l'estimation d'état.
- [lqe](5_control_design_tuning/lqe.md) - Conception d'un estimateur de Kalman pour systèmes en temps continu.
- [lqed](5_control_design_tuning/lqed.md) - Calcule l'estimateur de Kalman discret basé sur un critère de coût continu.
- [lqr](5_control_design_tuning/lqr.md) - Conception d'un régulateur linéaire-quadratique (LQR).
- [lqry](5_control_design_tuning/lqry.md) - Forme un régulateur LQ (rétroaction d'état) avec pondération sur la sortie.
- [ord2](5_control_design_tuning/ord2.md) - Génère des systèmes du second ordre continus.

## Calculs matriciels

Calculs matriciels orientes commande pour analyse en espace d etat.

### Functions

- [bdschur](6_matrix_computations/bdschur.md) - Factorisation de Schur en blocs diagonaux.
- [cloop](6_matrix_computations/cloop.md) - Connexion en boucle fermée de plusieurs modèles.
- [compreal](6_matrix_computations/compreal.md) - Réalisation compagnon des fonctions de transfert.
- [ctrb](6_matrix_computations/ctrb.md) - Contrôlabilité du modèle d'espace d'état.
- [ctrbf](6_matrix_computations/ctrbf.md) - Calcule la forme escalier de contrôlabilité.
- [dlyap](6_matrix_computations/dlyap.md) - Équations de Lyapunov en temps discret.
- [dsort](6_matrix_computations/dsort.md) - Trie les pôles en temps discret par magnitude.
- [esort](6_matrix_computations/esort.md) - Tri et réordonnancement des valeurs propres.
- [gram](6_matrix_computations/gram.md) - Matrices de Gram d'un système.
- [lyap](6_matrix_computations/lyap.md) - Solution de l'équation de Lyapunov continue.
- [obsv](6_matrix_computations/obsv.md) - Observabilité d'un modèle d'état.
- [obsvf](6_matrix_computations/obsvf.md) - Calcul de la forme en escalier d'observabilité.
- [schord](6_matrix_computations/schord.md) - Ordonne une decomposition de Schur.
