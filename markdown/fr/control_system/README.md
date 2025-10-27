# Fonctions de système de contrôle

Le module Système de Contrôle fournit des algorithmes et des outils pour concevoir, analyser et ajuster des systèmes de contrôle linéaires dans Nelson.

Il prend en charge les modèles d'espace d'état et de fonction de transfert, les transformations de système entre temps continu et discret, et le calcul des pôles, zéros et réponses en fréquence.

Le module comprend également des fonctionnalités pour l'équilibrage des systèmes, l'analyse de contrôlabilité et d'observabilité, la conception de régulateurs et d'estimateurs, et la simulation des réponses des systèmes dynamiques.

Ces outils permettent une modélisation, une analyse et un contrôle robustes des systèmes dynamiques linéaires pour les applications d'ingénierie et de recherche.

## Functions

- [abcdchk](abcdchk.md) - Vérifie la compatibilité dimensionnelle des matrices A, B, C et D.
- [acker](acker.md) - Sélection du gain de placement des pôles utilisant la formule d'Ackermann.
- [append](append.md) - Ajoute les entrées et sorties des deux modèles.
- [augstate](augstate.md) - Ajoute le vecteur d'état au vecteur de sortie.
- [balreal](balreal.md) - Équilibrage basé sur le Gramien des réalisations d'espace d'état.
- [bdschur](bdschur.md) - Factorisation de Schur en blocs diagonaux.
- [bode](bode.md) - Diagramme de Bode de la réponse en fréquence, données de magnitude et de phase.
- [c2d](c2d.md) - Convertit le modèle du temps continu au temps discret.
- [care](care.md) - Solution de l'équation algébrique de Riccati en temps continu.
- [cloop](cloop.md) - Connexion en boucle fermée de plusieurs modèles.
- [compreal](compreal.md) - Réalisation compagnon des fonctions de transfert.
- [ctrb](ctrb.md) - Contrôlabilité du modèle d'espace d'état.
- [ctrbf](ctrbf.md) - Calcule la forme escalier de contrôlabilité.
- [d2c](d2c.md) - Convertit un modèle du temps discret au temps continu.
- [damp](damp.md) - Fréquence naturelle et rapport d'amortissement.
- [dare](dare.md) - Solution de l'équation de Riccati algébrique en temps discret.
- [dcgain](dcgain.md) - Gain en basse fréquence (DC) du système LTI.
- [dlqr](dlqr.md) - Régulateur de retour d'état linéaire-quadratique (LQ) pour système d'espace d'état en temps discret.
- [dlyap](dlyap.md) - Équations de Lyapunov en temps discret.
- [dsort](dsort.md) - Trie les pôles en temps discret par magnitude.
- [esort](esort.md) - Tri et réordonnancement des valeurs propres.
- [evalfr](evalfr.md) - Évalue la réponse en fréquence à une fréquence donnée.
- [feedback](feedback.md) - Connexion en boucle fermée de plusieurs modèles.
- [freqresp](freqresp.md) - Réponse en fréquence du système.
- [gensig](gensign.md) - Génère des signaux de test (carré, impulsion, bruit, ...).
- [gram](gram.md) - Matrices de Gram d'un système.
- [hsvd](hsvd.md) - Décomposition en valeurs singulières de Hankel.
- [impulse](impulse.md) - Réponse impulsionnelle d'un système dynamique.
- [initial](initial.md) - Conditions initiales et configurations de simulation.
- [isct](isct.md) - Vérifie si le modèle dynamique est en temps continu.
- [isdt](isdt.md) - Vérifie si le modèle dynamique est en temps discret.
- [islti](islti.md) - Vérifie si la variable est un modèle linéaire de type tf, ss ou zpk.
- [issiso](issiso.md) - Vérifie si le modèle dynamique est mono-entrée mono-sortie.
- [isstatic](isstatic.md) - Vérifie si le modèle est statique ou dynamique.
- [kalman](kalman.md) - Conception d'un filtre de Kalman pour l'estimation d'état.
- [lqe](lqe.md) - Conception d'un estimateur de Kalman pour systèmes en temps continu.
- [lqed](lqed.md) - Calcule l'estimateur de Kalman discret basé sur un critère de coût continu.
- [lqr](lqr.md) - Conception d'un régulateur linéaire-quadratique (LQR).
- [lqry](lqry.md) - Forme un régulateur LQ (rétroaction d'état) avec pondération sur la sortie.
- [lsim](lsim.md) - Trace la réponse temporelle simulée d'un système dynamique à des entrées arbitraires.
- [lyap](lyap.md) - Solution de l'équation de Lyapunov continue.
- [minreal](minreal.md) - Réalisation minimale ou annulation pôle‑zéro.
- [nyquist](nyquist.md) - Diagramme de Nyquist de la réponse en fréquence.
- [obsv](obsv.md) - Observabilité d'un modèle d'état.
- [obsvf](obsvf.md) - Calcul de la forme en escalier d'observabilité.
- [ord2](ord2.md) - Génère des systèmes du second ordre continus.
- [padecoef](padecoef.md) - Calcule l'approximation de Padé des délais temporels.
- [parallel](parallel.md) - Connexion parallèle de deux modèles.
- [pole](pole.md) - Pôles d'un système dynamique.
- [series](series.md) - Connexion en série de deux modèles.
- [ss](ss.md) - Modèle en espace d'état.
- [ss2tf](ss2tf.md) - Convertit une représentation état-espace en fonction de transfert.
- [ssdata](ssdata.md) - Accède aux données d'un modèle en espace d'état.
- [ssdelete](ssdelete.md) - Supprime des entrées, sorties et états d'un système en espace d'état.
- [ssselect](ssselect.md) - Extraire un sous-système d'un système plus grand.
- [step](step.md) - Réponse indicielle d'un système dynamique.
- [tf](tf.md) - Construit un modèle de fonction de transfert.
- [tf2ss](tf2ss.md) - Convertit les paramètres d'un filtre en fonction de transfert en forme état-espace.
- [tfdata](tfdata.md) - Accède aux données d'un modèle en fonction de transfert.
- [tzero](tzero.md) - Zéros invariants d'un système linéaire.
- [zero](zero.md) - Zéros et gain d'un système SISO.
