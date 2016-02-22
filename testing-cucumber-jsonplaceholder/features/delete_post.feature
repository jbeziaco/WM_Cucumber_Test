#encoding: utf-8
Feature: Remocao de Posts
	Scenario: API permite a remocao de um post a partir de seu ID
		Given that i send a delete request with the post id "90"
		Then the response code of the request should be 200
	
	Scenario: API trata o erro (retorna 404) quando o id do post a ser deletado for inexistente
		Given that i send a delete request with the post id "800"
		Then the response code of the request should be 404