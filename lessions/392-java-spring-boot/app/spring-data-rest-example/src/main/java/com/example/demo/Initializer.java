package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

@Component
public class Initializer implements ApplicationRunner {

	private final CustomerRepository customerRepository;

	private final AddressRepository addressRepository;

	@Autowired
	public Initializer(CustomerRepository mtoCustomerRepository, AddressRepository mtoAddressRepository) {
		this.customerRepository = mtoCustomerRepository;
		this.addressRepository = mtoAddressRepository;
	}

	@Override
	public void run(ApplicationArguments args) throws Exception {

		if (customerRepository.count() != 0) {
			return;
		}

		Customer mtoCustomer = new Customer();
		mtoCustomer.setName("Tom");
		customerRepository.save(mtoCustomer);

		Address mtoAddress = new Address();
		mtoAddress.setStreet("Elm Street");
		addressRepository.save(mtoAddress);

		mtoAddress = new Address();
		mtoAddress.setStreet("High Street");
		addressRepository.save(mtoAddress);
	}
}
