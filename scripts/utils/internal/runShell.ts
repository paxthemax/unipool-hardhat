import {spawn} from 'child_process';

export function runShell(command: string): Promise<void> {
  return new Promise((resolve, reject) => {
    const onExit = (err: Error) => {
      if (err) {
        return reject(err);
      }
      resolve();
    };
    spawn(command.split(' ')[0], command.split(' ').slice(1), {
      stdio: 'inherit',
      shell: true,
    }).on('exit', onExit);
  });
}
