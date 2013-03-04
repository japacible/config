import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig
import XMonad.Prompt
import XMonad.Prompt.RunOrRaise
import XMonad.Hooks.SetWMName 
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.ManageDocks
import XMonad.Layout.NoBorders
import XMonad.Util.Run
import Data.Monoid
import System.Exit

--Terminal of choice
myTerminal = "gnome-terminal"

--If focus follows mouse pointer
myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True

--Border settings
myBoarderWidth = 1
myNormalBorderColor = "#DDDDDD"
myFocusedBorderColor = "$FF0000"

--Workspaces
myWorkspaces = ["1","2","3","4","5","6","7","8","9", "0"]

--Layout
myLayout = tiled ||| Mirror tiled ||| Full
  where
    --Default tiling algo partitions screen into two panes
    tiled = Tall nmaster delta ratio
    --Default num of windows in master pane
    nmaster = 1
    --Default proportion of screen for master pane
    ratio = 1/2
    --Percent of screen incr when resizing panes
    delta = 3/100

defaults = defaultConfig {
  terminal            = myTerminal,
  focusFollowsMouse   = myFocusFollowsMouse,
  borderWidth         = myBorderWidth,
  workspace           = myWorkspaces,
  normalBorderColor   = myNormalBordreColor,
  focusedBorderColor  = myFocusedBorderColor,
  layoutHook          = myLayout
}
