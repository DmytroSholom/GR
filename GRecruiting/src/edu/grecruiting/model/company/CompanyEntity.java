package edu.grecruiting.model.company;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import edu.grecruiting.model.user.UserEntity;
import edu.grecruiting.model.vacancy.VacancyEntity;

@Entity
@Table(name="COMPANY")
public class CompanyEntity {
	public CompanyEntity() {
		super();
	}
	public CompanyEntity(int id, String name, String address, String email,
			String web, String contname, String compdesc, String phone, List<VacancyEntity> vacancies, UserEntity userId) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.email = email;
		this.web = web;
		this.contname = contname;
		this.compdesc = compdesc;
		this.phone = phone;
		this.vacancies = vacancies;
		this.userId = userId;
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@Column(name="NAME")
	private String name;
	@Column(name="ADDRESS")
	private String address;
	@Column(name="EMAIL")
	private String email;
	@Column(name="WEB")
	private String web;
	@Column(name="PERSONA")
	private String contname;
	@Column(name="COMPDESC")
	private String compdesc;
	@Column(name="PHONE")
	private String phone;
	@OneToMany(targetEntity=edu.grecruiting.model.vacancy.VacancyEntity.class, fetch=FetchType.EAGER)
	@JoinColumn(name="COMPANY_ID")
	List<VacancyEntity> vacancies;
	@OneToOne(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	private UserEntity userId;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWeb() {
		return web;
	}
	public void setWeb(String web) {
		this.web = web;
	}
	public String getContname() {
		return contname;
	}
	public void setContname(String contname) {
		this.contname = contname;
	}
	public String getCompdesc() {
		return compdesc;
	}
	public void setCompdesc(String compdesc) {
		this.compdesc = compdesc;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public List<VacancyEntity> getVacancies() {
		return vacancies;
	}
	public void setVacancies(List<VacancyEntity> vacancies) {
		this.vacancies = vacancies;
	}
	public UserEntity getUserId() {
		return userId;
	}
	public void setUserId(UserEntity userId) {
		this.userId = userId;
	}
	
}
