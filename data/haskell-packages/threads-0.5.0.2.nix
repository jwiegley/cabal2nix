{ cabal, base-unicode-symbols, concurrent-extra, HUnit, stm, test-framework
, test-framework-hunit
}:

cabal.mkDerivation (self: {
  pname = "threads";
  version = "0.5.0.2";
  sha256 = "14ccmjg56429a3mzx11ccv18bvkqg56ph9kbpmhdx2ajar80g6jm";
  buildDepends = [ base-unicode-symbols stm ];
  testDepends = [
    base-unicode-symbols concurrent-extra HUnit stm test-framework
    test-framework-hunit
  ];
  doCheck = false;
  meta = {
    homepage = "https://github.com/basvandijk/threads";
    description = "Fork threads and wait for their result";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
