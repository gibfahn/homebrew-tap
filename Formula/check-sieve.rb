# See upstream issue: https://github.com/dburkart/check-sieve/issues/46
class CheckSieve < Formula
  version '0.9'
  sha256 'cc9a8ee4fe3e6464d1934325d2c17c4f37799aedb85d7fda9e00991e23d93c60'

  desc 'CLI to check Sieve files for errors.'
  homepage 'https://github.com/dburkart/check-sieve'
  url "https://github.com/dburkart/check-sieve/archive/refs/tags/check-sieve-#{version}.tar.gz"
  license 'MIT'

  def install
    system 'make', 'install', "INSTALL_PREFIX=#{prefix}"
  end
end
