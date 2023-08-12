@tag
Feature: Everything about your Pets
  Descrição da feature
  
Background:
	Given path 'pet'
	
@get_loja
	Scenario: Conferir/rastrear a compra
	Given url UrlBase
	And path 'order/1'
	When method GET
	Then status 200
	
@post_loja
	Scenario: Compra de Pet
	Given url UrlBase
	And path 'order'
	And request {"id":10,"petId":20,"quantity":0,"shipDate":"2023-08-11T02:03:00.242Z","status":"placed","complete":true}
	When method POST
	Then status 200