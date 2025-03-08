class Up < Formula
  version "0.18.0"
  sha256 "c7e2e12f8de9e8a1f514c8fb6c7ba43c05fc9741c9ca7f6532b95742e1648cd4"

  desc "Tool to keep your machine up to date."
  homepage "https://github.com/gibfahn/up"
  url "https://github.com/gibfahn/up/releases/download/#{version}/up-Darwin"
  license "MIT"

  def install
    bin.install "up-Darwin" => "up"

    chmod 0555, bin/"up" # generate_completions_from_executable fails otherwise

    # https://rubydoc.brew.sh/Formula#generate_completions_from_executable-instance_method
    generate_completions_from_executable(bin/"up", "doc", "completions")

    # Install man pages.
    # https://docs.brew.sh/Formula-Cookbook#manuals
    system(bin/"up", "doc", "manpages", "--output-dir", man1)
  end

  test do
    assert_equal(version.to_s, pipe_output("#{bin}/up --version").chomp)
  end
end
