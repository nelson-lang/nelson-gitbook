# waitfor

Wait for condition.

## 📝 Syntax

- waitfor(obj)
- waitfor(obj, propertyName)
- waitfor(obj, propertyName, propertyValue)

## 📥 Input argument

- obj - any scalar graphics object value.
- propertyName - property name: character vector or string scalar.
- propertyValue - property value: valid property value associated with propertyName.

## 📄 Description

<b>waitfor(obj)</b> pauses the execution of statements until the specified object is closed (or deleted). Once the object is no longer present, <b>waitfor</b> returns, allowing the execution to continue. If the object does not exist at the time of the call, <b>waitfor</b> returns immediately.

<b>waitfor(obj, propertyName)</b> halts execution until the specified property of the object changes or the object is closed. For example, <b>waitfor(hFig, 'UserData')</b> pauses execution until the 'UserData' property of <b>hFig</b> changes. If the specified property name is invalid, an error stops execution.

<b>waitfor(obj, propertyName, propertyValue)</b> pauses execution until the specified property of the object changes to the given value. If the property is already equal to propvalue when <b>waitfor</b> is called, it returns immediately, allowing execution to resume.

## 💡 Examples

```matlab
h = figure()
waitfor(h);
% close figure to continue

```

```matlab
hFig = figure('Position', [300, 300, 300, 150]);
hButton = uicontrol('Style', 'togglebutton', 'String', 'Toggle Me', 'Position', [100, 50, 100, 40], 'Value', 0);
hButton.Callback = @(src, event) set(src, 'Value', 1);
waitfor(hButton, 'Value');
% press toggle button

```

```matlab
hFig = figure('Position', [300, 300, 300, 150]);
hButton = uicontrol('Style', 'togglebutton', 'String', 'Toggle Me', 'Position', [100, 50, 100, 40], 'Value', 0);
hButton.Callback = @(src, event) set(src, 'Value', 1);
waitfor(hButton, 'Value', 1);
% press toggle button

```

## 🔗 See also

[figure](../graphics/figure.md), [waitforbuttonpress](../graphics/waitforbuttonpress.md), [pause](../core/pause.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.7.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
