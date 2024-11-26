class Kctl < Formula
  desc "A very special CLI"
  homepage "https://neilrichardson.online"
  url "https://neilrichardson.online/versions/0.1.2/154b633/kctl-v0.1.2-154b633-darwin-arm64.tar.xz"
  sha256 "854b702b8eef1074011986e9a834aeb26133277b4d2bb93737fdd1d8a963bf96"
  version "0.1.2"
  version_scheme 1

  on_macos do
    on_intel do
      url "https://neilrichardson.online/versions/0.1.2/154b633/kctl-v0.1.2-154b633-darwin-x64.tar.xz"
      sha256 "64645e93782985c9281893be008e4402eea98b26a3de015e59edc0628f40367f"
    end
  end

  def install
    inreplace "bin/kctl", /^CLIENT_HOME=/, "export KCTL_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/kctl"
  end
end
