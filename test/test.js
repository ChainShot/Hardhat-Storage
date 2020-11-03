const { assert } = require("chai");

describe("Deployment", function() {
  it("should modify one's storage", async function() {
    const Two = await ethers.getContractFactory("Two");
    const two = await Two.deploy();
    await two.deployed();

    const One = await ethers.getContractFactory("One");
    const one = await One.deploy(two.address);
    await one.deployed();

    await one.modifyX(50);

    assert.equal(await one.x(), 50);
    assert.equal(await two.x(), 0);
  });
});
