#import "nelson_help.typ": *

= Audio playback functions

The audio module provides functions for reading, writing, analyzing, and playing audio files.

 It supports playback control through the audioplayer object, manipulation of playback properties, and metadata handling.

 It also includes utilities for signal conversion and sound generation.

== Functions

- #nlink(<audio:audiodevinfo>)[audiodevinfo]: Get audio devices information.
- #nlink(<audio:audioinfo>)[audioinfo]: Get audio file information.
- #nlink(<audio:audiometadata>)[audiometadata]: Get\/Set metadata of audio file .
- #nlink(<audio:audioplayer>)[audioplayer]: Audio player object.
- #nlink(<audio:audioplayer_delete>)[audioplayer\_delete]: Removes audioplayer object.
- #nlink(<audio:audioplayer_fieldnames>)[audioplayer\_fieldnames]: Returns the properties name of an audioplayer object.
- #nlink(<audio:audioplayer_get>)[audioplayer\_get]: Get property value from audioplayer interface.
- #nlink(<audio:audioplayer_pause>)[audioplayer\_pause]: Pause an audioplayer object.
- #nlink(<audio:audioplayer_set>)[audioplayer\_set]: Set object or interface property to specified value.
- #nlink(<audio:audioplayer_stop>)[audioplayer\_stop]: Stops an audioplayer object.
- #nlink(<audio:audioplayer_used>)[audioplayer\_used]: Returns the current valid audioplayer handles.
- #nlink(<audio:audioread>)[audioread]: Read an audio file.
- #nlink(<audio:audiorecorder>)[audiorecorder]: Object for recording audio.
- #nlink(<audio:audiorecorder_delete>)[audiorecorder\_delete]: Removes audiorecorder object.
- #nlink(<audio:audiorecorder_fieldnames>)[audiorecorder\_fieldnames]: Returns the properties name of an audiorecorder object.
- #nlink(<audio:audiorecorder_get>)[audiorecorder\_get]: Get property value from audiorecorder interface.
- #nlink(<audio:audiorecorder_pause>)[audiorecorder\_pause]: Pause an audiorecorder object.
- #nlink(<audio:audiorecorder_set>)[audiorecorder\_set]: Set object or interface property to specified value.
- #nlink(<audio:audiorecorder_used>)[audiorecorder\_used]: Returns the current valid audiorecorder handles.
- #nlink(<audio:audiosupportedformats>)[audiosupportedformats]: Get audio file supported formats.
- #nlink(<audio:audiowrite>)[audiowrite]: Writes an audio file.
- #nlink(<audio:beep>)[beep]: Produces a beep sound.
- #nlink(<audio:getaudiodata>)[getaudiodata]: Store recorded audio signal in numeric array.
- #nlink(<audio:getplayer>)[getplayer]: Create associated audioplayer object.
- #nlink(<audio:isplaying>)[isplaying]: get info about audio playback is in progress.
- #nlink(<audio:isrecording>)[isrecording]: Determine if recording is in progress.
- #nlink(<audio:lin2mu>)[lin2mu]: Convert audio data from linear signal to mu-law.
- #nlink(<audio:mu2lin>)[mu2lin]: Convert audio data from mu-law to linear signal.
- #nlink(<audio:play>)[play]: Plays an audioplayer object.
- #nlink(<audio:playblocking>)[playblocking]: Plays an audioplayer object with blocking.
- #nlink(<audio:record>)[record]: Record audio to audiorecorder object.
- #nlink(<audio:recordblocking>)[recordblocking]: Record audio to audiorecorder object; hold control until recording completes.
- #nlink(<audio:resume>)[resume]: Resumes an audioplayer object.
- #nlink(<audio:sound>)[sound]: Convert matrix of signal data to sound and play it.
- #nlink(<audio:soundsc>)[soundsc]: Scale data and play as sound.
- #nlink(<audio:stop>)[stop]: Stops an audioplayer object.


#nested[
#pagebreak(weak: true)
#include "audiodevinfo.typ"
#pagebreak(weak: true)
#include "audioinfo.typ"
#pagebreak(weak: true)
#include "audiometadata.typ"
#pagebreak(weak: true)
#include "audioplayer.typ"
#pagebreak(weak: true)
#include "audioplayer_delete.typ"
#pagebreak(weak: true)
#include "audioplayer_fieldnames.typ"
#pagebreak(weak: true)
#include "audioplayer_get.typ"
#pagebreak(weak: true)
#include "audioplayer_pause.typ"
#pagebreak(weak: true)
#include "audioplayer_set.typ"
#pagebreak(weak: true)
#include "audioplayer_stop.typ"
#pagebreak(weak: true)
#include "audioplayer_used.typ"
#pagebreak(weak: true)
#include "audioread.typ"
#pagebreak(weak: true)
#include "audiorecorder.typ"
#pagebreak(weak: true)
#include "audiorecorder_delete.typ"
#pagebreak(weak: true)
#include "audiorecorder_fieldnames.typ"
#pagebreak(weak: true)
#include "audiorecorder_get.typ"
#pagebreak(weak: true)
#include "audiorecorder_pause.typ"
#pagebreak(weak: true)
#include "audiorecorder_set.typ"
#pagebreak(weak: true)
#include "audiorecorder_used.typ"
#pagebreak(weak: true)
#include "audiosupportedformats.typ"
#pagebreak(weak: true)
#include "audiowrite.typ"
#pagebreak(weak: true)
#include "beep.typ"
#pagebreak(weak: true)
#include "getaudiodata.typ"
#pagebreak(weak: true)
#include "getplayer.typ"
#pagebreak(weak: true)
#include "isplaying.typ"
#pagebreak(weak: true)
#include "isrecording.typ"
#pagebreak(weak: true)
#include "lin2mu.typ"
#pagebreak(weak: true)
#include "mu2lin.typ"
#pagebreak(weak: true)
#include "play.typ"
#pagebreak(weak: true)
#include "playblocking.typ"
#pagebreak(weak: true)
#include "record.typ"
#pagebreak(weak: true)
#include "recordblocking.typ"
#pagebreak(weak: true)
#include "resume.typ"
#pagebreak(weak: true)
#include "sound.typ"
#pagebreak(weak: true)
#include "soundsc.typ"
#pagebreak(weak: true)
#include "stop.typ"
]
