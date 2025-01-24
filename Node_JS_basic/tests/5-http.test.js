const chai = require('chai');
const chaiHttp = require('chai-http');
const app = require('../5-http');

chai.use(chaiHttp);

describe('5-http', () => {
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
});
