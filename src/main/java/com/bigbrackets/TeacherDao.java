package com.bigbrackets;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TeacherDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    public Teacher getTeacher(int id){
        Teacher teacher = jdbcTemplate.queryForObject("select * from teachers where id = ?", new Object[]{ id }, new TeacherRowMapper());
        return teacher;
    }

    public List<Teacher> getTeachers(){
        List<Teacher> teachers = jdbcTemplate.query("select * from teachers", new TeacherRowMapper());
        return teachers;

    }

    public void addTeacher(Teacher teacher){
        jdbcTemplate.update("insert into teachers(name, address, contact_no) values(?, ?, ?)", new Object[]{ teacher.getName(), teacher.getAddress(), teacher.getContact() });
    }

    public void updateTeacher(Teacher teacher){
        jdbcTemplate.update("update teachers set name = ?, address = ?, contact_no = ? where id = ?", new Object[] { teacher.getName(), teacher.getAddress(), teacher.getContact(), teacher.getId() });

    }

    public void deleteTeacher(int id){
        jdbcTemplate.update("delete from teachers where id = ?", new Object[] { id });
    }
}
