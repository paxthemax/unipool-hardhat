#!/bin/env ts-node

// TODO: proper usage string for the task

import * as dotenv from 'dotenv';
import {runShell} from './internal/runShell';

dotenv.config();
const cmdArgs = process.argv.slice(2);

async function performAction(args: string[]) {
  if (args.length < 2) {
    console.error('Usage: export <network> <files, ...>');
    process.exit(1);
  }
  const network = args[0];
  const files = args.slice(1).join(' ');

  try {
    await runShell(`cross-env HARDHAT_DEPLOY_LOG=true HARDHAT_NETWORK=${network} ts-node --files ${files}`);
  } catch (error) {
    process.exit(1);
  }
}

performAction(cmdArgs);
