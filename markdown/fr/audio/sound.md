# sound

Convertit une matrice de données de signal en son et le joue.

## 📝 Syntaxe

- sound(y)
- sound(y, Fs)
- sound(y, Fs, nBits)
- sound(y, Fs, nBits)

## 📥 Argument d'entrée

- y - vecteur colonne ou matrice m-par-2.
- Fs - fréquence d'échantillonnage, un nombre positif, 8192 par défaut.
- nBits - profondeur de bits des valeurs d'échantillon : 8, 16 (par défaut), 24.

## 📄 Description

<b>sound</b> joue le signal audio <b>y</b> sur le haut-parleur à une fréquence d'échantillonnage de <b>Fs</b> hertz et utilise <b>nBits</b> bits par échantillon.

## 💡 Exemple

```matlab
signal = rand(2, 44100) - 0.5;
sound(signal, 44110, 16)

```

## 🔗 Voir aussi

[audioplayer](../audio/audioplayer.md), [playblocking](../audio/playblocking.md), [soundsc](../audio/soundsc.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
