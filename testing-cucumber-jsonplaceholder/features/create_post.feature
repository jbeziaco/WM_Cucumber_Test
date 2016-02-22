#encoding: utf-8
Feature: Criacao de Posts
	Scenario: API permite a criacao de um novo post com base no titulo, corpo e id do usuario
	Given that i send a successfull post containing the title "Rabindranath Tagore", the body "It is very simple to be happy but it is very difficult to be simple" and the id "16"
	Then the response code of the request should be 201