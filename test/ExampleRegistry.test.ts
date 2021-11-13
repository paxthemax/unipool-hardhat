import {expect} from './utils/chai-setup';
import {deployments, ethers, getUnnamedAccounts} from 'hardhat';
import {ExampleRegistry} from '../typechain';
import {setupUsers} from './utils';

const setup = deployments.createFixture(async () => {
  await deployments.fixture('ExampleRegistry');
  const contracts = {
    ExampleRegistry: (await ethers.getContract('ExampleRegistry')) as ExampleRegistry,
  };
  const users = await setupUsers(await getUnnamedAccounts(), contracts);
  return {
    ...contracts,
    users,
  };
});

describe('ExampleRegistry', async function () {
  it('should set the message', async function () {
    const {users, ExampleRegistry} = await setup();
    const testMessage = 'Hello world!';
    await expect(users[0].ExampleRegistry.setMessage(testMessage))
      .to.emit(ExampleRegistry, 'MessageSet')
      .withArgs(users[0].address, testMessage);
  });
});
