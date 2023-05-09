[QueryItem="company"]
PREFIX : <http://www.example.org/bikeOntology#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

SELECT * {
#?company a :Company ; :name ?name .
#?company :owns ?bike ;
?bike a :Bike ;
 :hasLatitude ?lat ; :hasLongitude ?lon .
}