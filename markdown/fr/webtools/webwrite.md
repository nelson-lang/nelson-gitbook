# webwrite

Envoyer des données à un service web RESTful

## 📝 Syntaxe

- response = webwrite(url, data)
- response = webwrite(url, data, options)
- response = webwrite(url, name1, value1, ... , nameN, valueN)
- response = webwrite(url, name1, value1, ... , nameN, valueN, options)

## 📥 Argument d'entrée

- url - chaîne : URL d'un service web.
- data - Données à poster vers un service web, variable Nelson.
- name1, value1, ... , nameN, valueN - Arguments Nom-Valeur : données à poster vers un service web.
- options - objet weboptions.

## 📤 Argument de sortie

- response - variable : réponse d'un service web.

## 📄 Description

<b>webwrite</b> envoie des données à un service web RESTful.

## 💡 Exemples

Send message to Slack

```matlab
[Y, M, D, H, MN, S] = datevec(now);
datetime = sprintf('%d/%d/%d %d:%d:%d', Y, M, D, H, MN, S);
% hide url to slack
url = char([104 116 116 112 115 58 47 47 104 111 111 107 115 46 115 108 97 99 107 46 99 111 109 47 115 101 114 118 105 99 101 115 47 84 77 82 71 56 82 72 68 50 47 66 77 83 48 76 72 65 65 67 47 81 54 52 97 52 49 84 83 76 104 105 78 71 81 108 100 51 115 76 50 86 109 74 71]);
data = struct('text', ['hello from Nelson ', datetime], 'channel', '#test_webwrite');
R = webwrite(url, data);

```

Connect to your NetAtmo Weather station (oAuth2 connection)

```matlab

USER_NAME = 'your username';
PASSWORD = 'your password';
CLIENT_ID = 'your client id';
CLIENT_SECRET = 'your client secret';
DEVICE_ID = 'your device id';

url = 'https://api.netatmo.com/oauth2/token';
args = {'grant_type', 'password', 'username', USER_NAME, 'password', PASSWORD, 'client_id', CLIENT_ID, 'client_secret', CLIENT_SECRET};
response = webwrite(url, args{:});
r = webread('https://api.netatmo.com/api/getstationsdata', 'access_token', response.access_token, 'device_id', DEVICE_ID);
disp('Devices')
disp(r.body.devices)
disp('Location Info')
disp(r.body.devices.place)
disp('Last values')
disp(r.body.devices.dashboard_data)

```

## 🔗 Voir aussi

[weboptions](../webtools/weboptions.md), [webread](../webtools/webread.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
