package com.example.demo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@ApiModel("an address")
@Entity
@Data
public class Address {

	@GeneratedValue
	@Id
	@ApiModelProperty(hidden = true)
	private Long id;

	@Column
	private String street;

	@ManyToOne
	@ApiModelProperty(hidden = true)
	private Customer customer;

}
