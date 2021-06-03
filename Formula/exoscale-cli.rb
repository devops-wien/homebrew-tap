# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.31.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/exoscale/cli/releases/download/v1.31.0/exoscale-cli_1.31.0_darwin_amd64.tar.gz"
    sha256 "10e2a3525364e296a2885e7a5051e29e1baa96d1c5b449c1204b5592631e82e8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/exoscale/cli/releases/download/v1.31.0/exoscale-cli_1.31.0_darwin_arm64.tar.gz"
    sha256 "32b54f11016fb947355bb3c629dda7c3fb08b19b0885c890409fba827f129952"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/exoscale/cli/releases/download/v1.31.0/exoscale-cli_1.31.0_linux_amd64.tar.gz"
    sha256 "72e2c113a3669930790ea0a840d004e46bc9c3c2b7c94558e66c0539d1b0627d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/exoscale/cli/releases/download/v1.31.0/exoscale-cli_1.31.0_linux_armv6.tar.gz"
    sha256 "ad281f5bbf5611ec49530b2dcce57ce072d5dc6c9e7cf7d22f2981eb903b0f74"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/exoscale/cli/releases/download/v1.31.0/exoscale-cli_1.31.0_linux_arm64.tar.gz"
    sha256 "c5690dfd3aec52d920ec239df827fb7ac334c815b134f15f6c9c8aa3a145332c"
  end

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
    fish_completion.install "contrib/completion/fish/exo"
    zsh_completion.install "contrib/completion/zsh/exo"
  end
end
