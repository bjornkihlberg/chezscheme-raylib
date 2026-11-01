let
  pkgs = import <nixpkgs> {};
  pkg-chezscheme-tools-src =
    pkgs.fetchFromGitHub {
      owner = "bjornkihlberg";
      repo = "chezscheme-tools";
      rev = "19012414bf144c0a67ee6e23c378c0ee5ae84968";
      sha256 = "sha256-NNRhawdFAzzzQH9e6sp/EtV8aeDupVrbWgqPgowT3es=";
    };
  pkg-chezscheme-tools = pkgs.callPackage pkg-chezscheme-tools-src {};
in
  pkgs.clangStdenv.mkDerivation {
    name = "dev-shell";

    src = null;

    nativeBuildInputs = [
      pkgs.chez
      pkgs.c2ffi
      pkg-chezscheme-tools
    ];

    buildInputs = [
      pkgs.raylib
    ];

    shellHook = ''
      export C_INCLUDE_PATH=${pkgs.clang}/resource-root/include:$C_INCLUDE_PATH
      export C_INCLUDE_PATH=${pkgs.glibc.dev}/include:$C_INCLUDE_PATH
      export C_INCLUDE_PATH=${pkgs.raylib}/include:$C_INCLUDE_PATH
      export LD_LIBRARY_PATH=${pkgs.raylib}/lib:$LD_LIBRARY_PATH
    '';
  }
