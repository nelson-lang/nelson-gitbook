#import "nelson_help.typ": *

= Date and Time

The Time Functions module provides tools for working with dates, times, and durations in Nelson.

 It supports querying the current time, measuring elapsed time, performing calculations on dates and times, converting between different time representations, and handling calendar-specific operations such as leap years and month-end calculations.

 This module enables precise time management, scheduling, and performance measurement in scripts and applications.

== Create Date and Time Arrays

Functions for creating date and time values and alternate date representations.

=== Functions

- #nlink(<time:1_create_date_time_arrays.NaT>)[NaT]: Create not-a-time datetime values.
- #nlink(<time:1_create_date_time_arrays.calendar>)[calendar]: Calendar.
- #nlink(<time:1_create_date_time_arrays.clock>)[clock]: Return the current local date and time as a date vector.
- #nlink(<time:1_create_date_time_arrays.date>)[date]: Return the Current date as character vector.
- #nlink(<time:1_create_date_time_arrays.datenum>)[datenum]: Return the date\/time input as a serial day number.
- #nlink(<time:1_create_date_time_arrays.datetime>)[datetime]: Create datetime arrays from calendar parts, text, or numeric date representations.
- #nlink(<time:1_create_date_time_arrays.datevec>)[datevec]: Convert a serial date number into a date vector.
- #nlink(<time:1_create_date_time_arrays.eomdate>)[eomdate]: Return the serial date number of the last day in a month.
- #nlink(<time:1_create_date_time_arrays.eomday>)[eomday]: Returns last day of month.
- #nlink(<time:1_create_date_time_arrays.lweekdate>)[lweekdate]: Return the last selected weekday in a month.
- #nlink(<time:1_create_date_time_arrays.now>)[now]: Returns current date under the form of a Unix hour.
- #nlink(<time:1_create_date_time_arrays.nweekdate>)[nweekdate]: Return the nth selected weekday in a month.
- #nlink(<time:1_create_date_time_arrays.today>)[today]: Return the serial date number for the current day.

== Duration and Calendar Duration

Functions for fixed-length and calendar-based durations.

=== Functions

- #nlink(<time:2_duration_calendar_duration.caldays>)[caldays]: Create calendar durations containing whole days.
- #nlink(<time:2_duration_calendar_duration.calendarDuration>)[calendarDuration]: Create calendar durations with month, day, and time components.
- #nlink(<time:2_duration_calendar_duration.calmonths>)[calmonths]: Create calendar durations containing calendar months.
- #nlink(<time:2_duration_calendar_duration.calquarters>)[calquarters]: Create calendar durations containing calendar quarters.
- #nlink(<time:2_duration_calendar_duration.calweeks>)[calweeks]: Create calendar durations containing whole weeks.
- #nlink(<time:2_duration_calendar_duration.calyears>)[calyears]: Create calendar durations containing calendar years.
- #nlink(<time:2_duration_calendar_duration.days>)[days]: Create durations from days or convert durations to days.
- #nlink(<time:2_duration_calendar_duration.duration>)[duration]: Create elapsed time durations.
- #nlink(<time:2_duration_calendar_duration.hours>)[hours]: Create durations from hours or convert durations to hours.
- #nlink(<time:2_duration_calendar_duration.milliseconds>)[milliseconds]: Create durations from milliseconds or convert durations to milliseconds.
- #nlink(<time:2_duration_calendar_duration.minutes>)[minutes]: Create durations from minutes or convert durations to minutes.
- #nlink(<time:2_duration_calendar_duration.seconds>)[seconds]: Create durations from seconds or extract seconds from durations.
- #nlink(<time:2_duration_calendar_duration.years>)[years]: Create durations from years or convert durations to years.

== Date and Time Components

Functions for extracting and splitting date and time components.

=== Functions

- #nlink(<time:3_date_time_components.day>)[day]: Extract day information from date and time values.
- #nlink(<time:3_date_time_components.hms>)[hms]: Split datetime or duration values into hour, minute, and second components.
- #nlink(<time:3_date_time_components.hour>)[hour]: Hours part of the input date and time.
- #nlink(<time:3_date_time_components.minute>)[minute]: Minutes part of the input date and time.
- #nlink(<time:3_date_time_components.month>)[month]: Extract month numbers or names from date and time values.
- #nlink(<time:3_date_time_components.quarter>)[quarter]: Extract quarter numbers from date and time values.
- #nlink(<time:3_date_time_components.second>)[second]: Seconds part of the input date and time.
- #nlink(<time:3_date_time_components.timeofday>)[timeofday]: Return the elapsed time since midnight for datetime values.
- #nlink(<time:3_date_time_components.week>)[week]: Compute week numbers within the calendar year.
- #nlink(<time:3_date_time_components.weekday>)[weekday]: Return the day of week.
- #nlink(<time:3_date_time_components.weeknum>)[weeknum]: Return week numbers within the calendar year.
- #nlink(<time:3_date_time_components.year>)[year]: Extract year numbers from date and time values.
- #nlink(<time:3_date_time_components.ymd>)[ymd]: Split datetime values into year, month, and day components.

== Date Arithmetic and Ranges

Functions for date shifts, differences, ranges, and elapsed time.

=== Functions

- #nlink(<time:4_date_arithmetic_ranges.addtodate>)[addtodate]: Modify date number by field.
- #nlink(<time:4_date_arithmetic_ranges.between>)[between]: Return calendar durations between two datetime values.
- #nlink(<time:4_date_arithmetic_ranges.caldiff>)[caldiff]: Return calendar differences between adjacent datetime values.
- #nlink(<time:4_date_arithmetic_ranges.dateshift>)[dateshift]: Shift datetime values to calendar boundaries or selected weekdays.
- #nlink(<time:4_date_arithmetic_ranges.etime>)[etime]: Time elapsed between date vectors.
- #nlink(<time:4_date_arithmetic_ranges.isbetween>)[isbetween]: Test whether datetime values lie inside an interval.
- #nlink(<time:4_date_arithmetic_ranges.months>)[months]: Return whole calendar months between two dates.

== Query Date and Time Arrays

Predicates and query functions for date, time, duration, and timezone data.

=== Functions

- #nlink(<time:5_query_date_time_arrays.iscalendarduration>)[iscalendarduration]: Test whether an input is a calendarDuration array.
- #nlink(<time:5_query_date_time_arrays.isdatetime>)[isdatetime]: Test whether an input is a datetime array.
- #nlink(<time:5_query_date_time_arrays.isdst>)[isdst]: Test whether timezone-aware datetime values are in daylight saving time.
- #nlink(<time:5_query_date_time_arrays.isduration>)[isduration]: Test whether an input is a duration array.
- #nlink(<time:5_query_date_time_arrays.isnat>)[isnat]: Test datetime values for not-a-time elements.
- #nlink(<time:5_query_date_time_arrays.isregular>)[isregular]: Test whether datetime values are regularly spaced.
- #nlink(<time:5_query_date_time_arrays.istimeseries>)[istimeseries]: Determine whether input is a timeseries object.
- #nlink(<time:5_query_date_time_arrays.isweekend>)[isweekend]: Test whether date values fall on Saturday or Sunday.
- #nlink(<time:5_query_date_time_arrays.leapseconds>)[leapseconds]: Return leap second data available to the time module.
- #nlink(<time:5_query_date_time_arrays.leapyear>)[leapyear]: Determine leap year.
- #nlink(<time:5_query_date_time_arrays.timezones>)[timezones]: List timezone names available in the embedded timezone data.
- #nlink(<time:5_query_date_time_arrays.tzoffset>)[tzoffset]: Return UTC offsets for timezone-aware datetime values.

== Text and External Time Systems

Conversions between date and time values, text, and external numeric time systems.

=== Functions

- #nlink(<time:6_text_and_external_time_systems.convertTo>)[convertTo]: Convert datetime values to selected numeric representations.
- #nlink(<time:6_text_and_external_time_systems.datestr>)[datestr]: Convert date and time to string format.
- #nlink(<time:6_text_and_external_time_systems.exceltime>)[exceltime]: Convert datetime values to spreadsheet serial date numbers.
- #nlink(<time:6_text_and_external_time_systems.juliandate>)[juliandate]: Convert datetime values to Julian date numbers.
- #nlink(<time:6_text_and_external_time_systems.m2xdate>)[m2xdate]: Convert Nelson serial dates to spreadsheet serial date numbers.
- #nlink(<time:6_text_and_external_time_systems.posixtime>)[posixtime]: Convert datetime values to seconds elapsed since the POSIX epoch.
- #nlink(<time:6_text_and_external_time_systems.x2mdate>)[x2mdate]: Convert spreadsheet serial date numbers to Nelson serial dates or datetime values.
- #nlink(<time:6_text_and_external_time_systems.yyyymmdd>)[yyyymmdd]: Convert date values to numeric yyyymmdd calendar dates.

== Timers and Timing

Timer objects, scheduling, waits, and timing utilities.

=== Functions

- #nlink(<time:7_timers.cputime>)[cputime]: Return the CPU time used by your Nelon session.
- #nlink(<time:7_timers.sleep>)[sleep]: Suspend code execution.
- #nlink(<time:7_timers.start>)[start]: Start a timer object.
- #nlink(<time:7_timers.start>)[timer.start]: Start a timer object.
- #nlink(<time:7_timers.startat>)[startat]: Start a timer at a specified date and time.
- #nlink(<time:7_timers.startat>)[timer.startat]: Start a timer at a specified date and time.
- #nlink(<time:7_timers.stop>)[stop]: Stop a running timer object.
- #nlink(<time:7_timers.stop>)[timer.stop]: Stop a running timer object.
- #nlink(<time:7_timers.tic>)[tic]: Starts a stopwatch timer.
- #nlink(<time:7_timers.time>)[time]: Return the current time as the number of seconds or nanoseconds since the epoch.
- #nlink(<time:7_timers.timeit>)[timeit]: Measure time required to run function.
- #nlink(<time:7_timers.timer.delete>)[timer.delete]: Stop and invalidate timer objects.
- #nlink(<time:7_timers.timer.delete>)[delete timer]: Stop and invalidate timer objects.
- #nlink(<time:7_timers.timer.get>)[timer.get]: Get timer property values.
- #nlink(<time:7_timers.timer.get>)[get timer]: Get timer property values.
- #nlink(<time:7_timers.timer.isvalid>)[timer.isvalid]: Determine which timer handles are valid.
- #nlink(<time:7_timers.timer.isvalid>)[isvalid timer]: Determine which timer handles are valid.
- #nlink(<time:7_timers.timer.set>)[timer.set]: Set timer property values.
- #nlink(<time:7_timers.timer.set>)[set timer]: Set timer property values.
- #nlink(<time:7_timers.timer>)[timer]: Create a timer object that runs commands after a delay or at repeated intervals.
- #nlink(<time:7_timers.timer>)[timer object]: Create a timer object that runs commands after a delay or at repeated intervals.
- #nlink(<time:7_timers.timer_callback_functions>)[Timer Callback Functions]: Define commands that execute when timer events occur.
- #nlink(<time:7_timers.timer_callback_functions>)[timer callback functions]: Define commands that execute when timer events occur.
- #nlink(<time:7_timers.timer_callback_functions>)[timer callbacks]: Define commands that execute when timer events occur.
- #nlink(<time:7_timers.timer_queuing_conflicts>)[Timer Queuing Conflicts]: Control what happens when timer callbacks are still queued when a fixed-rate timer fires again.
- #nlink(<time:7_timers.timer_queuing_conflicts>)[handling timer queuing conflicts]: Control what happens when timer callbacks are still queued when a fixed-rate timer fires again.
- #nlink(<time:7_timers.timer_queuing_conflicts>)[timer busy mode]: Control what happens when timer callbacks are still queued when a fixed-rate timer fires again.
- #nlink(<time:7_timers.timerfind>)[timerfind]: Find visible timer objects that match property criteria.
- #nlink(<time:7_timers.timerfindall>)[timerfindall]: Find all timer objects that match property criteria, including hidden timers.
- #nlink(<time:7_timers.toc>)[toc]: Read the stopwatch timer.
- #nlink(<time:7_timers.wait>)[wait]: Wait for timer objects to stop.
- #nlink(<time:7_timers.wait>)[timer.wait]: Wait for timer objects to stop.

== Time Series

Time series, time series collections, events, metadata, and related operations.

=== Functions

- #nlink(<time:8_timeseries.timeseries.addevent>)[timeseries.addevent]: Add an event to a timeseries object.
- #nlink(<time:8_timeseries.timeseries.addsample>)[timeseries.addsample]: Add one sample to a timeseries object.
- #nlink(<time:8_timeseries.timeseries.append>)[timeseries.append]: Append timeseries samples.
- #nlink(<time:8_timeseries.timeseries.delevent>)[timeseries.delevent]: Delete an event from a timeseries object.
- #nlink(<time:8_timeseries.timeseries.delsample>)[timeseries.delsample]: Delete samples from a timeseries object.
- #nlink(<time:8_timeseries.timeseries.detrend>)[timeseries.detrend]: Remove a trend from timeseries data.
- #nlink(<time:8_timeseries.timeseries.display>)[timeseries.display]: Display a timeseries object.
- #nlink(<time:8_timeseries.timeseries.eq>)[timeseries.eq]: Compare two timeseries objects for equality sample by sample.
- #nlink(<time:8_timeseries.timeseries.filter>)[timeseries.filter]: Filter timeseries data.
- #nlink(<time:8_timeseries.timeseries.get>)[timeseries.get]: Get a timeseries property value.
- #nlink(<time:8_timeseries.timeseries.getabstime>)[timeseries.getabstime]: Return absolute sample times.
- #nlink(<time:8_timeseries.timeseries.getdatasamples>)[timeseries.getdatasamples]: Return data samples by index.
- #nlink(<time:8_timeseries.timeseries.getdatasamplesize>)[timeseries.getdatasamplesize]: Return the size of one data sample.
- #nlink(<time:8_timeseries.timeseries.getinterpmethod>)[timeseries.getinterpmethod]: Return the interpolation method name.
- #nlink(<time:8_timeseries.timeseries.getqualitydesc>)[timeseries.getqualitydesc]: Return quality descriptions for quality codes.
- #nlink(<time:8_timeseries.timeseries.getsamples>)[timeseries.getsamples]: Return a timeseries subset by index.
- #nlink(<time:8_timeseries.timeseries.getsampleusingtime>)[timeseries.getsampleusingtime]: Return samples selected by time.
- #nlink(<time:8_timeseries.timeseries.gettsafteratevent>)[timeseries.gettsafteratevent]: Return samples at or after an event.
- #nlink(<time:8_timeseries.timeseries.gettsafterevent>)[timeseries.gettsafterevent]: Return samples after an event.
- #nlink(<time:8_timeseries.timeseries.gettsatevent>)[timeseries.gettsatevent]: Return samples at an event time.
- #nlink(<time:8_timeseries.timeseries.gettsbeforeatevent>)[timeseries.gettsbeforeatevent]: Return samples at or before an event.
- #nlink(<time:8_timeseries.timeseries.gettsbeforeevent>)[timeseries.gettsbeforeevent]: Return samples before an event.
- #nlink(<time:8_timeseries.timeseries.gettsbetweenevents>)[timeseries.gettsbetweenevents]: Return samples between two events.
- #nlink(<time:8_timeseries.timeseries.idealfilter>)[timeseries.idealfilter]: Apply an ideal frequency-domain filter to timeseries data.
- #nlink(<time:8_timeseries.timeseries.iqr>)[timeseries.iqr]: Interquartile range of timeseries data.
- #nlink(<time:8_timeseries.timeseries.isequalwithequalnans>)[timeseries.isequalwithequalnans]: Compare timeseries objects treating missing numeric values as equal.
- #nlink(<time:8_timeseries.timeseries.ldivide>)[timeseries.ldivide]: Element-wise left division of timeseries data.
- #nlink(<time:8_timeseries.timeseries.loadobj>)[timeseries.loadobj]: Restore a timeseries object from saved data.
- #nlink(<time:8_timeseries.timeseries.max>)[timeseries.max]: Maximum of timeseries data.
- #nlink(<time:8_timeseries.timeseries.mean>)[timeseries.mean]: Mean of timeseries data.
- #nlink(<time:8_timeseries.timeseries.median>)[timeseries.median]: Median of timeseries data.
- #nlink(<time:8_timeseries.timeseries.min>)[timeseries.min]: Minimum of timeseries data.
- #nlink(<time:8_timeseries.timeseries.minus>)[timeseries.minus]: Subtract timeseries data.
- #nlink(<time:8_timeseries.timeseries.mldivide>)[timeseries.mldivide]: Matrix left division for timeseries data.
- #nlink(<time:8_timeseries.timeseries.mode>)[timeseries.mode]: Mode of timeseries data.
- #nlink(<time:8_timeseries.timeseries.mrdivide>)[timeseries.mrdivide]: Matrix right division for timeseries data.
- #nlink(<time:8_timeseries.timeseries.mtimes>)[timeseries.mtimes]: Matrix multiplication for timeseries data.
- #nlink(<time:8_timeseries.timeseries.plot>)[timeseries.plot]: Plot timeseries data against time.
- #nlink(<time:8_timeseries.timeseries.plus>)[timeseries.plus]: Add timeseries data.
- #nlink(<time:8_timeseries.timeseries.rdivide>)[timeseries.rdivide]: Element-wise right division of timeseries data.
- #nlink(<time:8_timeseries.timeseries.resample>)[timeseries.resample]: Resample a timeseries object at new times.
- #nlink(<time:8_timeseries.timeseries.set>)[timeseries.set]: Set timeseries property values.
- #nlink(<time:8_timeseries.timeseries.setabstime>)[timeseries.setabstime]: Set the absolute start date for sample times.
- #nlink(<time:8_timeseries.timeseries.setinterpmethod>)[timeseries.setinterpmethod]: Set the interpolation method.
- #nlink(<time:8_timeseries.timeseries.setuniformtime>)[timeseries.setuniformtime]: Set a uniformly spaced time vector.
- #nlink(<time:8_timeseries.timeseries.std>)[timeseries.std]: Standard deviation of timeseries data.
- #nlink(<time:8_timeseries.timeseries.sum>)[timeseries.sum]: Sum of timeseries data.
- #nlink(<time:8_timeseries.timeseries.synchronize>)[timeseries.synchronize]: Synchronize two or more timeseries objects.
- #nlink(<time:8_timeseries.timeseries.times>)[timeseries.times]: Element-wise multiplication of timeseries data.
- #nlink(<time:8_timeseries.timeseries.uminus>)[timeseries.uminus]: Negate timeseries data.
- #nlink(<time:8_timeseries.timeseries.uplus>)[timeseries.uplus]: Unary plus for timeseries data.
- #nlink(<time:8_timeseries.timeseries.var>)[timeseries.var]: Variance of timeseries data.
- #nlink(<time:8_timeseries.timeseries>)[timeseries]: Create time series data.
- #nlink(<time:8_timeseries.tscollection.addsampletocollection>)[tscollection.addsampletocollection]: Time series helper function.
- #nlink(<time:8_timeseries.tscollection.addts>)[tscollection.addts]: Time series helper function.
- #nlink(<time:8_timeseries.tscollection.delsamplefromcollection>)[tscollection.delsamplefromcollection]: Time series helper function.
- #nlink(<time:8_timeseries.tscollection.display>)[tscollection.display]: Display a time series collection object.
- #nlink(<time:8_timeseries.tscollection.get>)[tscollection.get]: Time series object function.
- #nlink(<time:8_timeseries.tscollection.getabstime>)[tscollection.getabstime]: Time series helper function.
- #nlink(<time:8_timeseries.tscollection.getsampleusingtime>)[tscollection.getsampleusingtime]: Time series helper function.
- #nlink(<time:8_timeseries.tscollection.gettimeseriesnames>)[tscollection.gettimeseriesnames]: Time series helper function.
- #nlink(<time:8_timeseries.tscollection.horzcat>)[tscollection.horzcat]: Time series object function.
- #nlink(<time:8_timeseries.tscollection.loadobj>)[tscollection.loadobj]: Restore a time series collection object from saved data.
- #nlink(<time:8_timeseries.tscollection.properties>)[tscollection.properties]: Time series object function.
- #nlink(<time:8_timeseries.tscollection.removets>)[tscollection.removets]: Time series helper function.
- #nlink(<time:8_timeseries.tscollection.resample>)[tscollection.resample]: Time series helper function.
- #nlink(<time:8_timeseries.tscollection.set>)[tscollection.set]: Time series object function.
- #nlink(<time:8_timeseries.tscollection.setTimeseriesName>)[tscollection.setTimeseriesName]: Time series object function.
- #nlink(<time:8_timeseries.tscollection.setabstime>)[tscollection.setabstime]: Time series helper function.
- #nlink(<time:8_timeseries.tscollection.settimeseriesnames>)[tscollection.settimeseriesnames]: Time series object function.
- #nlink(<time:8_timeseries.tscollection.vertcat>)[tscollection.vertcat]: Time series object function.
- #nlink(<time:8_timeseries.tscollection>)[tscollection]: Create a collection of aligned time series.
- #nlink(<time:8_timeseries.tsdata.datametadata>)[tsdata.datametadata]: Time series object function.
- #nlink(<time:8_timeseries.tsdata.event>)[tsdata.event]: Time series object function.
- #nlink(<time:8_timeseries.tsdata.interpolation>)[tsdata.interpolation]: Time series object function.
- #nlink(<time:8_timeseries.tsdata.qualmetadata>)[tsdata.qualmetadata]: Time series object function.
- #nlink(<time:8_timeseries.tsdata.timemetadata>)[tsdata.timemetadata]: Time series object function.


#nested[
#pagebreak(weak: true)
#include "1_create_date_time_arrays/NaT.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/calendar.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/clock.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/date.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/datenum.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/datetime.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/datevec.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/eomdate.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/eomday.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/lweekdate.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/now.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/nweekdate.typ"
#pagebreak(weak: true)
#include "1_create_date_time_arrays/today.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/caldays.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/calendarDuration.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/calmonths.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/calquarters.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/calweeks.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/calyears.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/days.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/duration.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/hours.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/milliseconds.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/minutes.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/seconds.typ"
#pagebreak(weak: true)
#include "2_duration_calendar_duration/years.typ"
#pagebreak(weak: true)
#include "3_date_time_components/day.typ"
#pagebreak(weak: true)
#include "3_date_time_components/hms.typ"
#pagebreak(weak: true)
#include "3_date_time_components/hour.typ"
#pagebreak(weak: true)
#include "3_date_time_components/minute.typ"
#pagebreak(weak: true)
#include "3_date_time_components/month.typ"
#pagebreak(weak: true)
#include "3_date_time_components/quarter.typ"
#pagebreak(weak: true)
#include "3_date_time_components/second.typ"
#pagebreak(weak: true)
#include "3_date_time_components/timeofday.typ"
#pagebreak(weak: true)
#include "3_date_time_components/week.typ"
#pagebreak(weak: true)
#include "3_date_time_components/weekday.typ"
#pagebreak(weak: true)
#include "3_date_time_components/weeknum.typ"
#pagebreak(weak: true)
#include "3_date_time_components/year.typ"
#pagebreak(weak: true)
#include "3_date_time_components/ymd.typ"
#pagebreak(weak: true)
#include "4_date_arithmetic_ranges/addtodate.typ"
#pagebreak(weak: true)
#include "4_date_arithmetic_ranges/between.typ"
#pagebreak(weak: true)
#include "4_date_arithmetic_ranges/caldiff.typ"
#pagebreak(weak: true)
#include "4_date_arithmetic_ranges/dateshift.typ"
#pagebreak(weak: true)
#include "4_date_arithmetic_ranges/etime.typ"
#pagebreak(weak: true)
#include "4_date_arithmetic_ranges/isbetween.typ"
#pagebreak(weak: true)
#include "4_date_arithmetic_ranges/months.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/iscalendarduration.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/isdatetime.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/isdst.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/isduration.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/isnat.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/isregular.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/istimeseries.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/isweekend.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/leapseconds.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/leapyear.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/timezones.typ"
#pagebreak(weak: true)
#include "5_query_date_time_arrays/tzoffset.typ"
#pagebreak(weak: true)
#include "6_text_and_external_time_systems/convertTo.typ"
#pagebreak(weak: true)
#include "6_text_and_external_time_systems/datestr.typ"
#pagebreak(weak: true)
#include "6_text_and_external_time_systems/exceltime.typ"
#pagebreak(weak: true)
#include "6_text_and_external_time_systems/juliandate.typ"
#pagebreak(weak: true)
#include "6_text_and_external_time_systems/m2xdate.typ"
#pagebreak(weak: true)
#include "6_text_and_external_time_systems/posixtime.typ"
#pagebreak(weak: true)
#include "6_text_and_external_time_systems/x2mdate.typ"
#pagebreak(weak: true)
#include "6_text_and_external_time_systems/yyyymmdd.typ"
#pagebreak(weak: true)
#include "7_timers/cputime.typ"
#pagebreak(weak: true)
#include "7_timers/sleep.typ"
#pagebreak(weak: true)
#include "7_timers/start.typ"
#pagebreak(weak: true)
#include "7_timers/startat.typ"
#pagebreak(weak: true)
#include "7_timers/stop.typ"
#pagebreak(weak: true)
#include "7_timers/tic.typ"
#pagebreak(weak: true)
#include "7_timers/time.typ"
#pagebreak(weak: true)
#include "7_timers/timeit.typ"
#pagebreak(weak: true)
#include "7_timers/timer.delete.typ"
#pagebreak(weak: true)
#include "7_timers/timer.get.typ"
#pagebreak(weak: true)
#include "7_timers/timer.isvalid.typ"
#pagebreak(weak: true)
#include "7_timers/timer.set.typ"
#pagebreak(weak: true)
#include "7_timers/timer.typ"
#pagebreak(weak: true)
#include "7_timers/timer_callback_functions.typ"
#pagebreak(weak: true)
#include "7_timers/timer_queuing_conflicts.typ"
#pagebreak(weak: true)
#include "7_timers/timerfind.typ"
#pagebreak(weak: true)
#include "7_timers/timerfindall.typ"
#pagebreak(weak: true)
#include "7_timers/toc.typ"
#pagebreak(weak: true)
#include "7_timers/wait.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.addevent.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.addsample.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.append.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.delevent.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.delsample.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.detrend.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.display.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.eq.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.filter.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.get.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.getabstime.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.getdatasamples.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.getdatasamplesize.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.getinterpmethod.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.getqualitydesc.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.getsamples.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.getsampleusingtime.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.gettsafteratevent.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.gettsafterevent.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.gettsatevent.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.gettsbeforeatevent.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.gettsbeforeevent.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.gettsbetweenevents.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.idealfilter.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.iqr.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.isequalwithequalnans.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.ldivide.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.loadobj.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.max.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.mean.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.median.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.min.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.minus.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.mldivide.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.mode.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.mrdivide.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.mtimes.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.plot.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.plus.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.rdivide.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.resample.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.set.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.setabstime.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.setinterpmethod.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.setuniformtime.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.std.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.sum.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.synchronize.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.times.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.uminus.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.uplus.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.var.typ"
#pagebreak(weak: true)
#include "8_timeseries/timeseries.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.addsampletocollection.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.addts.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.delsamplefromcollection.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.display.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.get.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.getabstime.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.getsampleusingtime.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.gettimeseriesnames.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.horzcat.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.loadobj.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.properties.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.removets.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.resample.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.set.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.setTimeseriesName.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.setabstime.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.settimeseriesnames.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.vertcat.typ"
#pagebreak(weak: true)
#include "8_timeseries/tscollection.typ"
#pagebreak(weak: true)
#include "8_timeseries/tsdata.datametadata.typ"
#pagebreak(weak: true)
#include "8_timeseries/tsdata.event.typ"
#pagebreak(weak: true)
#include "8_timeseries/tsdata.interpolation.typ"
#pagebreak(weak: true)
#include "8_timeseries/tsdata.qualmetadata.typ"
#pagebreak(weak: true)
#include "8_timeseries/tsdata.timemetadata.typ"
]
