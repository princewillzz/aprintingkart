package com.aprinting.aprintingkart.models;

import javax.persistence.*;

@Entity
@Table(name = "address2")
public class Address2 {

	@Id
	@Column(name = "id")
	private Long pin;

	private String town;

	private String city;

	private String district;

	private String state;

	private String policeStation;

	private String postOffice;

	@Override
	public String toString() {
		return "Address2 [city=" + city + ", district=" + district + ", pin=" + pin + ", policeStation=" + policeStation
				+ ", postOffice=" + postOffice + ", state=" + state + ", town=" + town + "]";
	}

	public Long getPin() {
		return pin;
	}

	public void setPin(Long pin) {
		this.pin = pin;
	}

	public String getTown() {
		return town;
	}

	public void setTown(String town) {
		this.town = town;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPoliceStation() {
		return policeStation;
	}

	public void setPoliceStation(String policeStation) {
		this.policeStation = policeStation;
	}

	public String getPostOffice() {
		return postOffice;
	}

	public void setPostOffice(String postOffice) {
		this.postOffice = postOffice;
	}

}
