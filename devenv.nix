# SPDX-FileCopyrightText: 2023 - 2025 Dom Rodriguez <shymega@shymega.org.uk>
#
# SPDX-License-Identifier: MIT

{ ... }:

{
  languages.rust = {
    enable = true;
    channel = "stable";
    components = [ "rustc" "cargo" "clippy" "rustfmt" "rust-analyzer" ];
  };

  pre-commit.hooks = {
    rustfmt.enable = true;
    clippy.enable = true;
  };

  devcontainer.enable = true;
}
