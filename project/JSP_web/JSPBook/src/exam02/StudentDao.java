package exam02;

import java.util.ArrayList;

public class StudentDao {
	private static StudentDao instance = new StudentDao();
	private ArrayList<StudentDto> list = new ArrayList<StudentDto>();
	
	private StudentDao() {
		
	}
	
	public ArrayList<StudentDto> getList() {
		return list;
	}
	
	public static StudentDao getInstance() {
		return instance;
	}
	
	public void addList(StudentDto student) {
		list.add(student);
	}
	
	public void setList(int index, StudentDto student) {
		list.set(index, student);
	}
}
