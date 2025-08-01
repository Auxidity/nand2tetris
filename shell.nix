{ pkgs ? import <nixpkgs> {
    config = {
        allowUnfree = true;
        android_sdk.accept_license = true;
        };
    }
}:

let
    jdk = pkgs.openjdk21;
in 

pkgs.mkShell {
    buildInputs = [
        jdk
    ];
    
    JAVA_HOME = "${jdk}";

    shellHook = ''
        export PATH="$JAVA_HOME/bin:$PATH"
    '';
}


