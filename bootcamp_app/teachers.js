const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const args = process.argv.slice(2);
const querCoh = args[0];

pool.query(`
SELECT cohorts.name as ch_name, teachers.name as tch_name FROM teachers
JOIN assistance_requests ON (teachers.id = teacher_id)
JOIN students ON (student_id = students.id)
JOIN cohorts ON (cohorts.id=cohort_id) 
WHERE cohorts.name LIKE '%${querCoh}%'
LIMIT 10;
`)
.then(res => {
  for( let entry of res.rows) {
    console.log(`${entry.ch_name}: ${entry.tch_name}`);
  }
})
.catch(err => console.error('query error', err.stack));