package edu.grecruiting.model.vacancy;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="VACANCY")
public class VacancyEntity {
	public VacancyEntity(){
		super();
	}
	public VacancyEntity(int id, String post, int fullDay, String forLang,
			int salary, String profSkills, int numSeats, String kategory,
			String info, int companyId) {
		super();
		this.id = id;
		this.post = post;
		this.fullDay = fullDay;
		this.forLang = forLang;
		this.salary = salary;
		this.profSkills = profSkills;
		this.numSeats = numSeats;
		this.kategory = kategory;
		this.info = info;
		this.companyId = companyId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public int getFullDay() {
		return fullDay;
	}
	public void setFullDay(int fullDay) {
		this.fullDay = fullDay;
	}
	public String getForLang() {
		return forLang;
	}
	public void setForLang(String forLang) {
		this.forLang = forLang;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getProfSkills() {
		return profSkills;
	}
	public void setProfSkills(String profSkills) {
		this.profSkills = profSkills;
	}
	public int getNumSeats() {
		return numSeats;
	}
	public void setNumSeats(int numSeats) {
		this.numSeats = numSeats;
	}
	public String getKategory() {
		return kategory;
	}
	public void setKategory(String kategory) {
		this.kategory = kategory;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@Column(name="POST")
	private String post;
	@Column(name="FULL_DAY")
	private int fullDay;
	@Column(name="FOR_LANG")
	private String forLang;
	@Column(name="SALARY")
	private int salary;
	@Column(name="PROF_SKILLS")
	private String profSkills;
	@Column(name="NUM_SEATS")
	private int numSeats;
	@Column(name="KATEGORY")
	private String kategory;
	@Column(name="INFO")
	private String info;
	@Column(name="COMPANY_ID")
	private int companyId;
}
