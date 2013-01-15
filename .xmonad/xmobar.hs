Config  { font            = "xft:Monaco for Powerline-7:bold"
        , bgColor         = "#333333"
        , fgColor         = "#FFFFFF"
        , position        = Static { xpos = 0, ypos = 0, width = 1380, height = 16 }
        -- , position        = Top
        , border          = NoBorder
        , borderColor     = "#000000"
        , lowerOnStart    = True
        , commands        = [ Run MPD ["-t", "<state>: <artist> - <title>"] 10
                            , Run Battery ["-t","Battery: <left>% - <timeleft>"] 10
                            -- , Run Com "printf" ["%$(echo $(xwininfo -name stalonetray|grep Width|tr -s ' '|cut -d' ' -f3)/1.6|bc)s"] "space" 20
                            , Run Date "%a %b %_d %l:%M" "date" 600
                            , Run StdinReader
                            ]
        , sepChar         = "%"
        , alignSep        = "}{"
        , template        = "<fc=#FFFFFF>Arch</fc><fc=#1793D1>Linux</fc>::XMonad |%StdinReader% }{ ⮃ %mpd% <fc=#1793D1>⮃ %battery%</fc> <fc=#999999>⮃ %date%</fc> ⮃"
        }
