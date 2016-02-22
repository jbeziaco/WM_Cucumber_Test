#encoding: utf-8
Feature: Busca de posts
	Scenario: API lista todos os posts existentes
		Given that i send a successfull post that returns a list of all the posts
		Then I want to print the response body
		And the response code of the request should be 200
	
	Scenario: API permite busca e recuperação de um post através de seu Id
		Given that i send a get request that returns a post with the id "10"
		Then I want to print the response body
		And the response code of the request should be 200
		
	Scenario: API trata o erro (retorna 404) quando o id do post for inexistente
		Given that i send a get request that returns a post with the id "200"
		Then the response code of the request should be 404
	
	