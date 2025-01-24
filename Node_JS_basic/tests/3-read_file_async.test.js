const { expect } = require('chai');
const countStudents = require('../3-read_file_async');

describe('countStudents (async)', () => {
    it('should reject if the file does not exist', async () => {
        try {
            await countStudents('non_existent_file.csv');
        } catch (error) {
            expect(error.message).to.equal('Cannot load the database');
        }
    });

    it('should resolve with correct data if the file exists', async () => {
        const path = './database.csv';
        const expectedOutput = [
            'Number of students: 10',
            'Number of students in CS: 6. List: Johann, Arielle, Jonathan, Emmanuel, Guillaume, Katie',
            'Number of students in SWE: 4. List: Guillaume, Joseph, Paul, Tommy',
        ].join('\n');
        const result = await countStudents(path);
        expect(result).to.equal(expectedOutput);
    });
});
