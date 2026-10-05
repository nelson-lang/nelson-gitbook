# Date and Time


    
The Time Functions module provides tools for working with dates, times, and durations in Nelson.

    
It supports querying the current time, measuring elapsed time, performing calculations on dates and times, converting between different time representations, and handling calendar-specific operations such as leap years and month-end calculations.

    
This module enables precise time management, scheduling, and performance measurement in scripts and applications.

  

## Create Date and Time Arrays


    
Functions for creating date and time values and alternate date representations.

  

### Functions

- [NaT](1_create_date_time_arrays/NaT.md) - Create not-a-time datetime values.
- [calendar](1_create_date_time_arrays/calendar.md) - Calendar.
- [clock](1_create_date_time_arrays/clock.md) - Return the current local date and time as a date vector.
- [date](1_create_date_time_arrays/date.md) - Return the Current date as character vector.
- [datenum](1_create_date_time_arrays/datenum.md) - Return the date/time input as a serial day number.
- [datetime](1_create_date_time_arrays/datetime.md) - Create datetime arrays from calendar parts, text, or numeric date representations.
- [datevec](1_create_date_time_arrays/datevec.md) - Convert a serial date number into a date vector.
- [eomdate](1_create_date_time_arrays/eomdate.md) - Return the serial date number of the last day in a month.
- [eomday](1_create_date_time_arrays/eomday.md) - Returns last day of month.
- [lweekdate](1_create_date_time_arrays/lweekdate.md) - Return the last selected weekday in a month.
- [now](1_create_date_time_arrays/now.md) - Returns current date under the form of a Unix hour.
- [nweekdate](1_create_date_time_arrays/nweekdate.md) - Return the nth selected weekday in a month.
- [today](1_create_date_time_arrays/today.md) - Return the serial date number for the current day.

## Duration and Calendar Duration


    
Functions for fixed-length and calendar-based durations.

  

### Functions

- [caldays](2_duration_calendar_duration/caldays.md) - Create calendar durations containing whole days.
- [calendarDuration](2_duration_calendar_duration/calendarDuration.md) - Create calendar durations with month, day, and time components.
- [calmonths](2_duration_calendar_duration/calmonths.md) - Create calendar durations containing calendar months.
- [calquarters](2_duration_calendar_duration/calquarters.md) - Create calendar durations containing calendar quarters.
- [calweeks](2_duration_calendar_duration/calweeks.md) - Create calendar durations containing whole weeks.
- [calyears](2_duration_calendar_duration/calyears.md) - Create calendar durations containing calendar years.
- [days](2_duration_calendar_duration/days.md) - Create durations from days or convert durations to days.
- [duration](2_duration_calendar_duration/duration.md) - Create elapsed time durations.
- [hours](2_duration_calendar_duration/hours.md) - Create durations from hours or convert durations to hours.
- [milliseconds](2_duration_calendar_duration/milliseconds.md) - Create durations from milliseconds or convert durations to milliseconds.
- [minutes](2_duration_calendar_duration/minutes.md) - Create durations from minutes or convert durations to minutes.
- [seconds](2_duration_calendar_duration/seconds.md) - Create durations from seconds or extract seconds from durations.
- [years](2_duration_calendar_duration/years.md) - Create durations from years or convert durations to years.

## Date and Time Components


    
Functions for extracting and splitting date and time components.

  

### Functions

- [day](3_date_time_components/day.md) - Extract day information from date and time values.
- [hms](3_date_time_components/hms.md) - Split datetime or duration values into hour, minute, and second components.
- [hour](3_date_time_components/hour.md) - Hours part of the input date and time.
- [minute](3_date_time_components/minute.md) - Minutes part of the input date and time.
- [month](3_date_time_components/month.md) - Extract month numbers or names from date and time values.
- [quarter](3_date_time_components/quarter.md) - Extract quarter numbers from date and time values.
- [second](3_date_time_components/second.md) - Seconds part of the input date and time.
- [timeofday](3_date_time_components/timeofday.md) - Return the elapsed time since midnight for datetime values.
- [week](3_date_time_components/week.md) - Compute week numbers within the calendar year.
- [weekday](3_date_time_components/weekday.md) - Return the day of week.
- [weeknum](3_date_time_components/weeknum.md) - Return week numbers within the calendar year.
- [year](3_date_time_components/year.md) - Extract year numbers from date and time values.
- [ymd](3_date_time_components/ymd.md) - Split datetime values into year, month, and day components.

## Date Arithmetic and Ranges


    
Functions for date shifts, differences, ranges, and elapsed time.

  

### Functions

- [addtodate](4_date_arithmetic_ranges/addtodate.md) - Modify date number by field.
- [between](4_date_arithmetic_ranges/between.md) - Return calendar durations between two datetime values.
- [caldiff](4_date_arithmetic_ranges/caldiff.md) - Return calendar differences between adjacent datetime values.
- [dateshift](4_date_arithmetic_ranges/dateshift.md) - Shift datetime values to calendar boundaries or selected weekdays.
- [etime](4_date_arithmetic_ranges/etime.md) - Time elapsed between date vectors.
- [isbetween](4_date_arithmetic_ranges/isbetween.md) - Test whether datetime values lie inside an interval.
- [months](4_date_arithmetic_ranges/months.md) - Return whole calendar months between two dates.

## Query Date and Time Arrays


    
Predicates and query functions for date, time, duration, and timezone data.

  

### Functions

- [iscalendarduration](5_query_date_time_arrays/iscalendarduration.md) - Test whether an input is a calendarDuration array.
- [isdatetime](5_query_date_time_arrays/isdatetime.md) - Test whether an input is a datetime array.
- [isdst](5_query_date_time_arrays/isdst.md) - Test whether timezone-aware datetime values are in daylight saving time.
- [isduration](5_query_date_time_arrays/isduration.md) - Test whether an input is a duration array.
- [isnat](5_query_date_time_arrays/isnat.md) - Test datetime values for not-a-time elements.
- [isregular](5_query_date_time_arrays/isregular.md) - Test whether datetime values are regularly spaced.
- [istimeseries](5_query_date_time_arrays/istimeseries.md) - Determine whether input is a timeseries object.
- [isweekend](5_query_date_time_arrays/isweekend.md) - Test whether date values fall on Saturday or Sunday.
- [leapseconds](5_query_date_time_arrays/leapseconds.md) - Return leap second data available to the time module.
- [leapyear](5_query_date_time_arrays/leapyear.md) - Determine leap year.
- [timezones](5_query_date_time_arrays/timezones.md) - List timezone names available in the embedded timezone data.
- [tzoffset](5_query_date_time_arrays/tzoffset.md) - Return UTC offsets for timezone-aware datetime values.

## Text and External Time Systems


    
Conversions between date and time values, text, and external numeric time systems.

  

### Functions

- [convertTo](6_text_and_external_time_systems/convertTo.md) - Convert datetime values to selected numeric representations.
- [datestr](6_text_and_external_time_systems/datestr.md) - Convert date and time to string format.
- [exceltime](6_text_and_external_time_systems/exceltime.md) - Convert datetime values to spreadsheet serial date numbers.
- [juliandate](6_text_and_external_time_systems/juliandate.md) - Convert datetime values to Julian date numbers.
- [m2xdate](6_text_and_external_time_systems/m2xdate.md) - Convert Nelson serial dates to spreadsheet serial date numbers.
- [posixtime](6_text_and_external_time_systems/posixtime.md) - Convert datetime values to seconds elapsed since the POSIX epoch.
- [x2mdate](6_text_and_external_time_systems/x2mdate.md) - Convert spreadsheet serial date numbers to Nelson serial dates or datetime values.
- [yyyymmdd](6_text_and_external_time_systems/yyyymmdd.md) - Convert date values to numeric yyyymmdd calendar dates.

## Timers and Timing


    
Timer objects, scheduling, waits, and timing utilities.

  

### Functions

- [cputime](7_timers/cputime.md) - Return the CPU time used by your Nelon session.
- [sleep](7_timers/sleep.md) - Suspend code execution.
- [start](7_timers/start.md) - Start a timer object.
- [timer.start](7_timers/start.md) - Start a timer object.
- [startat](7_timers/startat.md) - Start a timer at a specified date and time.
- [timer.startat](7_timers/startat.md) - Start a timer at a specified date and time.
- [stop](7_timers/stop.md) - Stop a running timer object.
- [timer.stop](7_timers/stop.md) - Stop a running timer object.
- [tic](7_timers/tic.md) - Starts a stopwatch timer.
- [time](7_timers/time.md) - Return the current time as the number of seconds or nanoseconds since the epoch.
- [timeit](7_timers/timeit.md) - Measure time required to run function.
- [timer.delete](7_timers/timer.delete.md) - Stop and invalidate timer objects.
- [delete timer](7_timers/timer.delete.md) - Stop and invalidate timer objects.
- [timer.get](7_timers/timer.get.md) - Get timer property values.
- [get timer](7_timers/timer.get.md) - Get timer property values.
- [timer.isvalid](7_timers/timer.isvalid.md) - Determine which timer handles are valid.
- [isvalid timer](7_timers/timer.isvalid.md) - Determine which timer handles are valid.
- [timer.set](7_timers/timer.set.md) - Set timer property values.
- [set timer](7_timers/timer.set.md) - Set timer property values.
- [timer](7_timers/timer.md) - Create a timer object that runs commands after a delay or at repeated intervals.
- [timer object](7_timers/timer.md) - Create a timer object that runs commands after a delay or at repeated intervals.
- [Timer Callback Functions](7_timers/timer_callback_functions.md) - Define commands that execute when timer events occur.
- [timer callback functions](7_timers/timer_callback_functions.md) - Define commands that execute when timer events occur.
- [timer callbacks](7_timers/timer_callback_functions.md) - Define commands that execute when timer events occur.
- [Timer Queuing Conflicts](7_timers/timer_queuing_conflicts.md) - Control what happens when timer callbacks are still queued when a fixed-rate timer fires again.
- [handling timer queuing conflicts](7_timers/timer_queuing_conflicts.md) - Control what happens when timer callbacks are still queued when a fixed-rate timer fires again.
- [timer busy mode](7_timers/timer_queuing_conflicts.md) - Control what happens when timer callbacks are still queued when a fixed-rate timer fires again.
- [timerfind](7_timers/timerfind.md) - Find visible timer objects that match property criteria.
- [timerfindall](7_timers/timerfindall.md) - Find all timer objects that match property criteria, including hidden timers.
- [toc](7_timers/toc.md) - Read the stopwatch timer.
- [wait](7_timers/wait.md) - Wait for timer objects to stop.
- [timer.wait](7_timers/wait.md) - Wait for timer objects to stop.

## Time Series


    
Time series, time series collections, events, metadata, and related operations.

  

### Functions

- [timeseries.addevent](8_timeseries/timeseries.addevent.md) - Add an event to a timeseries object.
- [timeseries.addsample](8_timeseries/timeseries.addsample.md) - Add one sample to a timeseries object.
- [timeseries.append](8_timeseries/timeseries.append.md) - Append timeseries samples.
- [timeseries.delevent](8_timeseries/timeseries.delevent.md) - Delete an event from a timeseries object.
- [timeseries.delsample](8_timeseries/timeseries.delsample.md) - Delete samples from a timeseries object.
- [timeseries.detrend](8_timeseries/timeseries.detrend.md) - Remove a trend from timeseries data.
- [timeseries.display](8_timeseries/timeseries.display.md) - Display a timeseries object.
- [timeseries.eq](8_timeseries/timeseries.eq.md) - Compare two timeseries objects for equality sample by sample.
- [timeseries.filter](8_timeseries/timeseries.filter.md) - Filter timeseries data.
- [timeseries.get](8_timeseries/timeseries.get.md) - Get a timeseries property value.
- [timeseries.getabstime](8_timeseries/timeseries.getabstime.md) - Return absolute sample times.
- [timeseries.getdatasamples](8_timeseries/timeseries.getdatasamples.md) - Return data samples by index.
- [timeseries.getdatasamplesize](8_timeseries/timeseries.getdatasamplesize.md) - Return the size of one data sample.
- [timeseries.getinterpmethod](8_timeseries/timeseries.getinterpmethod.md) - Return the interpolation method name.
- [timeseries.getqualitydesc](8_timeseries/timeseries.getqualitydesc.md) - Return quality descriptions for quality codes.
- [timeseries.getsamples](8_timeseries/timeseries.getsamples.md) - Return a timeseries subset by index.
- [timeseries.getsampleusingtime](8_timeseries/timeseries.getsampleusingtime.md) - Return samples selected by time.
- [timeseries.gettsafteratevent](8_timeseries/timeseries.gettsafteratevent.md) - Return samples at or after an event.
- [timeseries.gettsafterevent](8_timeseries/timeseries.gettsafterevent.md) - Return samples after an event.
- [timeseries.gettsatevent](8_timeseries/timeseries.gettsatevent.md) - Return samples at an event time.
- [timeseries.gettsbeforeatevent](8_timeseries/timeseries.gettsbeforeatevent.md) - Return samples at or before an event.
- [timeseries.gettsbeforeevent](8_timeseries/timeseries.gettsbeforeevent.md) - Return samples before an event.
- [timeseries.gettsbetweenevents](8_timeseries/timeseries.gettsbetweenevents.md) - Return samples between two events.
- [timeseries.idealfilter](8_timeseries/timeseries.idealfilter.md) - Apply an ideal frequency-domain filter to timeseries data.
- [timeseries.iqr](8_timeseries/timeseries.iqr.md) - Interquartile range of timeseries data.
- [timeseries.isequalwithequalnans](8_timeseries/timeseries.isequalwithequalnans.md) - Compare timeseries objects treating missing numeric values as equal.
- [timeseries.ldivide](8_timeseries/timeseries.ldivide.md) - Element-wise left division of timeseries data.
- [timeseries.loadobj](8_timeseries/timeseries.loadobj.md) - Restore a timeseries object from saved data.
- [timeseries.max](8_timeseries/timeseries.max.md) - Maximum of timeseries data.
- [timeseries.mean](8_timeseries/timeseries.mean.md) - Mean of timeseries data.
- [timeseries.median](8_timeseries/timeseries.median.md) - Median of timeseries data.
- [timeseries.min](8_timeseries/timeseries.min.md) - Minimum of timeseries data.
- [timeseries.minus](8_timeseries/timeseries.minus.md) - Subtract timeseries data.
- [timeseries.mldivide](8_timeseries/timeseries.mldivide.md) - Matrix left division for timeseries data.
- [timeseries.mode](8_timeseries/timeseries.mode.md) - Mode of timeseries data.
- [timeseries.mrdivide](8_timeseries/timeseries.mrdivide.md) - Matrix right division for timeseries data.
- [timeseries.mtimes](8_timeseries/timeseries.mtimes.md) - Matrix multiplication for timeseries data.
- [timeseries.plot](8_timeseries/timeseries.plot.md) - Plot timeseries data against time.
- [timeseries.plus](8_timeseries/timeseries.plus.md) - Add timeseries data.
- [timeseries.rdivide](8_timeseries/timeseries.rdivide.md) - Element-wise right division of timeseries data.
- [timeseries.resample](8_timeseries/timeseries.resample.md) - Resample a timeseries object at new times.
- [timeseries.set](8_timeseries/timeseries.set.md) - Set timeseries property values.
- [timeseries.setabstime](8_timeseries/timeseries.setabstime.md) - Set the absolute start date for sample times.
- [timeseries.setinterpmethod](8_timeseries/timeseries.setinterpmethod.md) - Set the interpolation method.
- [timeseries.setuniformtime](8_timeseries/timeseries.setuniformtime.md) - Set a uniformly spaced time vector.
- [timeseries.std](8_timeseries/timeseries.std.md) - Standard deviation of timeseries data.
- [timeseries.sum](8_timeseries/timeseries.sum.md) - Sum of timeseries data.
- [timeseries.synchronize](8_timeseries/timeseries.synchronize.md) - Synchronize two or more timeseries objects.
- [timeseries.times](8_timeseries/timeseries.times.md) - Element-wise multiplication of timeseries data.
- [timeseries.uminus](8_timeseries/timeseries.uminus.md) - Negate timeseries data.
- [timeseries.uplus](8_timeseries/timeseries.uplus.md) - Unary plus for timeseries data.
- [timeseries.var](8_timeseries/timeseries.var.md) - Variance of timeseries data.
- [timeseries](8_timeseries/timeseries.md) - Create time series data.
- [tscollection.addsampletocollection](8_timeseries/tscollection.addsampletocollection.md) - Time series helper function.
- [tscollection.addts](8_timeseries/tscollection.addts.md) - Time series helper function.
- [tscollection.delsamplefromcollection](8_timeseries/tscollection.delsamplefromcollection.md) - Time series helper function.
- [tscollection.display](8_timeseries/tscollection.display.md) - Display a time series collection object.
- [tscollection.get](8_timeseries/tscollection.get.md) - Time series object function.
- [tscollection.getabstime](8_timeseries/tscollection.getabstime.md) - Time series helper function.
- [tscollection.getsampleusingtime](8_timeseries/tscollection.getsampleusingtime.md) - Time series helper function.
- [tscollection.gettimeseriesnames](8_timeseries/tscollection.gettimeseriesnames.md) - Time series helper function.
- [tscollection.horzcat](8_timeseries/tscollection.horzcat.md) - Time series object function.
- [tscollection.loadobj](8_timeseries/tscollection.loadobj.md) - Restore a time series collection object from saved data.
- [tscollection.properties](8_timeseries/tscollection.properties.md) - Time series object function.
- [tscollection.removets](8_timeseries/tscollection.removets.md) - Time series helper function.
- [tscollection.resample](8_timeseries/tscollection.resample.md) - Time series helper function.
- [tscollection.set](8_timeseries/tscollection.set.md) - Time series object function.
- [tscollection.setTimeseriesName](8_timeseries/tscollection.setTimeseriesName.md) - Time series object function.
- [tscollection.setabstime](8_timeseries/tscollection.setabstime.md) - Time series helper function.
- [tscollection.settimeseriesnames](8_timeseries/tscollection.settimeseriesnames.md) - Time series object function.
- [tscollection.vertcat](8_timeseries/tscollection.vertcat.md) - Time series object function.
- [tscollection](8_timeseries/tscollection.md) - Create a collection of aligned time series.
- [tsdata.datametadata](8_timeseries/tsdata.datametadata.md) - Time series object function.
- [tsdata.event](8_timeseries/tsdata.event.md) - Time series object function.
- [tsdata.interpolation](8_timeseries/tsdata.interpolation.md) - Time series object function.
- [tsdata.qualmetadata](8_timeseries/tsdata.qualmetadata.md) - Time series object function.
- [tsdata.timemetadata](8_timeseries/tsdata.timemetadata.md) - Time series object function.

