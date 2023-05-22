# Write your MySQL query statement below

/*
SELECT students.student_id, students.student_name, examinations.subject_name, count(examinations.student_id) AS attended_exams
FROM students
LEFT JOIN examinations on students.student_id = examinations.student_id 
GROUP BY subject_name */

# Write your MySQL query statement below
SELECT student.student_id,student.student_name,subject.subject_name,COUNT(exam.subject_name) as attended_exams
FROM Students as student
JOIN Subjects as subject
LEFT JOIN Examinations as exam
ON student.student_id=exam.student_id AND subject.subject_name=exam.subject_name
GROUP BY student.student_id,subject.subject_name
ORDER BY student_id,subject_name;