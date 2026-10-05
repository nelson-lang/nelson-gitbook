#import "../nelson_help.typ": *

= freqresp <control_system:3_linear_analysis.freqresp>

RÃ©ponse en frÃ©quence du systÃ¨me.

== Syntaxe

- #raw("[H, wout] = freqresp(sys, w)");
- #raw("H = freqresp(sys, w)");

== Argument d'entrée

/ sys: modÃ¨le LTI
/ w: FrÃ©quences : vecteur.

== Argument de sortie

/ H: Valeurs de rÃ©ponse en frÃ©quence
/ wout: FrÃ©quences de sortie correspondant Ã  la rÃ©ponse en frÃ©quence : vecteur.

== Description

Calcule la rÃ©ponse en frÃ©quence (rÃ©ponse complexe) d'un systÃ¨me LTI pour une gamme de frÃ©quences donnÃ©e.


== Exemples

``````matlab
G = tf(1,[1 1]);
h1 = freqresp(G, 3)
``````

``````matlab
num = [1 2];
den = [1 3 2];
sys = tf(num,den);
w = linspace(0, 100, 60);
[resp,freq] = freqresp(sys, w);

f = figure();
subplot(2, 1, 1);
plot(freq, 20 * log10(abs(squeeze(resp))));
ylabel(_('Amplitude (dB)'));
subplot(2, 1, 2);
plot(freq, angle(squeeze(resp)) * 180/pi);
ylabel(_('Phase (degrees)'));
xlabel(_('Frequency (Hz)'));

``````


#align(center)[#image("freqresp.svg")]

== Voir aussi

#nlink(<control_system:3_linear_analysis.bode>)[bode];, #nlink(<control_system:3_linear_analysis.evalfr>)[evalfr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
