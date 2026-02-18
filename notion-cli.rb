# typed: false
# frozen_string_literal: true

class NotionCli < Formula
  desc "Full-featured CLI for Notion. Like gh for GitHub, but for Notion."
  homepage "https://github.com/4ier/notion-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/4ier/notion-cli/releases/download/v0.2.0/notion-cli_0.2.0_darwin_amd64.tar.gz"
      sha256 "1e2a9ba53b8aeeac6f240691896ab1c0866532e5373bea9e27415922d7c612b9"
    end

    on_arm do
      url "https://github.com/4ier/notion-cli/releases/download/v0.2.0/notion-cli_0.2.0_darwin_arm64.tar.gz"
      sha256 "327f321aee7de42f41a1b96276b2615d94950fc82e7d8bfd653f1e5a0cb39fb9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/4ier/notion-cli/releases/download/v0.2.0/notion-cli_0.2.0_linux_amd64.tar.gz"
      sha256 "e54bf88ac5c75b39042f2f98df443522e10257838730cb96a85f8e10f3c94ef4"
    end

    on_arm do
      url "https://github.com/4ier/notion-cli/releases/download/v0.2.0/notion-cli_0.2.0_linux_arm64.tar.gz"
      sha256 "e72d7b00b8c9bf7af83f10fb22eff2e31dedb64739b9f436547afd86d5fed91a"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    assert_match "notion-cli", shell_output("#{bin}/notion --version")
  end
end
