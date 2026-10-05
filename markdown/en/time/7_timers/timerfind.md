# timerfind

Find visible timer objects that match property criteria.

## 📝 Syntax

- out = timerfind()
- out = timerfind('PropertyName', PropertyValue, ...)
- out = timerfind(t, 'PropertyName', PropertyValue, ...)
- out = timerfind(values)

## 📥 Input argument

- t - Timer object array used as the search source.
- PropertyName, PropertyValue - Property criteria. Returned timers must match all requested values.
- values - Scalar structure whose fields contain property criteria.

## 📤 Output argument

- out - Array of matching timer objects whose <b>ObjectVisibility</b> property is <b>on</b>.

## 📄 Description


<b>timerfind</b> returns visible timer objects that match all specified property criteria. Without criteria, it returns all visible timers. 

Use <b>timerfindall</b> to include timers whose <b>ObjectVisibility</b> property is <b>off</b>.

## 💡 Examples

Find a visible timer by tag.

```matlab
t = timer('Name', 'visibleTimer', ...
  'Tag', 'demo-visible', ...
  'TimerFcn', @(src, event) disp('visible'));
found = timerfind('Tag', 'demo-visible')
delete(t);
```
Search within a supplied timer array.

```matlab
t1 = timer('Tag', 'groupA', 'TimerFcn', @(src, event) disp('a'));
t2 = timer('Tag', 'groupB', 'TimerFcn', @(src, event) disp('b'));
found = timerfind([t1 t2], 'Tag', 'groupB')
delete([t1 t2]);
```


## 🔗 See also

[timer](../../time/7_timers/timer.md), [timerfindall](../../time/7_timers/timerfindall.md), [get](../../time/7_timers/timer.get.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
