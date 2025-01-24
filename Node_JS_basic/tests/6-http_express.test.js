const chai = require('chai');
const chaiHttp = require('chai-http');
const app = require('../6-http_express');

chai.use(chaiHttp);

describe('6-http_express', () => {
    it('should respond with "Hello Holberton School!" on /', (done) => {
        chai.request(app)
            .get('/')
            .end((err, res) => {
                chai.expect(res).to.have.status(200);
                chai.expect(res.text).to.equal('Hello Holberton School!');
                done();
            });
    });
});
