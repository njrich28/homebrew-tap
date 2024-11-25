class Kctl < Formula
  desc "A very special CLI"
  homepage "https://neilrichardson.online"
  url "https://neilrichardson.online/versions/0.1.1/1c7fabd/kctl-v0.1.1-1c7fabd-darwin-arm64.tar.xz"
  sha256 "07a456975cd13b468982487de0c3e5d2b68bd20b6999ff443f1cc6fb65d55b28"
  version "0.1.1"
  version_scheme 1

  on_macos do
    on_intel do
      url "https://neilrichardson.online/versions/0.1.1/1c7fabd/kctl-v0.1.1-1c7fabd-darwin-x64.tar.xz"
      sha256 "1fc2e4d8ac42cfeb97eb98f047967f597e0abfab81ca18a88c5cac2800c01ed5"
    end
  end

  def install
    inreplace "bin/kctl", /^CLIENT_HOME=/, "export KCTL_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/kctl"
  end
end
