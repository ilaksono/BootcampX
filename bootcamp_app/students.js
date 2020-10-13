const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

// pool.query(`
// SELECT students.id, students.name as stud_name, cohorts.name as cohorts_name
// FROM students
// JOIN cohorts ON cohorts.id = cohort_id
// LIMIT 5;
// `)
// .then(res => {
//   console.log(res.rows);
// })
// .catch(err => console.error('query error', err.stack));

const args = process.argv.slice(2);
const querName = args[0];
const querLimit = args[1];
const queryString = `SELECT students.id, students.name as stud_name, cohorts.name as cohorts_name 
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE $1
LIMIT $2`;

pool.query(queryString, [`%${querName}%`, querLimit]).then(res => {
  for( let entry of res.rows) {
    console.log(`${entry.stud_name} has an id of ${entry.id} and was in the ${entry.cohorts_name} cohort`);
  }
})
.catch(err => console.error('query error', err.stack));;

// pool.query(`
// SELECT students.id, students.name as stud_name, cohorts.name as cohorts_name
// FROM students
// JOIN cohorts ON cohorts.id = cohort_id
// WHERE cohorts.name LIKE '%${querName}%'
// LIMIT ${querLimit};
// `)
// .then(res => {
//   for( let entry of res.rows) {
//     console.log(`${entry.stud_name} has an id of ${entry.id} and was in the ${entry.cohorts_name} cohort`);
//   }
// })
// .catch(err => console.error('query error', err.stack));