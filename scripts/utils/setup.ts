#!/usr/bin/env ts-node

import {copyFileSync, existsSync} from 'fs';

function copyFromDefault(file: string) {
  if (!existsSync(file)) {
    const defaultFile = `${file}.default`;
    if (existsSync(defaultFile)) {
      copyFileSync(defaultFile, file);
    }
  }
}

['.vscode/settings.json'].map(copyFromDefault);
