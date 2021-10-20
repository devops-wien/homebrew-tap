# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.45.2"
  bottle :unneeded

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.45.2/exoscale-cli_1.45.2_darwin_all.tar.gz"
    sha256 "6d7def1d66a52e7d6b0297e8eeefbc1b76b2a39dc364be30800c10344cb1b3e6"
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.45.2/exoscale-cli_1.45.2_linux_armv6.tar.gz"
      sha256 "4e6b7dae4813323acbf10ede3c6ff1ed501ef83ce514d58f3652b3903f96d255"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.45.2/exoscale-cli_1.45.2_linux_arm64.tar.gz"
      sha256 "6cca3e456be5a1fa48449c9408e3235e9182137ec14822492a14d502de164788"
    end
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.45.2/exoscale-cli_1.45.2_linux_amd64.tar.gz"
      sha256 "b6d58769fc90e40e1e1d8fe1bb9a8fe87585ce46e2965ede7a66037d044e0650"
    end
  end

  def install
    bin.install "exoscale-cli" => "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
    zsh_completion.install "contrib/completion/zsh/_exo"
  end
end
