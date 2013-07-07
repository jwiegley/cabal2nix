{ cabal, ansi-terminal, ansi-wl-pprint, extensible-exceptions, hostname, random
, regex-posix, time, xml
}:

cabal.mkDerivation (self: {
  pname = "test-framework";
  version = "0.8";
  sha256 = "1w895nq357zpc4v6vr5nbszyrw7cpsjq5bj38vdd10bfpjjmijcl";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    ansi-terminal ansi-wl-pprint extensible-exceptions hostname random
    regex-posix time xml
  ];
  doCheck = false;
  meta = {
    homepage = "http://batterseapower.github.com/test-framework/";
    description = "Framework for running and organising tests, with HUnit and QuickCheck support";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
