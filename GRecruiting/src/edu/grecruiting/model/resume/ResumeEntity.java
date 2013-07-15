package edu.grecruiting.model.resume;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="RESUME")
public class ResumeEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int resumeId;
	@Column(name="ADDRESS")
	private String address;
	@Column(name="BIRTH_DATE")
	private Date birthDate;
	@Column(name="AVRG_MARK")
	private double avrgMark;
	@Column(name="EMAIL")
	private String email;
	@Column(name="FOREIGN_LANG")
	private String foreignLang;
	@Column(name="SKILLS")
	private String skills;
	@Column(name="INTERESTS")
	private String interests;
	@Column(name="WANTED_POST")
	private String wantedPost;
	
	public ResumeEntity(){
		super();
	}
	
	public ResumeEntity(int resumeId, int studId, String address,
			Date birthDate, double avrgMark, String email, String foreignLang,
			String skills, String interests, String wantedPost) {
		super();
		this.resumeId = resumeId;
		this.address = address;
		this.birthDate = birthDate;
		this.avrgMark = avrgMark;
		this.email = email;
		this.foreignLang = foreignLang;
		this.skills = skills;
		this.interests = interests;
		this.wantedPost = wantedPost;
	}
	/**
	 * @return the resumeId
	 */
	public int getResumeId() {
		return resumeId;
	}
	/**
	 * @param resumeId the resumeId to set
	 */
	public void setResumeId(int resumeId) {
		this.resumeId = resumeId;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * @return the birthDate
	 */
	public Date getBirthDate() {
		return birthDate;
	}
	/**
	 * @param birthDate the birthDate to set
	 */
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	/**
	 * @return the avrgMark
	 */
	public double getAvrgMark() {
		return avrgMark;
	}
	/**
	 * @param avrgMark the avrgMark to set
	 */
	public void setAvrgMark(double avrgMark) {
		this.avrgMark = avrgMark;
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
	/**
	 * @return the foreignLang
	 */
	public String getForeignLang() {
		return foreignLang;
	}
	/**
	 * @param foreignLang the foreignLang to set
	 */
	public void setForeignLang(String foreignLang) {
		this.foreignLang = foreignLang;
	}
	/**
	 * @return the skills
	 */
	public String getSkills() {
		return skills;
	}
	/**
	 * @param skills the skills to set
	 */
	public void setSkills(String skills) {
		this.skills = skills;
	}
	/**
	 * @return the interests
	 */
	public String getInterests() {
		return interests;
	}
	/**
	 * @param interests the interests to set
	 */
	public void setInterests(String interests) {
		this.interests = interests;
	}
	/**
	 * @return the wantedPost
	 */
	public String getWantedPost() {
		return wantedPost;
	}
	/**
	 * @param wantedPost the wantedPost to set
	 */
	public void setWantedPost(String wantedPost) {
		this.wantedPost = wantedPost;
	}
}
