# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.54.0"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.54.0/exoscale-cli_1.54.0_darwin_all.tar.gz"
    sha256 "4edd57cd1adb760178f52f1eb10c95ce3689a4be3a1a8d492618c53faa652417"

    def install
      bin.install "exoscale-cli" => "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.54.0/exoscale-cli_1.54.0_linux_armv6.tar.gz"
      sha256 "31656c50cb7e5011bc59fb4d0311cb49c788415f0e87f37b363b50840c5755cd"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.54.0/exoscale-cli_1.54.0_linux_arm64.tar.gz"
      sha256 "028e194dfa599c45fde77c19c7b7b5e11b8aa1dd14c054f7051157ed1b30a526"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.54.0/exoscale-cli_1.54.0_linux_amd64.tar.gz"
      sha256 "17943f8e0335b4e6c2919367a46ced82d3f23a38fbdf117407bf2fbad403442c"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
  end
end
