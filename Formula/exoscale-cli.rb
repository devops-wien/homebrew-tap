# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.49.0"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.49.0/exoscale-cli_1.49.0_darwin_all.tar.gz"
    sha256 "7f627d01ee5c5303c206346c226019beee19555468efc595cb554a55e2ec1a96"

    def install
      bin.install "exoscale-cli" => "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.49.0/exoscale-cli_1.49.0_linux_armv6.tar.gz"
      sha256 "3e4d9fb7c7275f6336a8b53adecc7f1341a684fd9fb52b497f72d40a8bcb9945"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.49.0/exoscale-cli_1.49.0_linux_arm64.tar.gz"
      sha256 "530f67b8bf5087abd5acd4e1ce80e1cbb351b5d8e6bb69b7f165280bc0d49894"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.49.0/exoscale-cli_1.49.0_linux_amd64.tar.gz"
      sha256 "e1767302df2d64367dd175f6c01b7547aa778991a5a47bf828d673c3ab455c69"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
  end
end
