-- thanks to DT over at distrotube
-- reference for options http://projects.haskell.org/xmobar/
-- install xmobar with these flags: --flags="with_alsa" --flags="with_mpd" --flags="with_xft"  OR --flags="all_extensions"
-- you can find weather location codes here: http://weather.noaa.gov/index.html
-- my workspaces are clickable, as are my icons for volume(pavucontrol), battery(xfce4 power manager), calendar(osmo), pacman(pamac), and tux(tlpui), also the haskell icon(emacs)
 
 
Config { font    = "xft:Roboto:pixelsize=16:antialias=true:hinting=true"
       , additionalFonts = [ "xft:FontAwesome:pixelsize=13" ]
       , bgColor = "#282A36"
       , fgColor = "#B45BCF"
       , position = Top
       , alpha = 255
       , lowerOnStart = True
       , hideOnStart = False
       , allDesktops = True
       , persistent = True
       , iconRoot = "/home/jake/.xmonad/xpm/"  -- default: "."
       , commands = [
                      -- Time and date
                      Run Date "\xf133 %d %b %Y (%H:%M)" "date" 50
                      -- Network up and down
                    , Run Network "enp6s0" ["-t", "\xf0aa <rx>kb  \xf0ab <tx>kb"] 20
                      -- Cpu usage in percent
                    , Run Cpu ["-t", "\xf108 <bar>","-H","50","--high","red"] 20
                      -- Ram used number and percent
                    , Run Memory ["-t", "\xf233 <usedbar>"] 20
                      -- Disk space free
                    , Run DiskU [("/", "\xf0c7 <usedbar>")] [] 60
                      -- Run Volume
                    , Run Volume "default" "Master" ["-t" , "<volumebar>:<status>" ] 10
                      -- Wifi
                    , Run Wireless "wlo1" ["-t", "<qualitybar>" ] 30
                      -- Run Brightness
                    , Run Brightness ["-t", "-0", "-M", "<bar>" ] 60
                      -- Run Battery
                    , Run Battery ["-t", "<leftbar>:<acstatus>"] 10
                      -- Runs custom script to check for pacman updates.
                    , Run Com "pacupdate"[] "" 9000
                      -- Runs a standard shell command 'uname -r' to get kernel version
                    , Run Com "uname" ["-r"] "" 36000
                      -- Prints out the left side items such as workspaces, layout, etc.
                    , Run UnsafeStdinReader
                    ]
       , sepChar = "%"
       , alignSep = "}{"
, template = " <action='emacs'><icon=xmonad_xpm_haskell_20.xpm/></action> <fc=#666666>|</fc> %UnsafeStdinReader% }{ <action='tlpui'><icon=xmonad_xpm_tux_20.xpm/></action><fc=#b3afc2>%uname% </fc><fc=#66
| <action='pamac-manager'><icon=xmonad_xpm_pac_20.xpm/></action> </fc><fc=#468042>%pacupdate% </fc><fc=#666666>| <action='alacritty -e htop'><icon=xmonad_xpm_cpu_20.xpm/></action></fc><fc=#FFB86C>%cpu% <
| <icon=xmonad_xpm_memory-icon_20.xpm/></fc><fc=#FF5555>%memory% </fc><fc=#666666>| <icon=xmonad_xpm_harddisk-icon_20.xpm/></fc><fc=#82AAFF>%disku% </fc><fc=#666666>
| <action='nm-connection-editor'><icon=xmonad_xpm_wifi_20.xpm/> %wlo1wi% </action></fc><fc=#666666>| <action='xfce4-power-manager-settings'><icon=xmonad_xpm_batt_20.xpm/></action></fc><fc=#226d72>%batter
| <action=`pavucontrol`><icon=xmonad_xpm_volume_20.xpm/></action></fc><fc=#6726b1>%default:Master% </fc><fc=#666666>| <action='osmo'><icon=xmonad_xpm_calendar-clock-icon_20.xpm/></action></fc><fc=#8BE9FD
       }
