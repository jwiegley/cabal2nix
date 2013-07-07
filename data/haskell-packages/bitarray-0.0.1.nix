{ cabal }:

cabal.mkDerivation (self: {
  pname = "bitarray";
  version = "0.0.1";
  sha256 = "01ijysisw70zaw70hx851axw48agfamdqj21rzzhdqd2ww6bwchb";
  doCheck = false;
  meta = {
    homepage = "http://code.haskell.org/~bkomuves/";
    description = "Mutable and immutable bit arrays";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
