(import streams)
(import (streams math))

(display (stream-car 
	   (stream-drop 10000 prime-numbers-stream)))

