{ stdenv, pkgs, fetchFromGithub, ...}:

{
  nvchad = stdenv.mkDerivation rec {
    name = "nvchad";
    version = "";
    dontBuild = true;

  src = pkgs.fetchFromGithub {
    owner = "NvChad";
    repo = "NvChad";
    rev = "v2.5";
    sha256 = "";
  };

  installPhase = ''
    mkdir $out
    cp -aR $src/* $out/
  '';
  };
}
