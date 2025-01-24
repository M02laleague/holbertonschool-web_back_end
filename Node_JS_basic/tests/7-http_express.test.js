const chai = require('chai');
const chaiHttp = require('chai-http');
const app = require('../7-http_express');

chai.use(chaiHttp);

describe('7-http_express', () => {
    it('should respond with "Hello Holberton School!" on /', (done) => {
        chai.request(app)
            .get('/')
            .end((err, res) => {
                chai.expect(res).to.have.status(200);
                chai.expect(res.text).to.equal('Hello Holberton School!');
                done();
            });
    });

    it('should respond with student list on /students', (done) => {
        chai.request(app)
            .get('/students')
            .end((err, res) => {
                chai.expect(res).to.have.status(200);
                chai.expect(res.text).to.contain('Number of students:');
                done();
            });
    });

    it('should respond with custom message on /home', (done) => {
        chai.request(app)
            .get('/home')
            .end((err, res) => {
                chai.expect(res).to.have.status(200);
                chai.expect(res.text).to.contain("Bah mon gars");
                done();
            });
    });
});
