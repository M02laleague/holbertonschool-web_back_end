const { expect } = require('chai');
const displayMessage = require('../0-console');

describe('displayMessage', () => {
    it('should log the correct message', () => {
        const message = 'Hello, World!';
        const consoleSpy = sinon.spy(console, 'log');
        displayMessage(message);
        expect(consoleSpy.calledWith(message)).to.be.true;
        consoleSpy.restore();
    });
});
