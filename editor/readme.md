# RogueEditor v1.1

## Running

Run "EDITOR.BAS" to run the program as-is.  A graphic keymap will be forthcoming.

## Keyboard Commands

CTRL-Q - Quit
CTRL-S - Save
CTRL-L - Load
CTRL-C - Clear screen

W,A,S,D - Cursor movement by row / column
Q / E - Move to start / end of row
R / F - Move to top / bottom of column
Z / C - Switch to different page in video memory (max 4)

## Keypad Commands

Keypad is set up to draw boxes.  Thus, each key represents box geometry as follows:

1,3,7,9 - Lower and upper left / right corners
2,4,6,8 - Tees (bottom, left, right, and top, respectively)
5 - Cross
0 - horizontal
. (decimal point) - Vertical

Pressing ALT-ENTER cycles through line styles, 5 total.  Active line style is indicated at top right on the status bar

## Attributes

ALT-INSERT / DELETE - increase / decrease foreground color.
ALT-HOME / END - increase / decrease background color.
ALT-PAGEUP / PAGEDN - toggle blinking / hi intensity (foreground only)
V - set the active attribute on the currently selected color (overwrites current attribute at that location)
CTRL-D - eyedropper - Sets the active attribute to the attribute at the current cursor location

## Testing

LOAD "EDITOR.BAS"
RUN
Type CTRL-L
Type TEST.MAP, press ENTER

A colorful ASCII picture of a cave and tree should load on the screen.
