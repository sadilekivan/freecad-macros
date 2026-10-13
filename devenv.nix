{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  languages.python.enable = true;
  scripts.install-macro = {
    package = pkgs.nushell;
    exec = builtins.readFile ./install-macro.nu;
  };

  # https://devenv.sh/tests/
  enterTest = ''
    echo "Running tests"
    git --version | grep --color=auto "${pkgs.git.version}"
  '';

  env = {
    FREECAD_MACRO_DIR = "${builtins.getEnv "HOME"}/.local/share/FreeCAD/v1-1/Macro/";
  };
}
