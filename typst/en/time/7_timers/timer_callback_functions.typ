#import "../nelson_help.typ": *

= Timer Callback Functions <time:7_timers.timer_callback_functions>

Define commands that execute when timer events occur.

== Description

Timer callbacks can be delayed when another callback or a CPU-intensive task is already running.

 A timer object has four callback properties. #strong[StartFcn]; runs when the timer starts. #strong[TimerFcn]; runs when the timer fires. #strong[StopFcn]; runs when the timer stops normally or after an error. #strong[ErrorFcn]; runs when a timer callback reports an error.

 Set a callback property to one of these values:

 

#table(
  columns: 2,
  [Value], [Use], 
  [Function handle], [Use a function that accepts the timer object and an event structure, for example #strong[\@myTimerFcn]; or #strong[\@(src,event)disp(event.Type)];.], 
  [Cell array], [Pass extra arguments after the timer object and event structure. The first cell element is the function handle, followed by the extra arguments.], 
  [Character vector or string scalar], [Evaluate Nelson commands directly. These callbacks do not receive the timer object or event structure as input arguments.], 
)
 Callback functions specified by function handle or cell array receive the timer object as the first input argument and an event structure as the second input argument. The event structure has a #strong[Type]; field and a #strong[Data]; field. #strong[Type]; is one of #strong[StartFcn];, #strong[TimerFcn];, #strong[StopFcn];, or #strong[ErrorFcn];. #strong[Data.time]; contains the event time as a serial date number.

 For callbacks with application-specific arguments, use a cell array. Nelson calls the function with the timer object, the event structure, and then the extra arguments in the same order as they appear in the cell array.


== Examples

Display the event type from a timer callback.

``````matlab
t = timer('StartDelay', 0.1, ...
  'TimerFcn', @(src, event) disp(event.Type));
start(t);
wait(t);
delete(t);
``````

Pass an extra argument to a callback by using a cell array.

``````matlab
t = timer('TimerFcn', {@dispTimerMessage, 'timer fired'});
start(t);
wait(t);
delete(t);

function dispTimerMessage(src, event, message)
  disp([event.Type, ': ', message]);
end
``````


== See also

#nlink(<time:7_timers.timer>)[timer];, #nlink(<time:7_timers.start>)[start];, #nlink(<time:7_timers.stop>)[stop];, #nlink(<time:7_timers.wait>)[wait];, #nlink(<time:7_timers.timer_queuing_conflicts>)[Timer Queuing Conflicts];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
