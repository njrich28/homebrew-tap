class Kctl < Formula
  desc "A very special CLI"
  homepage "https://neilrichardson.online"
  url "https://neilrichardson.online/versions/0.1.0/7c704e8/kctl-v0.1.0-7c704e8-darwin-arm64.tar.xz"
  sha256 "6b86d75f97fc7668ecab60e195a973757523f53cc2086d541aa210fbc97babac"
  version "0.1.0"
  version_scheme 1

  on_macos do
    on_intel do
      url "https://neilrichardson.online/versions/0.1.0/7c704e8/kctl-v0.1.0-7c704e8-darwin-x64.tar.xz"
      sha256 "203bf4f26ebec312bdb924b0665a4ea85e39dbacafd3f4462dbb1cd8b49e5dbc"
    end
  end

  def install
    # inreplace "bin/kctl", "/^CLIENT_HOME=/", "export KCTL_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/kctl"
  end
end
