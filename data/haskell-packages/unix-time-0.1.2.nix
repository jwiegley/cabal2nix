{ cabal, hspec-expectations, test-framework-hunit, test-framework-th-prime }:

cabal.mkDerivation (self: {
  pname = "unix-time";
  version = "0.1.2";
  sha256 = "146m4b93bla0pbf76bmff6f3aq9zx60cwy58mkqa0a4dyndd3pid";
  testDepends = [
    hspec-expectations test-framework-hunit test-framework-th-prime
  ];
  doCheck = false;
  meta = {
    description = "Unix time parser/formatter and utilities";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
