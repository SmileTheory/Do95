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
	dict set iwad_level_names CHEX [list \
		"Episode 1, Map 1: \"Landing Zone\"" \
		"Episode 1, Map 2: \"Storage Facility\"" \
		"Episode 1, Map 3: \"Experimental Lab\"" \
		"Episode 1, Map 4: \"Arboretum\"" \
		"Episode 1, Map 5: \"Caverns of Bazoik\"" \
	]

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

	if { [catch {open $configfile RDONLY} fp]} {
		return $steampaths
	}

	set data [read $fp]
	close $fp

	set matches [regexp -all -line -inline {\mBaseInstallFolder.*\n} $data]
	foreach line $matches {
		set path [string map {"\\\\" "\\" "\"" ""} [string trim [string range $line [expr {[string first "\"" $line] + 1}] end]]]
		lappend steampaths $path
	}

	return $steampaths
}

set testpaths [list]

set wadnames [list \
	DOOM \
	DOOM1 \
	DOOM2 \
	PLUTONIA \
	TNT \
	CHEX
]

lappend testpaths "."

set steampaths [getSteamPaths]

foreach path $steampaths {
	set common [file join $path steamapps common]

	lappend testpaths [file join $common "Ultimate Doom" base]
	lappend testpaths [file join $common "Doom 2" base]
	lappend testpaths [file join $common "Final Doom" base]
	lappend testpaths [file join $common "DOOM 3 BFG Edition" base wads]
}

set iwad_paths [dict create]
set pwad_paths [dict create]

foreach wadname $wadnames {
	foreach startpath $testpaths {
		set path [file join $startpath $wadname.WAD]

		if {[file exists $path]} {
			dict set iwad_paths $wadname $path
			break
		}
	}
}

proc get_gzdoom_save_desc {filename} {
	if {[catch {package require vfs::zip}]} {
		return [file rootname $filename]
	}

	set mnt_file [vfs::zip::Mount $filename zipmount]
	cd zipmount

	set f [open info.json RDONLY]
	set data [read $f]
	close $f

	cd ..
	vfs::zip::Unmount $mnt_file zipmount

	return [string range [regexp -line -inline {\"Title\":.*,} $data] 11 end-3]
}

set num_saves 6
set savefile_root doomsav

set savemap [list]

proc get_savedescs {} {
	global exefile
	global num_saves
	global savemap

	set exename [file rootname [file tail $exefile]]
	set lcase_iwad [string tolower $::options::iwad]

	set savepath .
	switch $::tcl_platform(platform) {
		windows {
		}
		unix {
			switch $exename {
				crispy-doom -
				chocolate-doom -
				woof {
					set savepath [file join ~/.local share $exename]
				}
				prboom-plus -
				odamex {
					set savepath ~/.$exename
				}
				glboom-plus {
					set savepath ~/.prboom-plus
				}
				doomretro -
				gzdoom -
				zandronum -
				zdaemon -
				eternity {
					set savepath [file join ~/.config $exename]
				}
			}
		}
	}

	switch $exename {
		crispy-doom -
		chocolate-doom {
			if {$::tcl_platform(platform) == "unix"} {
				set savepath [file join $savepath savegames $lcase_iwad.wad]
			}
		}
		doomretro {
			set savepath [file join $savepath savegames $lcase_iwad]
		}
		eternity {
			set savepath [file join $savepath user $lcase_iwad]
		}
	}

	switch $exename {
		crispy-doom -
		prboom-plus -
		glboom-plus -
		woof -
		eternity -
		odamex {
			set num_saves 8
		}
		gzdoom -
		zandronum -
		zdaemon {
			# FIXME: Show more of these, maybe in a listbox?
			set num_saves 9
		}
		default {
			set num_saves 6
		}
	}

	switch $exename {
		prboom-plus -
		glboom-plus {
			set savefile_root prboom-plus-savegame
			set savefile_ext .dsg
		}
		woof {
			set savefile_root woofsav
			set savefile_ext .dsg
		}
		doomretro {
			set savefile_root doomretro
			set savefile_ext .save
		}
		gzdoom -
		zandronum -
		zdaemon {
			set savefile_root save
			set savefile_ext .zds
		}
		eternity {
			set savefile_root etersav
			set savefile_ext .dsg
		}
		odamex {
			set savefile_root odasv
			set savefile_ext .ods
		}
		default {
			set savefile_root doomsav
			set savefile_ext .dsg
		}
	}

	set savemap [list]
	set savedescs [list]

	for {set i 0} {$i < $num_saves} {incr i} {
		set path [file join $savepath $savefile_root$i$savefile_ext]

		if { [catch {open $path RDONLY} fp]} {
			lappend savemap ""
			lappend savedescs (NONE)
			continue
		}

		switch $exename {
			gzdoom {
				set desc [get_gzdoom_save_desc $path]
			}
			zandronum {
				fconfigure $fp -translation binary
				seek $fp 8
				while {[eof $fp] == 0} {
					binary scan [read $fp 8] Iua4 length type
					if {$type == "tEXt"} {
						set text [split [read $fp $length] \0]
						if {[lindex $text 0] == "Title"} {
							set desc [lindex $text 1]
						}
					} else {
						seek $fp $length current
					}
					binary scan [read $fp 4] Iu crc
				}
			}
			zdaemon {
				seek $fp 16
				set desc [string trim [read $fp 24]]
			}
			default {
				set desc [string trim [read $fp 24]]
			}
		}

		close $fp

		switch $exename {
			gzdoom -
			zandronum -
			zdaemon {
				lappend savemap $path
			}
			default {
				lappend savemap $i
			}
		}
		lappend savedescs $desc
	}

	return $savedescs
}

set demonames [dict create]

proc get_demonames {} {
	global demonames

	set demonames [dict create]
	set demopath "."

	dict set demonames (NONE) ""
	if { [catch {set demofiles [glob -directory $demopath *.LMP *.lmp *.Lmp]}] == 0} {
		foreach path $demofiles {
			dict set demonames [file rootname [file tail $path]] $path
		}
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

	variable server 0
	variable privateserver 0
	variable dedicated 0
	variable autojoin 0
	variable connect ""
	variable port ""

	variable gametype "Single Player Game"

	variable nostalgia 0
}

set exes [list \
	crispy-doom \
	chocolate-doom \
	prboom-plus \
	glboom-plus \
	woof \
	doomretro \
	gzdoom \
	eternity \
	k8vavoom \
	zandronum \
	zdaemon \
	odamex \
	doom2 \
	doom \
]

dict set exe_params chocolate-doom dedicated dedicated
dict set exe_params chocolate-doom server server
dict set exe_params chocolate-doom privateserver privateserver
dict set exe_params chocolate-doom autojoin autojoin
dict set exe_params chocolate-doom connect connect
dict set exe_params chocolate-doom clientport port
dict set exe_params chocolate-doom serverport port

dict set exe_params crispy-doom dedicated dedicated
dict set exe_params crispy-doom server server
dict set exe_params crispy-doom privateserver privateserver
dict set exe_params crispy-doom autojoin autojoin
dict set exe_params crispy-doom connect connect
dict set exe_params crispy-doom clientport port
dict set exe_params crispy-doom serverport port

dict set exe_params doom dedicated dedicated
dict set exe_params doom server server
dict set exe_params doom privateserver privateserver
dict set exe_params doom autojoin autojoin
dict set exe_params doom connect connect
dict set exe_params doom clientport port
dict set exe_params doom serverport port

dict set exe_params prboom-plus connect net

dict set exe_params glboom-plus connect net

dict set exe_params gzdoom server host
dict set exe_params gzdoom privateserver private
dict set exe_params gzdoom connect join
dict set exe_params gzdoom serverport port

#dict set exe_params zandronum server host
#dict set exe_params zandronum privateserver private
dict set exe_params zandronum connect connect
#dict set exe_params zandronum serverport port

dict set exe_params odamex connect connect

set test_exe_paths .
set ext ""
switch $::tcl_platform(platform) {
	windows {
		lappend test_exe_paths .\\src
		set ext .exe
	}
	unix {
		lappend test_exe_paths /bin /usr/bin
		set ext ""
	}
}

set exefile ""
foreach path $test_exe_paths {
	foreach exe $exes {
		set fullpath [file join $path $exe$ext]
		if {[file exists $fullpath]} {
			set exefile $fullpath
			break;
		}
	}
	if {$exefile != ""} {break}
}

if {$::argc > 0} {
	set prev_cmd ""
	foreach arg $::argv {
		if {[string match -* $arg]} {
			switch $arg {
				--nostalgia {
					set ::options::nostalgia 1
				}
				--force-exe-select {
					set exefile ""
				}
			}
			set prev_cmd $arg
		} else {
			switch $prev_cmd {
				--exe {
					set exefile $arg
					set prev_cmd ""
				}
			}
		}
	}
}

if {$exefile == ""} {
	switch $::tcl_platform(platform) {
		windows {
			set exefile [tk_getOpenFile -title "Please select your Doom source port executable." -filetypes {{{Doom Executable} {.exe}}}]
		}
		unix {
			set exefile [tk_getOpenFile -title "Please select your Doom source port executable."]
		}
	}
}

if {$exefile == ""} {
	exit
}

set exename [file rootname [file tail $exefile]]

set mp_support [dict exists $exe_params $exename connect]

set twopane [expr $mp_support || $::options::nostalgia]

wm title . "Do95"
wm protocol . WM_DELETE_WINDOW { exit }
wm resizable . 0 0
ttk::frame .c -padding {5 5 5 5}
pack .c

grid [ttk::frame .c.l] -row 1 -column 1 -padx [expr $twopane ? 5 : 0] -sticky nsew
grid [ttk::labelframe .c.gp -text "Game Parameters" -padding {5 0 5 5}] -row 1 -column 2 -padx [expr $twopane ? 5 : 0] -sticky nsew
grid [ttk::frame .c.b] -pady 5 -row 2 -column 1 -columnspan 2 -sticky nsew

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
} elseif {$twopane} {
	pack [ttk::label .c.l.label1 -text "Type of Game or Connection"] -side top -anchor w
	pack [ttk::combobox .c.l.gametype -state readonly -textvariable ::options::gametype] -side top -fill x
	.c.l.gametype configure -values [list "Multiplayer Game" "Single Player Game"]
	.c.l.gametype current 1

	# Multi-Player Game
	pack [ttk::labelframe .c.l.mpg -text "Multi-Player Game" -padding "5 0 5 5"] -side top -anchor w
	pack [ttk::checkbutton .c.l.mpg.server -text "Host server" -variable ::options::server -command gametype_server_cmd] -side top -anchor w
	pack [ttk::checkbutton .c.l.mpg.privateserver -text "Private server" -variable ::options::privateserver] -side top -anchor w
	#pack [ttk::checkbutton .c.l.mpg.dedicated -text "Dedicated server" -variable ::options::dedicated] -side top -anchor w
	#pack [ttk::checkbutton .c.l.mpg.autojoin -text "Autojoin LAN server" -variable ::options::autojoin] -side top -anchor w
	pack [ttk::frame .c.l.mpg.addressportbar] -side top -fill x

	# Multi-Player Game - Server Address/Port
	grid [ttk::label .c.l.mpg.addressportbar.label1 -text "Server address"] -row 1 -column 1 -sticky nsew
	grid [ttk::label .c.l.mpg.addressportbar.label2 -text "Port"] -row 1 -column 2 -sticky nsew
	grid [ttk::entry .c.l.mpg.addressportbar.connect -width 37 -textvariable ::options::connect] -row 2 -column 1 -sticky nsew
	grid [ttk::entry .c.l.mpg.addressportbar.port -width 5 -textvariable ::options::port] -padx 5 -row 2 -column 2 -sticky nsew
	grid columnconfigure .c.l.mpg.addressportbar 1 -weight 1

	bind .c.l.gametype <<ComboboxSelected>> gametype_server_cmd
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
pack [ttk::frame .c.gp.b] -pady "5 0" -side top -fill x

bind .c.gp.iwad <<ComboboxSelected>> iwad_cmd

# Pwad bar
grid [ttk::combobox .c.gp.pwadbar.pwad -state disabled -textvariable ::options::pwads] -padx "0 5" -row 1 -column 1 -sticky news
grid [ttk::button .c.gp.pwadbar.browse -text "Browse..." -command pwad_browse_cmd] -padx "5 0" -row 1 -column 2
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
grid [ttk::button .c.gp.b.advanced -text "Advanced..." -command advanced_cmd] -padx "0 5" -row 1 -column 1 -sticky nsew
grid [ttk::button .c.gp.b.configuration -text "Configuration..." -command config_cmd] -padx "5 0" -row 1 -column 2 -sticky nsew
grid columnconfigure .c.gp.b 1 -uniform 1 -weight 1
grid columnconfigure .c.gp.b 2 -uniform 1 -weight 1

# Bottom buttons
grid [ttk::button .c.b.button1 -text "New Game" -command newgame_cmd] -row 1 -column 2 -sticky nsew
#grid [ttk::button .c.b.button2 -text "Answer"] -row 1 -column 3 -sticky nsew
grid [ttk::button .c.b.button3 -text "Cancel" -command exit] -row 1 -column 4 -sticky nsew
grid columnconfigure .c.b 2 -uniform 1 -weight 1
grid columnconfigure .c.b 3 -uniform 1 -weight 1
grid columnconfigure .c.b 4 -uniform 1 -weight 1
if {$twopane} {
	grid columnconfigure .c.b 1 -uniform 1 -weight 1
	grid columnconfigure .c.b 5 -uniform 1 -weight 1
}

proc gametype_server_cmd {} {
	global exename
	global exe_params
	global twopane
	if {$twopane} {
		if {$::options::gametype == "Single Player Game"} {
			.c.l.mpg.server configure -state disabled
			.c.l.mpg.privateserver configure -state disabled
			#.c.l.mpg.dedicated configure -state disabled
			#.c.l.mpg.autojoin configure -state disabled
			.c.l.mpg.addressportbar.connect configure -state disabled
			.c.l.mpg.addressportbar.port configure -state disabled
			.c.gp.dmo.deathmatch configure -state disabled
			.c.gp.dmo.altdeath configure -state disabled
		} else {
			if {[dict exists $exe_params $exename server]} {
				.c.l.mpg.server configure -state enabled
				if {$::options::server} {
					.c.l.mpg.privateserver configure -state enabled
					#.c.l.mpg.dedicated configure -state enabled
					#.c.l.mpg.autojoin configure -state enabled
					.c.l.mpg.addressportbar.connect configure -state disabled
					.c.l.mpg.addressportbar.port configure -state enabled
				} else {
					.c.l.mpg.privateserver configure -state disabled
					#.c.l.mpg.dedicated configure -state disabled
					#.c.l.mpg.autojoin configure -state disabled
					.c.l.mpg.addressportbar.connect configure -state enabled
					.c.l.mpg.addressportbar.port configure -state enabled
				}
			} else {
				.c.l.mpg.server configure -state disabled
				.c.l.mpg.privateserver configure -state disabled
				#.c.l.mpg.dedicated configure -state disabled
				#.c.l.mpg.autojoin configure -state disabled
				.c.l.mpg.addressportbar.connect configure -state enabled
				.c.l.mpg.addressportbar.port configure -state enabled
			}
			.c.gp.dmo.deathmatch configure -state enabled
			.c.gp.dmo.altdeath configure -state enabled
		}
	} else {
		.c.gp.dmo.deathmatch configure -state disabled
		.c.gp.dmo.altdeath configure -state disabled
	}
}

gametype_server_cmd

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
	global demonames
	global num_saves

	set savedescs [get_savedescs]
	get_demonames

	set ::adv_options::loadgame $::options::loadgame
	set ::adv_options::timer_enabled [expr $::options::timer ? 1 : 0]
	set ::adv_options::timer $::options::timer
	set ::adv_options::turbo_enabled [expr $::options::turbo ? 1 : 0]
	set ::adv_options::turbo $::options::turbo

	if {$::adv_options::timer == 0} {set ::adv_options::timer 1}
	if {$::adv_options::turbo == 0} {set ::adv_options::turbo 10}

	set ::adv_options::record_or_playdemo 0
	if {$::options::record != ""} {
		set ::adv_options::record_or_playdemo 1
	} elseif {$::options::playdemo != ""} {
		set ::adv_options::record_or_playdemo 2
	}
	set ::adv_options::record $::options::record
	set ::adv_options::maxdemo $::options::maxdemo
	set ::adv_options::playdemo $::options::playdemo

	if {$::adv_options::playdemo == ""} {set ::adv_options::playdemo [lindex [dict keys $demonames] 0]}
	if {$::adv_options::maxdemo == 0} {set ::adv_options::maxdemo 128}

	#tk busy hold .
	#update

	toplevel .adv
	wm title .adv "Advanced Options"
	wm protocol .adv WM_DELETE_WINDOW {
		#tk busy forget . 
		destroy .adv
	}
	wm resizable .adv 0 0

	pack [ttk::notebook .adv.nb -padding {5 5 5 5}] 
	.adv.nb add [ttk::frame .adv.nb.game] -text Game

	pack [ttk::labelframe .adv.nb.game.load -text "Load Saved Game" -padding "5 0 5 5"] -padx 5 -side top -fill x
	for {set i 0} {$i < $num_saves} {incr i} {
		pack [ttk::checkbutton .adv.nb.game.load.slot$i -text [lindex $savedescs $i] -onvalue [expr $i + 1] -variable ::adv_options::loadgame -width 44] -side top -anchor w

		if {[lindex $savedescs $i] == "(NONE)"} {
			.adv.nb.game.load.slot$i state disabled
		}
	}

	pack [ttk::labelframe .adv.nb.game.timed -text "Timed Game" -padding "5 0 5 5"] -padx 5 -side top -fill x
	pack [ttk::checkbutton .adv.nb.game.timed.enabled -text Enabled -variable ::adv_options::timer_enabled -command timer_enable_cmd] -side top -anchor w
	pack [ttk::frame .adv.nb.game.timed.b] -side top -fill x
	grid [ttk::spinbox .adv.nb.game.timed.b.timelimit -textvariable ::adv_options::timer -width 5 -wrap 1 -from 1 -to 999 -increment 1] -row 1 -column 1 -sticky ns
	grid [ttk::label .adv.nb.game.timed.b.l -text "Minutes to run"] -padx 5 -row 1 -column 2 -sticky nsew

	pack [ttk::labelframe .adv.nb.game.turbo -text "Turbo Boost" -padding "5 0 5 5"] -padx 5 -pady "0 5" -side top -fill x
	pack [ttk::checkbutton .adv.nb.game.turbo.enabled -text Enabled -variable ::adv_options::turbo_enabled -command turbo_enable_cmd] -side top -anchor w
	pack [ttk::frame .adv.nb.game.turbo.b] -side top -fill x
	grid [ttk::spinbox .adv.nb.game.turbo.b.factor -textvariable ::adv_options::turbo -width 5 -wrap 1 -from 10 -to 400 -increment 1] -row 1 -column 1 -sticky ns
	grid [ttk::label .adv.nb.game.turbo.b.l -text "Turbo boost"] -padx 5 -row 1 -column 2 -sticky nsew

	.adv.nb add [ttk::frame .adv.nb.demo] -text Demo
	pack [ttk::labelframe .adv.nb.demo.record -text Record -padding "5 0 5 5"] -padx 5 -side top -fill x
	pack [ttk::checkbutton .adv.nb.demo.record.enabled -onvalue 1 -variable ::adv_options::record_or_playdemo -text Enabled -command demo_enable_cmd] -side top -anchor w
	pack [ttk::entry .adv.nb.demo.record.name -width 24 -textvariable ::adv_options::record] -side top -fill x
	pack [ttk::frame .adv.nb.demo.record.maxbar] -pady 5 -side top -fill x
	grid [ttk::spinbox .adv.nb.demo.record.maxbar.s -textvariable ::adv_options::maxdemo -width 5 -wrap 1 -from 1 -to 999 -increment 1] -row 1 -column 1 -sticky ns
	grid [ttk::label .adv.nb.demo.record.maxbar.l -text "Maximum file size in (KB)"] -padx 5 -row 1 -column 2 -sticky nsew

	pack [ttk::labelframe .adv.nb.demo.play -text Play -padding "5 0 5 5"] -padx 5 -side top -fill x
	pack [ttk::checkbutton .adv.nb.demo.play.enabled -onvalue 2 -variable ::adv_options::record_or_playdemo -text Enabled -command demo_enable_cmd] -side top -anchor w
	pack [ttk::combobox .adv.nb.demo.play.select -values [dict keys $demonames] -state readonly -textvariable ::adv_options::playdemo] -side top -fill x

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
		}
		2 {
			.adv.nb.demo.record.name configure -state disabled
			.adv.nb.demo.record.maxbar.s configure -state disabled
			.adv.nb.demo.play.select configure -state readonly
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

			if {$::options::playdemo == "(NONE)"} {
				set ::options::playdemo ""
			}
		}
	}

	destroy .adv
}

proc config_cmd {} {
	tk_messageBox -icon info -type ok -message "This hasn't been implemented.\nTry the setup program instead." -title TODO
}

proc newgame_cmd {} {
	global exefile
	global exename
	global exe_params
	global iwad_paths
	global pwad_paths
	global demonames
	global savemap

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

	if {$::options::server} {
		set $::options::connect ""
	}

	if {$::options::playdemo == "" && $::options::loadgame == 0 && $::options::connect == ""} {
		set levelnum [lsearch [dict get $::doom_consts::iwad_level_names $::options::iwad] $::options::level]
		if {$levelnum >= 0} {
			lappend params "-warp"
			switch $::options::iwad {
				DOOM -
				DOOM1 -
				CHEX {
					lappend params [expr $levelnum / 9 + 1] 
					lappend params [expr $levelnum % 9 + 1]
				}
				default {
					lappend params [expr $levelnum + 1]
				}
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
		# AFAICT odamex doesn't support the -loadgame parameter
		lappend params "-loadgame"
		lappend params [lindex $savemap $::options::loadgame-1]
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
		lappend params [dict get $demonames $::options::playdemo]
	}

	if {$::options::gametype != "Single Player Game"} {
		if {$::options::dedicated != 0} {
			if {[catch {dict get $exe_params $exename dedicated} param] == 0} {
				lappend params -$param
			}
		} elseif {$::options::server != 0} {
			if {[catch {dict get $exe_params $exename server} param] == 0} {
				lappend params -$param
			}

			if {$::options::privateserver != 0} {
				if {[catch {dict get $exe_params $exename privateserver} param] == 0} {
					lappend params -$param
				}
			}
		} elseif {$::options::autojoin != 0} {
			if {[catch {dict get $exe_params $exename autojoin} param] == 0} {
				lappend params -$param
			}
		} elseif {$::options::connect != ""} {
			if {[catch {dict get $exe_params $exename connect} param] == 0} {
				lappend params -$param
				if {$::options::port != ""} {
					if {[catch {dict get $exe_params $exename clientport} param] == 0} {
						lappend params $::options::connect
						lappend params -$param
						lappend params $::options::port
					} else {
						lappend params [string cat $::options::connect : $::options::port]
					}
				} else {
					lappend params $::options::connect
				}
			}
		}
	}


	catch {exec $exefile {*}$params &}
	#puts $exefile
	#puts $params

	#exit
}

vwait forever
