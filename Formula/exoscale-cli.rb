# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.59.0"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.59.0/exoscale-cli_1.59.0_darwin_all.tar.gz"
    sha256 "7d2751a20d378be69a5a835e0254df9a1f17f6139bc9fe0b3638518d1df63aa6"

    def install
      bin.install "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.59.0/exoscale-cli_1.59.0_linux_armv6.tar.gz"
      sha256 "3326613a19794506bdb4e3107a92df0a3ee148691ceb09c64a0c2d1b1db91929"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.59.0/exoscale-cli_1.59.0_linux_arm64.tar.gz"
      sha256 "c423fa76c8de4c4e2d85b73e7fb6eeb8bc85f8c44b9eb11138cc152ad6a5fa0d"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.59.0/exoscale-cli_1.59.0_linux_amd64.tar.gz"
      sha256 "fd4060e5d6d86643bba9d8836da17683a65d62409679931e49f12376d4022e2b"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
  end
end
