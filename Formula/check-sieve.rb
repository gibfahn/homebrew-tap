# See upstream issue: https://github.com/dburkart/check-sieve/issues/46
class CheckSieve < Formula
  version "0.6"
  sha256 "e5d339258ae423e3bcc81142e211f4f448af288b089b0630240f8473adeac2c5"

  desc "CLI to check Sieve files for errors."
  homepage "https://github.com/dburkart/check-sieve"
  url "https://github.com/dburkart/check-sieve/archive/refs/tags/check-sieve-#{version}.tar.gz"
  license "MIT"

  def install
    system "make", "install", "INSTALL_PREFIX=#{prefix}"
  end
end
