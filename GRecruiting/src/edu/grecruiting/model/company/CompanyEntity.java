package edu.grecruiting.model.company;

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

import edu.grecruiting.model.vacancy.VacancyEntity;

@Entity
@Table(name="COMPANY")
public class CompanyEntity {
	public CompanyEntity() {
		super();
	}
	public CompanyEntity(int id, String name, String address, String email,
			String web, List<VacancyEntity> vacancies) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.email = email;
		this.web = web;
		this.vacancies = vacancies;
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
	@OneToMany(targetEntity=edu.grecruiting.model.vacancy.VacancyEntity.class, fetch=FetchType.EAGER)
	@JoinColumn(name="GROUPID")
	List<VacancyEntity> vacancies;
	
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
	public List<VacancyEntity> getVacancies() {
		return vacancies;
	}
	public void setVacancies(List<VacancyEntity> vacancies) {
		this.vacancies = vacancies;
	}
	
}
