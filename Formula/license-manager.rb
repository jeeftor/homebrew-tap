# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LicenseManager < Formula
  desc "License Manager Tool"
  homepage "https://github.com/jeeftor/license-manager"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeeftor/license-manager/releases/download/v0.0.1/license-manager_Darwin_x86_64.tar.gz"
      sha256 "f65cda9a8ec15f6c506e1c9fb2178f84eb636afc9e96a9ac22c6d89c9a144b78"

      def install
        bin.install "license-manager"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeeftor/license-manager/releases/download/v0.0.1/license-manager_Darwin_arm64.tar.gz"
      sha256 "c2c781e4df7cb05f8ffa544e2f43a3c5737a2d88c55b88986d7f0ddc1201afea"

      def install
        bin.install "license-manager"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jeeftor/license-manager/releases/download/v0.0.1/license-manager_Linux_x86_64.tar.gz"
        sha256 "f9629085b515585f696b0c0fb7d8c01165e6c441d1466bbf10cd5b26088e003a"

        def install
          bin.install "license-manager"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jeeftor/license-manager/releases/download/v0.0.1/license-manager_Linux_arm64.tar.gz"
        sha256 "4acafca60d8e9ba9d0bf6718e01f40f222e65523f82724a7b1826b90e21a5574"

        def install
          bin.install "license-manager"
        end
      end
    end
  end

  test do
    system "#{bin}/license-manager --version"
  end
end
