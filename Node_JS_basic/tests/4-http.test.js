const chai = require('chai');
const chaiHttp = require('chai-http');
const app = require('../4-http');

chai.use(chaiHttp);

describe('4-http', () => {
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
