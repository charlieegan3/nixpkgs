{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  name = "regal";
  version = "0.24.0";

  src = fetchFromGitHub {
    owner = "StyraInc";
    repo = "regal";
    rev = "v${version}";
    hash = "sha256-1fxrq0v7d5mxvm8jjzjhbks71a6rnk3rni59c3v8q1nhhzjbfavd";
  };

  vendorHash = "sha256-5rj2dCWya24VUmIFf0oJQop80trq9NnqqFlBW/A6opk=";

  meta = with lib; {
    description = "a linter and language server for Rego";
    mainProgram = "regal";
    homepage = "https://github.com/StyraInc/regal";
    license = licenses.asl20;
    maintainers = with maintainers; [ rinx ];
  };
}
