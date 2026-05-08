//=============================================================================
// Copyright (c) 2026-present Allan CORNET (Nelson)
//=============================================================================
// This file is part of Nelson.
//=============================================================================
// LICENCE_BLOCK_BEGIN
// SPDX-License-Identifier: LGPL-3.0-or-later
// LICENCE_BLOCK_END
//=============================================================================
use std::process::ExitCode;

use nelson_pdf_builder::config::{Cli, Config};

fn main() -> ExitCode {
    let cli = Cli::parse_args();
    match Config::from_cli(cli).and_then(nelson_pdf_builder::run) {
        Ok(()) => ExitCode::SUCCESS,
        Err(err) => {
            eprintln!("ERROR: {err:#}");
            ExitCode::FAILURE
        }
    }
}
