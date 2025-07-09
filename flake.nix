{
  description = "Flutter + Android dev shell";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
      in {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            flutter
            android-tools
            git
            unzip
            curl
            bash
            openssl
            cacert
            libGL
            libGLU
            glibcLocales
            gtk3
			openjdk17
            gdk-pixbuf
			steam-run
            cairo
            pango
            libxkbcommon
			mesa-demos    
            coreutils
			bashInteractive

          ];

          shellHook = ''
		  export FLUTTER_HOME=${pkgs.flutter}
          export JAVA_HOME=${pkgs.openjdk17}
          export ANDROID_HOME=$HOME/Android/Sdk

          export PATH="$FLUTTER_HOME/bin:$JAVA_HOME/bin:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH"

          mkdir -p $ANDROID_HOME/platform-tools
  ln -sf ${pkgs.android-tools}/bin/adb $ANDROID_HOME/platform-tools/adb


          '';
        };
      });
}
