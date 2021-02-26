hyper = {"cmd", "alt", "ctrl"}


hs.hotkey.bindSpec({ hyper, "t"}, hs.toggleConsole)
hs.hotkey.bindSpec({ hyper, "r"}, hs.reload)


hs.hotkey.bind( hyper, "h", function()
  hs.alert.show("Hammerspoon Working")
end)
