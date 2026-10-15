# See upstream issue: https://github.com/dburkart/check-sieve/issues/46
class CheckSieve < Formula
  version '1.0.1'
  sha256 '447f65bb235e180e330195514acf5b8a5b042511f9793ce3f06afbd1debfde88'

  desc 'CLI to check Sieve files for errors.'
  homepage 'https://github.com/dburkart/check-sieve'
  url "https://github.com/dburkart/check-sieve/archive/refs/tags/v#{version}.tar.gz"
  license 'MIT'

  def install
    system 'make', 'install', "INSTALL_PREFIX=#{prefix}"
  end
end
