const { Pool } = require('pg');

const args = process.argv.slice(2); //taking the input

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});


// pool.query(`
// SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
// FROM teachers
// JOIN assistance_requests ON teacher_id = teachers.id
// JOIN students ON student_id = students.id
// JOIN cohorts ON cohort_id = cohorts.id
// WHERE cohorts.name = '${process.argv[3]}'
// ORDER BY teacher;
// `)
// .then(res => {
//   // res.rows.forEach(user => {
//   //   console.log(`${user}`);
//   //   // console.log(`${row.cohort}: ${row.teacher}`);
//   // })    
//   // res.rows.forEach(row => {

//   //     console.log(`${row.cohort}: ${row.teacher}`);
//   // })
//   console.log(res);
// });

pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = '${process.argv[2] || 'JUL02'}'
ORDER BY teacher;
`)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
});