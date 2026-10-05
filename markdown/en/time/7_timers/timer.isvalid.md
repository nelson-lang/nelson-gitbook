# timer.isvalid

Determine which timer handles are valid.

## 📝 Syntax

- tf = isvalid(t)

## 📥 Input argument

- t - Timer object or timer object array.

## 📤 Output argument

- tf - Logical array with the same size as <b>t</b>. Values are true for valid timer handles and false for deleted timer handles.

## 📄 Description


<b>isvalid</b> checks whether timer handles still refer to live timer objects. Calling <b>delete</b> on a timer invalidates the handle.

## 💡 Example

Check a timer handle before and after deletion.

```matlab
t = timer('TimerFcn', @(src, event) disp('timer'));
beforeDelete = isvalid(t)
delete(t);
afterDelete = isvalid(t)
```


## 🔗 See also

[timer](../../time/7_timers/timer.md), [delete](../../time/7_timers/timer.delete.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
