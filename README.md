# Do95
A familiar-looking launcher for Doom source ports.

# Installing for Windows
Place the `do95.exe` file into the same directory as your favorite source port's `.exe` file, and run it from there.  It should automatically detect the source port, any Doom .wads in that directory, and any Doom wads installed through Steam.

# Installing for Linux
Run `wish do95.tcl` and it should find your Doom wads and pick a source port to run automatically.  This has not been tested thoroughly.

# Does this work on Mac OS?
To be honest I have absolutely no idea.

# Why'd you make this?
1. I grew up playing Doom through Doom95.
2. I like how most source ports can detect my Steam installs of Doom, but I don't like how they always pick Doom 2 by default.
3. To learn Tcl/Tk.

# Building for Windows
1. Download a tclkit with Tk built in (such as those from http://tclkits.rkeene.org/fossil/wiki?name=Downloads)
2. Download SDX (from https://chiselapp.com/user/aspect/repository/sdx/index)
3. Copy `tclkit.exe` to `runtime.exe`
3. Run `tclkit.exe sdx.kit qwrap do95.tcl -runtime runtime.exe`
4. Rename `do95` to `do95.exe`

# Building for Linux
TODO
