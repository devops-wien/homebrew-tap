# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.74.2"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.74.2/exoscale-cli_1.74.2_darwin_all.tar.gz"
    sha256 "3fca30bd97ba67bb7cf78868284ec47d8e649523ceed8f295a553e6b9542dc6d"

    def install
      bin.install "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.74.2/exoscale-cli_1.74.2_linux_armv6.tar.gz"
      sha256 "75cdb4705f0eeedb86936194914c64bd2d5d879e94cc5bcca87afe3f6a24ff60"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.74.2/exoscale-cli_1.74.2_linux_arm64.tar.gz"
      sha256 "cbae7d38448050737d71bdd19e6a9d96413973107143e97509c8ce9b13f6ed5e"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.74.2/exoscale-cli_1.74.2_linux_amd64.tar.gz"
      sha256 "746a3fb2bbb29d104e2e61bf3cd194d85d02f808f8dfb7d80bebb75cebec47de"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
  end
end
