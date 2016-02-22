#encoding: utf-8
Feature: Alteracao de Posts
	Scenario: API permite a alteracao do titulo de um post a partir de um Id existente
	Given that i send a successfull put updating the post id "90" with the title "Rabindranath Tagore"
	Then the response code of the request should be 200