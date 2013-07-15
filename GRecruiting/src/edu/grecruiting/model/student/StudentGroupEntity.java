package edu.grecruiting.model.student;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="STUD_GROUP")
public class StudentGroupEntity {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int groupID;
	@Column(name="NAME")
	private String name;
	
	@OneToMany(targetEntity=edu.grecruiting.model.student.StudentEntity.class, fetch=FetchType.EAGER)
	@JoinColumn(name="GROUPID")
	private List<StudentEntity> students;
	
	public StudentGroupEntity(){
		super();
	}
	public StudentGroupEntity(int groupID, String name) {
		super();
		this.groupID = groupID;
		this.name = name;
	}
	
	public int getGroupID() {
		return groupID;
	}
	public void setGroupID(int groupID) {
		this.groupID = groupID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<StudentEntity> getStudents() {
		return students;
	}
	public void setStudents(List<StudentEntity> students) {
		this.students = students;
	}
	
}
