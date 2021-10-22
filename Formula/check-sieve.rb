# See upstream issue: https://github.com/dburkart/check-sieve/issues/46
class CheckSieve < Formula
  version '0.7'
  sha256 '5a51817cf9da205d56e3bd0bf9e7a87f3ee7005b3edf803b6752dc019735c994'

  desc 'CLI to check Sieve files for errors.'
  homepage 'https://github.com/dburkart/check-sieve'
  url "https://github.com/dburkart/check-sieve/archive/refs/tags/check-sieve-#{version}.tar.gz"
  license 'MIT'

  def install
    system 'make', 'install', "INSTALL_PREFIX=#{prefix}"
  end
end
