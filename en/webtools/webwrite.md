# webwrite

Write data to RESTful web service

## Syntax

- response = webwrite(url, data)
- response = webwrite(url, data, options)
- response = webwrite(url, name1, value1, ... , nameN, valueN)
- response = webwrite(url, name1, value1, ... , nameN, valueN, options)

## Input argument

- url - a string: URL to a web service.
- data - Data to post to a web service, an nelson's variable.
- name1, value1, ... , nameN, valueN - Name-Value Pair Arguments, Data to post to a web service.
- options - a weboptions object.

## Output argument

- response - a variable: Response from a web service.

## Description

  <p><b>webwrite</b> write data to RESTful web service.</p>

## Examples

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

## See also

[weboptions](weboptions.md), [webread](webread.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
