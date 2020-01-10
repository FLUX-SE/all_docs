# General procedure

Impulse response (IR) measurement requires that sufficient samples be accumulated before the actual
computation is ready, depending on the values of the <link type="document" target="IR Length">Max
Length </link> and <link type="document" target="Time averaging IR">Time averaging</link> settings. The user
interface displays a message indicating the remaining time before the display is ready, whenever the
related settings are changed or the reset button is pressed.

Because the software cannot detect whenever you make changes to the analyzed system, you need to press
the <link type="document" target="Reset">Reset</link> button in the setup or wait for the display to
stabilize before reading the display.

Once your test setup is ready, press the �<link type="document" target="Reset">Reset</link>� button and
wait for the display showing remaining time to disappear, at which point the IR display is ready. When a
sufficient amount of samples have been accumulated, IR computation goes on as long as the �<link
type="document" target="Run">Run</link>� button is active, and is updated with new incoming
samples.

>Make sure the actual impulse response is shorter than the maximum specified time,
otherwise mild to severe time-aliasing will occur, and the measurement will not be reliable. A good rule
of thumb is to set the Max length parameter to twice that of the estimated RT60 of the room.
>
> If in doubt, raise the Max length setting until the impulse response curve does not change, and check
the tail of the curve does indeed fall to zero.


