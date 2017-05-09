-- Hammerspoon Configuration File

-- A global variable for the Hyper Mode
k = hs.hotkey.modal.new({}, "F17")

-- Pass Through Bindings
passthrough = {
  {'h', 'Google Hangouts'},
  {'k', 'Google Keep'},
  {'Left', 'Left Arrow'},
  {'Down', 'Down Arrow'},
  {'Up', 'Up Arrow'},
  {'Right', 'Right Arrow'},
}

-- each of those keys will pass through because its easier to handle via Automator or SizeUp or ...
for i, app in ipairs(passthrough) do
  k:bind({}, app[1], nil, function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, app[1]) end)
end

launch = function(appname)
  hs.application.launchOrFocus(appname)
  k.triggered = true
end

-- Single keybinding for app launch
singleapps = {
  {'l', 'Slack'},
  {'t', 'TextMate 2'},
  {'j', 'IntelliJ IDEA'},
  {'e', 'STS'},
  {'s', 'Terminal'},
  {'p', 'Google Play Music Desktop Player'},
  {'w', 'Google Chrome'}
}

for i, app in ipairs(singleapps) do
  k:bind({}, app[1], function() launch(app[2]); k:exit(); end)
end

-- HYPER+L: Open news.google.com in the default browser
nfun = function()
  news = "app = Application.currentApplication(); app.includeStandardAdditions = true; app.doShellScript('open http://news.google.com')"
  hs.osascript.javascript(news)
  k.triggered = true
end
k:bind('', 'n', nil, nfun)

-- Enter Hyper Mode when F18 (Hyper/Capslock) is pressed
pressedF18 = function()
  k.triggered = false
  k:enter()
end

-- Leave Hyper Mode when F18 (Hyper/Capslock) is pressed,
--   send ESCAPE if no other keys are pressed.
releasedF18 = function()
  k:exit()
  if not k.triggered then
    hs.eventtap.keyStroke({}, 'ESCAPE')
  end
end

-- Bind the Hyper key
f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)