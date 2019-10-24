# README# README

DOGSITTING PROJECT
This project aims at creating a relational database between dogsitters, dogs, strolls and cities tables.

To feed this database, please type $rails db:seed in your Terminal

To test the relations between the tables, you could try the following entries in the rails console ($rails c).

	- Dog.find(5).dogsitters
	- Dogsitter.find(6).dogs
	- Dog.find(14).strolls
	- Dogsitter.find(2).strolls
	- City.find(3).strolls
	- Strolls.find(45).dogs
	- Strolls.find(34).dogsitters

