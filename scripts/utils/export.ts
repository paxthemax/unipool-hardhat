#!/bin/env ts-node

// TODO: proper usage string for the task

import * as dotenv from 'dotenv';
import {runShell} from './internal/runShell';

dotenv.config();
const cmdArgs = process.argv.slice(2);

async function performAction(args: string[]) {
  if (args.length < 2) {
    console.error('Usage: export <network> <file>');
    process.exit(1);
  }
  const network = args[0];
  const file = args[1];

  try {
    await runShell(`hardhat --network ${network} export --export ${file}`);
  } catch (error) {
    process.exit(1);
  }
}

performAction(cmdArgs);
