# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.46.0"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.46.0/exoscale-cli_1.46.0_darwin_all.tar.gz"
    sha256 "34d524d9919d968a259956b83bfcb8ae6998eac0663c96c71dda6453140016d8"

    def install
      bin.install "exoscale-cli" => "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.46.0/exoscale-cli_1.46.0_linux_armv6.tar.gz"
      sha256 "de2b5c297d2babfc3af70cfedac6f8ca88e77726ef78b5e9a1780807d666597b"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.46.0/exoscale-cli_1.46.0_linux_arm64.tar.gz"
      sha256 "99c25eb0918bf684065db2b78a9643ed95edc2a6a65fb2d15d8fd8947fa7f7c4"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.46.0/exoscale-cli_1.46.0_linux_amd64.tar.gz"
      sha256 "389efd274f59acc272fd88a2cd0ff35db73b27daa63bc32d21e324daa15ebb81"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
  end
end
