const Colour = artifacts.require('Colour')

module.exports = async (deployer) => {
    await deployer.deploy(Colour)
}
