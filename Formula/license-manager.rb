# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LicenseManager < Formula
  desc "License Manager Tool"
  homepage "https://github.com/jeeftor/license-manager"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeeftor/license-manager/releases/download/v0.0.5/license-manager_Darwin_x86_64.tar.gz"
      sha256 "19a8d1353d79b1d7c0b995ccb6e741d02fd3b500e5489ca72addae10ea0cb509"

      def install
        bin.install "license-manager"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeeftor/license-manager/releases/download/v0.0.5/license-manager_Darwin_arm64.tar.gz"
      sha256 "71187dc0f993c09e60b2cc0cc2d1b662aba3bc09621519a5d55fca4813394063"

      def install
        bin.install "license-manager"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jeeftor/license-manager/releases/download/v0.0.5/license-manager_Linux_x86_64.tar.gz"
        sha256 "07fa4059c9bff68f85cdabcb4e5dfab75efe506ae8bcbadc3d422fcace1e5ca9"

        def install
          bin.install "license-manager"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jeeftor/license-manager/releases/download/v0.0.5/license-manager_Linux_arm64.tar.gz"
        sha256 "7f319f89a0fd06154071a4ffa313fcbfdf8f94dd358c9b30c9557db0ac086923"

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
