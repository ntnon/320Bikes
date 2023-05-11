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


select ( abs(0 - ?lon) + abs(0 - ?lat) as ?closest) ?lon ?lat
where {
?h :hasLongitude ?lon .
?h :hasLatitude ?lat .
}
order by asc (?closest)
limit 10