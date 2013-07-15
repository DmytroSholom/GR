package edu.grecruiting.model.student;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import edu.grecruiting.model.resume.ResumeEntity;
import edu.grecruiting.model.user.UserEntity;


@Entity
@Table(name="STUDENT")
public class StudentEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@Column(name="FNAME", nullable=false)
	private String fname;
	@Column(name="LNAME", nullable=false)
	private String lname;
	@Column(name="STARTDate")
	private Date startDate;
	@Column(name="ENDDate")
	private Date endDate;
	@Column(name="GROUPID")
	private int groupID;
	@Column(name="EMAIL")
	private String email;
	@OneToOne(fetch=FetchType.EAGER)
	private ResumeEntity resumeID;
	@OneToOne(fetch=FetchType.EAGER)
	private UserEntity userId;
	
	public StudentEntity(){
		super();
	}
	public StudentEntity(int id, String fname, String lname, Date startDate,
			Date endDate, int groupID, ResumeEntity resumeID, String email, UserEntity userid) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.startDate = startDate;
		this.endDate = endDate;
		this.groupID = groupID;
		this.resumeID = resumeID;
		this.email = email;
		this.userId = userid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public int getGroupID() {
		return groupID;
	}
	public void setGroupID(int groupID) {
		this.groupID = groupID;
	}
	public ResumeEntity getResumeID() {
		return resumeID;
	}
	public void setResumeID(ResumeEntity resumeID) {
		this.resumeID = resumeID;
	}
	/**
	 * @return the userId
	 */
	public UserEntity getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(UserEntity userId) {
		this.userId = userId;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	
}
