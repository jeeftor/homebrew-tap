# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LicenseManager < Formula
  desc "License Manager Tool"
  homepage "https://github.com/jeeftor/license-manager"
  version "0.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeeftor/license-manager/releases/download/v0.3.7/license-manager_Darwin_x86_64.tar.gz"
      sha256 "5a4f67403c6aa61d9a17bf27b5592e61f2a11cf2e1b5d066405dd93b7a5bf4ca"

      def install
        bin.install "license-manager"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeeftor/license-manager/releases/download/v0.3.7/license-manager_Darwin_arm64.tar.gz"
      sha256 "e22a9076cae3e7c00de01a6be552ca656826704908d44670258aad6600f4d30f"

      def install
        bin.install "license-manager"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jeeftor/license-manager/releases/download/v0.3.7/license-manager_Linux_x86_64.tar.gz"
        sha256 "6c4f1d1aea8ffe2497caaa2dd861f2a7954ca6694622c341c209e1a14adb3eac"

        def install
          bin.install "license-manager"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jeeftor/license-manager/releases/download/v0.3.7/license-manager_Linux_arm64.tar.gz"
        sha256 "c54945934fe2cad7e634837507609d224fd4866a10a5e0eed3634780cc1f7f1f"

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
