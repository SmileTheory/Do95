package require Tk

namespace eval doom_consts {
	variable skills [list \
		"I'm too young to die" \
		"Hey, not too rough" \
		"Hurt me plenty" \
		"Ultra-Violence" \
		"Nightmare" \
	]

	variable iwad_level_names [dict create]
	dict set iwad_level_names DOOM1 [list \
		"Episode 1, Map 1: \"Hangar\"" \
		"Episode 1, Map 2: \"Nuclear Plant\"" \
		"Episode 1, Map 3: \"Toxin Refinery\"" \
		"Episode 1, Map 4: \"Command Control\"" \
		"Episode 1, Map 5: \"Phobos Lab\"" \
		"Episode 1, Map 6: \"Central Processing\"" \
		"Episode 1, Map 7: \"Computer Station\"" \
		"Episode 1, Map 8: \"Phobos Anomaly\"" \
		"Episode 1, Map 9: \"Military Base\"" \
	]

	dict set iwad_level_names DOOM [list \
		"Episode 1, Map 1: \"Hangar\"" \
		"Episode 1, Map 2: \"Nuclear Plant\"" \
		"Episode 1, Map 3: \"Toxin Refinery\"" \
		"Episode 1, Map 4: \"Command Control\"" \
		"Episode 1, Map 5: \"Phobos Lab\"" \
		"Episode 1, Map 6: \"Central Processing\"" \
		"Episode 1, Map 7: \"Computer Station\"" \
		"Episode 1, Map 8: \"Phobos Anomaly\"" \
		"Episode 1, Map 9: \"Military Base\"" \
		\
		"Episode 2, Map 1: \"Deimos Anomaly\"" \
		"Episode 2, Map 2: \"Containment Area\"" \
		"Episode 2, Map 3: \"Refinery\"" \
		"Episode 2, Map 4: \"Deimos Lab\"" \
		"Episode 2, Map 5: \"Command Center\"" \
		"Episode 2, Map 6: \"Halls of the Damned\"" \
		"Episode 2, Map 7: \"Spawning Vats\"" \
		"Episode 2, Map 8: \"Tower of Babel\"" \
		"Episode 2, Map 9: \"Fortress of Mystery\"" \
		\
		"Episode 3, Map 1: \"Hell Keep\"" \
		"Episode 3, Map 2: \"Slough of Despair\"" \
		"Episode 3, Map 3: \"Pandemonium\"" \
		"Episode 3, Map 4: \"House of Pain\"" \
		"Episode 3, Map 5: \"Unholy Cathedral\"" \
		"Episode 3, Map 6: \"Mt. Erebus\"" \
		"Episode 3, Map 7: \"Limbo\"" \
		"Episode 3, Map 8: \"Dis\"" \
		"Episode 3, Map 9: \"Warrens\"" \
		\
		"Episode 4, Map 1: \"Hell Beneath\"" \
		"Episode 4, Map 2: \"Perfect Hatred\"" \
		"Episode 4, Map 3: \"Sever the Wicked\"" \
		"Episode 4, Map 4: \"Unruly Evil\"" \
		"Episode 4, Map 5: \"They Will Repent\"" \
		"Episode 4, Map 6: \"Against Thee Wickedly\"" \
		"Episode 4, Map 7: \"And Hell Followed\"" \
		"Episode 4, Map 8: \"Unto the Cruel\"" \
		"Episode 4, Map 9: \"Fear\"" \
	]

	dict set iwad_level_names DOOM2 [list \
		"Level 1: Entryway" \
		"Level 2: Underhalls" \
		"Level 3: The Gantlet" \
		"Level 4: The Focus" \
		"Level 5: The Waste Tunnels" \
		"Level 6: The Crusher" \
		"Level 7: Dead Simple" \
		"Level 8: Tricks and Traps" \
		"Level 9: The Pit" \
		"Level 10: Refueling Base" \
		"Level 11: \"O\" of Destruction!" \
		"Level 12: The Factory" \
		"Level 13: Downtown" \
		"Level 14: The Inmost Dens" \
		"Level 15: Industrial Zone" \
		"Level 16: Suburbs" \
		"Level 17: Tenements" \
		"Level 18: The Courtyard" \
		"Level 19: The Citadel" \
		"Level 20: Gotcha!" \
		"Level 21: Nirvana" \
		"Level 22: The Catacombs" \
		"Level 23: Barrels o\" Fun" \
		"Level 24: The Chasm" \
		"Level 25: Bloodfalls" \
		"Level 26: The Abandoned Mines" \
		"Level 27: Monster Condo" \
		"Level 28: The Spirit World" \
		"Level 29: The Living End" \
		"Level 30: Icon of Sin" \
		"Level 31: Wolfenstein" \
		"Level 32: Grosse" \
	]

	dict set iwad_level_names TNT [list \
		"Level 1: System Control" \
		"Level 2: Human BBQ" \
		"Level 3: Power Control" \
		"Level 4: Wormhole" \
		"Level 5: Hanger" \
		"Level 6: Open Season" \
		"Level 7: Prison" \
		"Level 8: Metal" \
		"Level 9: Stronghold" \
		"Level 10: Redemption" \
		"Level 11: Storage Facility" \
		"Level 12: Crater" \
		"Level 13: Nukage Processing" \
		"Level 14: Steel Works" \
		"Level 15: Dead Zone" \
		"Level 16: Deepest Reaches" \
		"Level 17: Processing Area" \
		"Level 18: Mill" \
		"Level 19: Shipping/Respawning" \
		"Level 20: Central Processing" \
		"Level 21: Administration Center" \
		"Level 22: Habitat" \
		"Level 23: Lunar Mining Project" \
		"Level 24: Quarry" \
		"Level 25: Baron\"s Den" \
		"Level 26: Ballistyx" \
		"Level 27: Mount Pain" \
		"Level 28: Heck" \
		"Level 29: River Styx" \
		"Level 30: Last Call" \
		"Level 31: Pharaoh" \
		"Level 32: Caribbean" \
	]

	dict set iwad_level_names PLUTONIA [list \
		"Level 1: Congo" \
		"Level 2: Well of Souls" \
		"Level 3: Aztec" \
		"Level 4: Caged" \
		"Level 5: Ghost Town" \
		"Level 6: Baron\"s Lair" \
		"Level 7: Caughtyard" \
		"Level 8: Realm" \
		"Level 9: Abattoire" \
		"Level 10: Onslaught" \
		"Level 11: Hunted" \
		"Level 12: Speed" \
		"Level 13: The Crypt" \
		"Level 14: Genesis" \
		"Level 15: The Twilight" \
		"Level 16: The Omen" \
		"Level 17: Compound" \
		"Level 18: Neurosphere" \
		"Level 19: NME" \
		"Level 20: The Death Domain" \
		"Level 21: Slayer" \
		"Level 22: Impossible Mission" \
		"Level 23: Tombstone" \
		"Level 24: The Final Frontier" \
		"Level 25: The Temple of Darkness" \
		"Level 26: Bunker" \
		"Level 27: Anti-Christ" \
		"Level 28: The Sewers" \
		"Level 29: Odyssey of Noises" \
		"Level 30: The Gateway of Hell" \
		"Level 31: Cyberden" \
		"Level 32: Go 2 It" \
	]
}


proc getSteamPaths {} {
	set steampaths [list]

	switch $::tcl_platform(platform) {
		windows {
			package require registry
			if { [catch {registry -32bit get HKEY_LOCAL_MACHINE\\SOFTWARE\\Valve\\Steam InstallPath} path] } {
				return
			}
		}
		unix {
			set path [file normalize "~/.steam/root"]
		}
		default	{
			return $steampaths
		}
	}

	lappend steampaths $path

	set configfile [file join $path "config" "config.vdf"]

	if { [catch {open $configfile RDONLY} file]} {
		return $steampaths
	}

	set data [read $file]
	close $file

	set matches [regexp -all -line -inline {\mBaseInstallFolder.*\n} $data]
	foreach line $matches {
		set path [string map {"\\\\" "\\" "\"" ""} [string trim [string range $line [expr {[string first "\"" $line] + 1}] end]]]
		lappend steampaths $path
	}

	return $steampaths
}

set testpaths [list]

if {1 == 1} {
	set path "."
	
	lappend testpaths [file join $path DOOM.WAD]
	lappend testpaths [file join $path DOOM1.WAD]
	lappend testpaths [file join $path DOOM2.WAD]
	lappend testpaths [file join $path PLUTONIA.WAD]
	lappend testpaths [file join $path TNT.WAD]
}

set steampaths [getSteamPaths]

foreach path $steampaths {
	set common [file join $path steamapps common]

	lappend testpaths [file join $common "Ultimate Doom" base DOOM.WAD]
	lappend testpaths [file join $common "Doom 2" base DOOM2.WAD]
	lappend testpaths [file join $common "Final Doom" base PLUTONIA.WAD]
	lappend testpaths [file join $common "Final Doom" base TNT.WAD]
	lappend testpaths [file join $common "DOOM 3 BFG Edition" base wads DOOM.WAD]
	lappend testpaths [file join $common "DOOM 3 BFG Edition" base wads DOOM2.WAD]
}

set iwad_paths [dict create]
set pwad_paths [dict create]

foreach path $testpaths {
	set wadname [file rootname [file tail $path]]

	if {![dict exists $iwad_paths $wadname] && [file exists $path]} {
		dict set iwad_paths $wadname $path
	}
}

set savedescs [list]
set savepath "."

for {set i 0} {$i < 6} {incr i} {
	set path [file join $savepath doomsav$i.dsg]

	if { [catch {open $path RDONLY} file]} {
		lappend savedescs (NONE)
		continue
	}

	set data [read $file 24]
	close $file

	lappend savedescs $data
}

set demonames [list (NONE)]
set demopath "."

if { [catch {set demofiles [glob -directory $demopath *.LMP .lmp .Lmp]}] == 0} {
	foreach path $demofiles {
		lappend demonames [file rootname [file tail $path]]
	}
}

#puts $iwad_paths

#puts $env(APPDATA)

namespace eval options {
	variable iwad [lindex [dict keys $iwad_paths] 0]
	variable pwads (NONE)
	variable skill [lindex $::doom_consts::skills 3]
	variable level [lindex [dict get $::doom_consts::iwad_level_names $::options::iwad] 0]
	variable deathmatch 0
	variable altdeath 0
	variable nomonsters 0
	variable fast 0
	variable respawn 0

	variable loadgame 0
	variable timer 0
	variable turbo 0
	variable record ""
	variable maxdemo 0
	variable playdemo ""

	variable nostalgia 0
}

switch $::tcl_platform(platform) {
	windows {
		set exepaths [list \
			".\\crispy-doom.exe" \
			".\\chocolate-doom.exe" \
			".\\prboom-plus.exe" \
			".\\glboom-plus.exe" \
			".\\woof.exe" \
			".\\doom.exe" \
			".\\doomretro.exe" \
			".\\gzdoom.exe" \
			".\\Eternity.exe" \
			".\\k8vavoom.exe" \
			".\\src\\crispy-doom.exe" \
			".\\src\\chocolate-doom.exe" \
		]
	}
	unix {
		set exepaths [list \
			"/bin/crispy-doom" \
			"/bin/chocolate-doom" \
			"/usr/bin/crispy-doom" \
			"/usr/bin/chocolate-doom" \
		]
	}
}

foreach path $exepaths {
	if {[file exists $path]} {
		set exefile $path
		break;
	}
}

if {$::argc > 0} {
	set skip 0
	foreach arg $::argv {
		if {$skip != 0} {
			incr skip -1
			continue
		}
		if {$arg == "--nostalgia"} {
			set ::options::nostalgia 1
		}
	}
}


wm title . "Do95"
wm protocol . WM_DELETE_WINDOW { exit }
wm resizable . 0 0
ttk::frame .c -padding {5 5 5 5}
pack .c

grid [ttk::frame .c.l] -row 1 -column 1 -padx [expr $::options::nostalgia ? 5 : 0] -sticky nsew
grid [ttk::labelframe .c.gp -text "Game Parameters" -padding {5 0 5 5}] -row 1 -column 2 -padx [expr $::options::nostalgia ? 5 : 0] -sticky nsew
grid [ttk::frame .c.b] -row 2 -column 1 -columnspan 2 -sticky nsew

if {$::options::nostalgia} {
	pack [ttk::label .c.l.label1 -text "Type of Game or Connection"] -side top -anchor w
	pack [ttk::combobox .c.l.gametype -state readonly] -side top -fill x
	.c.l.gametype configure -values [list "DOS Doom over Modem" "IPX Connection to DOS or Mac Doom" "Null Modem Cable Connection" "Single Player Game"]
	.c.l.gametype current 3

	# Multi-Player Game
	pack [ttk::labelframe .c.l.mpg -text "Multi-Player Game" -padding "5 0 5 5"] -side top -anchor w
	pack [ttk::label .c.l.mpg.label1 -text "Player Alias"] -side top -anchor w
	pack [ttk::entry .c.l.mpg.name -width 43] -side top -fill x
	pack [ttk::frame .c.l.mpg.gameplayersbar] -side top -fill x
	pack [ttk::label .c.l.mpg.label2 -text "Games Currently Available"] -side top -anchor w
	pack [tk::listbox .c.l.mpg.games -height 5] -side top -fill x
	pack [ttk::label .c.l.mpg.label3 -text "Game Information"] -side top -anchor w
	pack [tk::listbox .c.l.mpg.info -height 5] -side top -fill x

	# Multi-Player Game - Game Name/# Players
	grid [ttk::label .c.l.mpg.gameplayersbar.label1 -text "Game Name"] -row 1 -column 1 -sticky nsew
	grid [ttk::label .c.l.mpg.gameplayersbar.label2 -text "# Players"] -row 1 -column 2 -sticky nsew
	grid [ttk::entry .c.l.mpg.gameplayersbar.gamename] -row 2 -column 1 -sticky nsew
	grid [ttk::spinbox .c.l.mpg.gameplayersbar.numplayers -width 3] -padx 5 -row 2 -column 2 -sticky nsew
	grid columnconfigure .c.l.mpg.gameplayersbar 1 -weight 1

	switch $::tcl_platform(platform) {
		windows {
			set username $env(USERNAME)
		}
		unix {
			set username $env(USER)
		}
	}

	.c.l.mpg.name configure -text username
	.c.l.mpg.gameplayersbar.gamename configure -text username
}

# Game Parameters
pack [ttk::label .c.gp.label1 -text "Game WAD file"]  -side top -anchor w
pack [ttk::combobox .c.gp.iwad -state readonly -textvariable ::options::iwad -values [dict keys $iwad_paths]] -side top -fill x -anchor w
pack [ttk::label .c.gp.label2 -text "Custom WAD file"]  -side top -anchor w
pack [ttk::frame .c.gp.pwadbar] -side top -fill x
pack [ttk::label .c.gp.label3 -text "Skill Level"]  -side top -anchor w
pack [ttk::combobox .c.gp.skill -state readonly -values $::doom_consts::skills -textvariable ::options::skill] -side top -fill x
pack [ttk::label .c.gp.label4 -text "Episode/Level"]  -side top -anchor w
pack [ttk::combobox .c.gp.level -state readonly -width 38 -textvariable ::options::level] -side top -fill x
pack [ttk::labelframe .c.gp.dmo -text "Deathmatch Options" -padding "5 0 5 5"]  -side top -fill x
pack [ttk::labelframe .c.gp.mo -text "Monster Options" -padding "5 0 5 5"]  -side top -fill x
pack [ttk::frame .c.gp.b] -side top -fill x

bind .c.gp.iwad <<ComboboxSelected>> iwad_cmd

# Pwad bar
grid [ttk::combobox .c.gp.pwadbar.pwad -state disabled -textvariable ::options::pwads] -row 1 -column 1 -sticky news
grid [ttk::button .c.gp.pwadbar.browse -text "Browse..." -command pwad_browse_cmd]  -row 1 -column 2
grid columnconfigure .c.gp.pwadbar 1 -weight 1

# Deathmatch Options
pack [ttk::checkbutton .c.gp.dmo.deathmatch -text "Play in \"DeathMatch\" Mode" -variable ::options::deathmatch] -side top -anchor w
pack [ttk::checkbutton .c.gp.dmo.altdeath -text "Play in \"DeathMatch II\" (altdeath)" -variable ::options::altdeath] -side top -anchor w
.c.gp.dmo.deathmatch state disabled
.c.gp.dmo.altdeath state disabled

# Monster Options
pack [ttk::checkbutton .c.gp.mo.nomonsters -text "No Monsters" -variable ::options::nomonsters] -side top -anchor w
pack [ttk::checkbutton .c.gp.mo.fast -text "Fast Monsters" -variable ::options::fast] -side top -anchor w
pack [ttk::checkbutton .c.gp.mo.respawn -text "Respawn Monsters" -variable ::options::respawn] -side top -anchor w

# Game Parameters - buttons
grid [ttk::button .c.gp.b.advanced -text "Advanced..." -command advanced_cmd] -row 1 -column 1
grid [ttk::button .c.gp.b.configuration -text "Configuration..." -command config_cmd] -row 1 -column 2
grid columnconfigure .c.gp.b 1 -uniform 1 -weight 1
grid columnconfigure .c.gp.b 2 -uniform 1 -weight 1

# Bottom buttons
grid [ttk::button .c.b.button1 -text "New Game" -command newgame_cmd] -row 1 -column 2 -sticky nsew
#grid [ttk::button .c.b.button2 -text "Answer"] -row 1 -column 3 -sticky nsew
grid [ttk::button .c.b.button3 -text "Cancel" -command exit] -row 1 -column 4 -sticky nsew
grid columnconfigure .c.b 2 -uniform 1 -weight 1
grid columnconfigure .c.b 3 -uniform 1 -weight 1
grid columnconfigure .c.b 4 -uniform 1 -weight 1
if {$::options::nostalgia} {
	grid columnconfigure .c.b 1 -uniform 1 -weight 1
	grid columnconfigure .c.b 5 -uniform 1 -weight 1
}

proc iwad_cmd {} {
	.c.gp.level configure -values [dict get $::doom_consts::iwad_level_names $::options::iwad]
	.c.gp.level current 0
}

iwad_cmd

proc pwad_browse_cmd {} {
	global pwad_paths

	set paths [tk_getOpenFile -multiple 1 -filetypes {{{Doom WAD File} {.WAD .wad .Wad}}}]
	if {$paths == ""} { return }

	set ::options::pwads [list]
	set lastpath "."

	foreach path $paths {
		lappend ::options::pwads [file rootname [file tail $path]]
		set lastpath $path
	}

	set pwad_paths [dict create]
	dict set pwad_paths (NONE) ""
	foreach path [glob -directory [file dirname $lastpath] *.WAD .wad .Wad] {
		dict set pwad_paths [file rootname [file tail $path]] $path
	}

	.c.gp.pwadbar.pwad configure -values [dict keys $pwad_paths] -state readonly
}

namespace eval adv_options {
	variable loadgame
	variable timer_enabled
	variable timer
	variable turbo_enabled 
	variable turbo
	variable record_or_playdemo
	variable record
	variable maxdemo
	variable playdemo
}

proc advanced_cmd {} {
	global savedescs
	global demonames

	set ::adv_options::loadgame $::options::loadgame
	set ::adv_options::timer_enabled [expr $::options::timer ? 1 : 0]
	set ::adv_options::timer $::options::timer
	set ::adv_options::turbo_enabled [expr $::options::turbo ? 1 : 0]
	set ::adv_options::turbo $::options::turbo
	set ::adv_options::record_or_playdemo 0
	if {$::options::record != ""} {
		set ::adv_options::record_or_playdemo 1
	} elseif {$::options::playdemo != ""} {
		set ::adv_options::record_or_playdemo 2
	}
	set ::adv_options::record $::options::record
	set ::adv_options::maxdemo $::options::maxdemo
	set ::adv_options::playdemo $::options::playdemo

	#tk busy hold .
	#update

	toplevel .adv
	wm title .adv "Advanced Options"
	wm protocol .adv WM_DELETE_WINDOW {
		#tk busy forget . 
		destroy .adv
	}

	pack [ttk::notebook .adv.nb -padding {5 5 5 5}] 
	.adv.nb add [frame .adv.nb.game] -text Game

	pack [ttk::labelframe .adv.nb.game.load -text "Load Saved Game" -padding "5 0 5 5"] -padx 5 -side top -fill x
	for {set i 0} {$i < 6} {incr i} {
		pack [ttk::checkbutton .adv.nb.game.load.slot$i -text [lindex $savedescs $i] -onvalue [expr $i + 1] -variable ::adv_options::loadgame -width 44] -side top -anchor w

		if {[lindex $savedescs $i] == "(NONE)"} {
			.adv.nb.game.load.slot$i state disabled
		}
	}

	pack [ttk::labelframe .adv.nb.game.timed -text "Timed Game" -padding "5 0 5 5"] -padx 5 -side top -fill x
	pack [ttk::checkbutton .adv.nb.game.timed.enabled -text Enabled -variable ::adv_options::timer_enabled -command timer_enable_cmd] -side top -anchor w
	pack [ttk::frame .adv.nb.game.timed.b] -side top -fill x
	grid [ttk::spinbox .adv.nb.game.timed.b.timelimit -textvariable ::adv_options::timer -width 5 -wrap 1 -from 1 -to 999 -increment 1] -row 1 -column 1 -sticky ns
	grid [ttk::label .adv.nb.game.timed.b.l -text "Minutes to run"] -row 1 -column 2 -sticky nsew

	pack [ttk::labelframe .adv.nb.game.turbo -text "Turbo Boost" -padding "5 0 5 5"] -padx 5 -side top -fill x
	pack [ttk::checkbutton .adv.nb.game.turbo.enabled -text Enabled -variable ::adv_options::turbo_enabled -command turbo_enable_cmd] -side top -anchor w
	pack [ttk::frame .adv.nb.game.turbo.b] -side top -fill x
	grid [ttk::spinbox .adv.nb.game.turbo.b.factor -textvariable ::adv_options::turbo -width 5 -wrap 1 -from 10 -to 400 -increment 1] -row 1 -column 1 -sticky ns
	grid [ttk::label .adv.nb.game.turbo.b.l -text "Turbo boost"] -row 1 -column 2 -sticky nsew

	.adv.nb add [frame .adv.nb.demo] -text Demo
	pack [ttk::labelframe .adv.nb.demo.record -text Record -padding "5 0 5 5"] -padx 5 -side top -fill x
	pack [ttk::checkbutton .adv.nb.demo.record.enabled -onvalue 1 -variable ::adv_options::record_or_playdemo -text Enabled -command demo_enable_cmd] -side top -anchor w
	pack [ttk::entry .adv.nb.demo.record.name -width 24 -textvariable ::adv_options::record] -side top -fill x
	pack [ttk::frame .adv.nb.demo.record.maxbar] -pady 5 -side top -fill x
	grid [ttk::spinbox .adv.nb.demo.record.maxbar.s -textvariable ::adv_options::maxdemo -width 5 -wrap 1 -from 1 -to 999 -increment 1] -row 1 -column 1 -sticky ns
	grid [ttk::label .adv.nb.demo.record.maxbar.l -text "Maximum file size in (KB)"] -row 1 -column 2 -sticky nsew

	pack [ttk::labelframe .adv.nb.demo.play -text Play -padding "5 0 5 5"] -padx 5 -side top -fill x
	pack [ttk::checkbutton .adv.nb.demo.play.enabled -onvalue 2 -variable ::adv_options::record_or_playdemo -text Enabled -command demo_enable_cmd] -side top -anchor w
	pack [ttk::combobox .adv.nb.demo.play.select -values $demonames -state readonly -textvariable ::adv_options::playdemo] -side top -fill x

	pack [ttk::frame .adv.b] -pady 5 -side top -anchor e
	grid [ttk::button .adv.b.button1 -text "OK" -command adv_ok_cmd] -padx 5 -row 1 -column 1 -sticky nsew
	grid [ttk::button .adv.b.button2 -text "Cancel" -command {destroy .adv}] -padx 5 -row 1 -column 2 -sticky nsew

	ttk::notebook::enableTraversal .adv.nb

	timer_enable_cmd
	turbo_enable_cmd
	demo_enable_cmd
}

proc timer_enable_cmd {} {
	switch $::adv_options::timer_enabled {
		0 {
			.adv.nb.game.timed.b.timelimit configure -state disabled
		}
		1 {
			.adv.nb.game.timed.b.timelimit configure -state enabled
			if {$::adv_options::timer == 0} {
				set ::adv_options::timer 1
			}
		}
	}
}

proc turbo_enable_cmd {} {
	switch $::adv_options::turbo_enabled {
		0 {
			.adv.nb.game.turbo.b.factor configure -state disabled
		}
		1 {
			.adv.nb.game.turbo.b.factor configure -state enabled
			if {$::adv_options::turbo == 0} {
				set ::adv_options::turbo 10
			}
		}
	}
}

proc demo_enable_cmd {} {
	switch $::adv_options::record_or_playdemo {
		0 {
			.adv.nb.demo.record.name configure -state disabled
			.adv.nb.demo.record.maxbar.s configure -state disabled
			.adv.nb.demo.play.select configure -state disabled
		}
		1 {
			.adv.nb.demo.record.name configure -state enabled
			.adv.nb.demo.record.maxbar.s configure -state enabled
			.adv.nb.demo.play.select configure -state disabled
			if {$::adv_options::maxdemo == 0} {
				set ::adv_options::maxdemo 128
			}
		}
		2 {
			.adv.nb.demo.record.name configure -state disabled
			.adv.nb.demo.record.maxbar.s configure -state disabled
			.adv.nb.demo.play.select configure -state readonly
			.adv.nb.demo.play.select current 0
		}
	}
}

proc adv_ok_cmd {} {
	set ::options::loadgame $::adv_options::loadgame
	set ::options::timer [expr $::adv_options::timer_enabled ? $::adv_options::timer : 0]
	set ::options::turbo [expr $::adv_options::turbo_enabled ? $::adv_options::turbo : 0]

	switch $::adv_options::record_or_playdemo {
		0 {
			set ::options::record ""
			set ::options::playdemo ""
			set ::options::maxdemo 0
		}
		1 {
			set ::options::record $::adv_options::record
			set ::options::playdemo ""
			set ::options::maxdemo $::adv_options::maxdemo
		}
		2 {
			set ::options::record ""
			set ::options::playdemo $::adv_options::playdemo
			set ::options::maxdemo 0
		}
	}

	destroy .adv
}

proc config_cmd {} {
	tk_messageBox -icon info -type ok -message "This hasn't been implemented.\nTry the setup program instead." -title TODO
}

proc newgame_cmd {} {
	global exefile
	global iwad_paths
	global pwad_paths

	set params [list]

	if {[dict exists $iwad_paths $::options::iwad]} {
		lappend params "-iwad"
		lappend params [dict get $iwad_paths $::options::iwad]
	}

	if {$::options::pwads != "(NONE)"} {
		lappend params "-file"
		foreach pwad $::options::pwads {
			lappend params [dict get $pwad_paths $pwad]
		}
	}

	if {$::options::playdemo == "" && $::options::loadgame == 0} {
		set levelnum [lsearch [dict get $::doom_consts::iwad_level_names $::options::iwad] $::options::level]
		if {$levelnum >= 0} {
			lappend params "-warp"
			if {$::options::iwad == "DOOM"} {
				lappend params [expr $levelnum / 9 + 1] 
				lappend params [expr $levelnum % 9 + 1]
			} else {
				lappend params [expr $levelnum + 1]
			}
		}

		set skill [expr [lsearch $::doom_consts::skills $::options::skill] + 1]
		if {$skill != 0} {
			lappend params "-skill"
			lappend params $skill
		}
	}

	if {$::options::deathmatch} {
		lappend params "-deathmatch"
	}

	if {$::options::altdeath} {
		lappend params "-altdeath"
	}

	if {$::options::nomonsters} {
		lappend params "-nomonsters"
	}

	if {$::options::fast} {
		lappend params "-fast"
	}

	if {$::options::respawn} {
		lappend params "-respawn"
	}

	if {$::options::loadgame} {
		lappend params "-loadgame"
		lappend params [expr $::options::loadgame - 1]
	}

	if {$::options::timer != 0} {
		lappend params "-timer"
		lappend params $::options::timer
	}

	if {$::options::turbo != 0} {
		lappend params "-turbo"
		lappend params $::options::turbo
	}

	if {$::options::record != ""} {
		lappend params "-record"
		lappend params $::options::record
	}

	if {$::options::maxdemo != 0} {
		lappend params "-maxdemo"
		lappend params $::options::maxdemo
	}

	if {$::options::playdemo != ""} {
		lappend params "-playdemo"
		lappend params $::options::playdemo
	}

	catch {exec $exefile {*}$params &}
	#puts $exefile
	#puts $params

	#exit
}

vwait forever
