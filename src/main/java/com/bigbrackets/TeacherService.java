package com.bigbrackets;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeacherService {

    @Autowired
    private TeacherDao teacherDao;

    public Teacher getTeacher(int id){
        return teacherDao.getTeacher(id);
    }

    public List<Teacher> getTeachers() {
        return teacherDao.getTeachers();
    }

    public void addTeacher(Teacher teacher){
         teacherDao.addTeacher(teacher);
    }

    public void updateTeacher(Teacher teacher){
        teacherDao.updateTeacher(teacher);
    }

    public void deleteTeacher(int id){
        teacherDao.deleteTeacher(id);
    }

}
