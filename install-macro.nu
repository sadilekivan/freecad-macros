#!/usr/bin/env nu

def main [ ] {
  cp -v -p *.FCMacro $env.FREECAD_MACRO_DIR

  print "\n\nFreecad macro directory state:"
  ls $env.FREECAD_MACRO_DIR
}
