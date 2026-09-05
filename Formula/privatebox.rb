class Privatebox < Formula
  desc "CLI to log in and fetch details from the Privatebox"
  homepage "https://github.com/privatebox/privatebox-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/privatebox/privatebox-cli/releases/download/v1.0.0/privatebox_darwin_arm64.tar.gz"
      sha256 "04bd7298ecedf9c1ba0bfd949aa7807260e3669cf2df7c2df22f4b6708dd1c8f"
    end
    on_intel do
      url "https://github.com/privatebox/privatebox-cli/releases/download/v1.0.0/privatebox_darwin_amd64.tar.gz"
      sha256 "1a960b1d48af392ed038b7b561b52b71f832f301c4622cfbd672749af761b504"
    end
  end

  on_linux do
    url "https://github.com/privatebox/privatebox-cli/releases/download/v1.0.0/privatebox_linux_amd64.tar.gz"
    sha256 "8d2e14f1f058094a47bca62fa38d72ae728d60221cc6668e1e762fb90058931c"
  end

  def install
    bin.install "privatebox"
  end

  test do
    system "#{bin}/privatebox", "--version"
  end
end