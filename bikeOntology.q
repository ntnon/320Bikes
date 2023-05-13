[QueryItem="company"]

[QueryItem="lat_lon_interval"]
PREFIX : <http://www.example.org/bikeOntology#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

select ?hname ?lon ?lat
where {
?h :hasAddress ?hname .
?h :hasLongitude ?lon .
?h :hasLatitude ?lat .

FILTER (
?lat >= 50.99 &&
?lat < 51.1 &&
?lon >= 3.65 && 
?lon < 3.68
)
}
[QueryItem="Manhattan distance"]
PREFIX : <http://www.example.org/bikeOntology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>


select ( abs(3.691 - ?lon) + abs(51.02 - ?lat) as ?distance) ?lon ?lat
where {
?h :hasLongitude ?lon .
?h :hasLatitude ?lat .
}
order by asc (?distance)
limit 10
[QueryItem="Closest Vehicle"]
PREFIX : <http://www.example.org/bikeOntology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>


select ( abs(3.691 - ?lon) + abs(51.02 - ?lat) as ?distance) ?lat ?lon ?class ?vehicle_type ?disabled ?reserved
where {
?x :hasLongitude ?lon .
?x :hasLatitude ?lat .
?x :vehicleType ?vehicle_type .
?x a ?class .
{
?class 
}

filter ( 
?class in (:Vehicle, :Hub))
}
order by asc (?distance)
[QueryItem="tempquery"]
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

PREFIX : <http://www.example.org/bikeOntology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>


select ?x
where {
?x a :Company .
}
[QueryItem="Closest Hub"]
PREFIX : <http://www.example.org/bikeOntology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>


select ( abs(3.691 - ?lon) + abs(51.02 - ?lat) as ?distance) ?lat ?lon ?cname
where {
?h :hasLongitude ?lon .
?h :hasLatitude ?lat .
?h a :Hub .
?h :ownedBy ?c .
?c :name ?cname .
}
order by asc (?distance)
[QueryItem="name"]
PREFIX : <http://www.example.org/bikeOntology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

select *
where {

?f :name ?g .
}