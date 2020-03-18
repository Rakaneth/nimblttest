# This is just an example to get you started. A typical binary package
# uses this file as the main entry point of the application.

import bearlibterminal

when isMainModule:
  echo("Hello, World!")

discard terminalOpen()
discard terminalSet("""
window: size=100x40;
input.filter=[keyboard,mouse]
font: assets/UbuntiMono-R.ttf, size=14x14;
""")

terminalRefresh()

echo "your string: ", terminalReadString(newBLPoint(0, 0), 4)

while terminalRead() != TK_CLOSE:
  echo terminalCheck(TK_RETURN)
  discard

terminalClose()
