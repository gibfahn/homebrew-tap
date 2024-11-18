# See upstream issue: https://github.com/dburkart/check-sieve/issues/46
class CheckSieve < Formula
  version '0.10'
  sha256 '8cac6b8b7120d6c230c705465f95220bd52578e2f1775de8963dc04c0abf8d4e'

  desc 'CLI to check Sieve files for errors.'
  homepage 'https://github.com/dburkart/check-sieve'
  url "https://github.com/dburkart/check-sieve/archive/refs/tags/check-sieve-#{version}.tar.gz"
  license 'MIT'

  def install
    system 'make', 'install', "INSTALL_PREFIX=#{prefix}"
  end
end
