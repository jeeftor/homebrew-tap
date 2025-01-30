# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LicenseManager < Formula
  desc "License Manager Tool"
  homepage "https://github.com/jeeftor/license-manager"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeeftor/license-manager/releases/download/v0.2.2/license-manager_Darwin_x86_64.tar.gz"
      sha256 "8f0fdde6723db13e29ded9bd39e6625556c565f54a88614c31dfc497a046d539"

      def install
        bin.install "license-manager"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeeftor/license-manager/releases/download/v0.2.2/license-manager_Darwin_arm64.tar.gz"
      sha256 "3e16742b920699042cc74a8aed7674253ce06a1dd2bffdc76357f7b83ac0d547"

      def install
        bin.install "license-manager"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jeeftor/license-manager/releases/download/v0.2.2/license-manager_Linux_x86_64.tar.gz"
        sha256 "f8990a5b1513016c5f6544487d77b8694dae7cf6795447b97ad9e245b089b7ef"

        def install
          bin.install "license-manager"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jeeftor/license-manager/releases/download/v0.2.2/license-manager_Linux_arm64.tar.gz"
        sha256 "9df6a79d33b92965e28eeb62a56bc0f2c62a344f4326a0733b322e907ef83eab"

        def install
          bin.install "license-manager"
        end
      end
    end
  end

  test do
    system "#{bin}/license-manager version -s"
  end
end
