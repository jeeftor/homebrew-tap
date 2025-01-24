# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LicenseManager < Formula
  desc "License Manager Tool"
  homepage "https://github.com/jeeftor/license-manager"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jeeftor/license-manager/releases/download/v0.1.0/license-manager_Darwin_x86_64.tar.gz"
      sha256 "8e2a25f43f66605668660341b3af93b663a1eb87a2f16efe3f387cca9b402676"

      def install
        bin.install "license-manager"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jeeftor/license-manager/releases/download/v0.1.0/license-manager_Darwin_arm64.tar.gz"
      sha256 "70bfd6923ba054e71d7433014f9f941330d7386518e86448ab06dca2ee31736c"

      def install
        bin.install "license-manager"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jeeftor/license-manager/releases/download/v0.1.0/license-manager_Linux_x86_64.tar.gz"
        sha256 "b0be6aafaae435fe9b2a0a3c47fde1fdd3312399cfeb4404443155c514f8b1e5"

        def install
          bin.install "license-manager"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jeeftor/license-manager/releases/download/v0.1.0/license-manager_Linux_arm64.tar.gz"
        sha256 "65de2aa86d89bf1cdeef184abc3347ce8eb6d8c062990741a371b537e4bd7f14"

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
