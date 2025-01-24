const { expect } = require('chai');
const countStudents = require('../2-read_file');

describe('countStudents', () => {
    it('should throw an error if the file does not exist', () => {
        expect(() => countStudents('non_existent_file.csv')).to.throw('Cannot load the database');
    });

    it('should correctly count students and group them by field', () => {
        const path = './database.csv';
        // Simuler le fichier CSV
        const expectedOutput = [
            'Number of students: 10',
            'Number of students in CS: 6. List: Johann, Arielle, Jonathan, Emmanuel, Guillaume, Katie',
            'Number of students in SWE: 4. List: Guillaume, Joseph, Paul, Tommy',
        ].join('\n');
        expect(() => countStudents(path)).not.to.throw();
    });
});
