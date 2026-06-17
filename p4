#p4 generate short music instrument

!pip install pretty_midi -q
import pretty_midi
from IPython.display import Audio
m = pretty_midi.PrettyMIDI()
p = pretty_midi.Instrument(0)
p.notes.append(pretty_midi.Note(100, 60, 0, 3))
m.instruments.append(p)
Audio(m.synthesize(), rate=44100)
