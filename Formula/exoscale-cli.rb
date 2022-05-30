# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.55.0"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.55.0/exoscale-cli_1.55.0_darwin_all.tar.gz"
    sha256 "ce44008d47bdbb6f85cf9c1fea676212738953e3935ea2f95fd5a9ecdeff667b"

    def install
      bin.install "exoscale-cli" => "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.55.0/exoscale-cli_1.55.0_linux_armv6.tar.gz"
      sha256 "6a7d4ca8686ab595bd7a5c8aa99141f44fda3eedb57fdb7c3e7ce6059e776c49"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.55.0/exoscale-cli_1.55.0_linux_arm64.tar.gz"
      sha256 "f1a33d24f805d3f273397f9cc6751b15eb1d7d1b3d8e17cc202d57c65e2b47b4"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.55.0/exoscale-cli_1.55.0_linux_amd64.tar.gz"
      sha256 "39ac52883742164cf1c0c55c425287c3763fbabb80c021dbde9a89c1efa594ec"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
  end
end
