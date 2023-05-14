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


select distinct ( abs(3.691 - ?lon) + abs(51.02 - ?lat) as ?distance) ?lat ?lon ?class ?vehicle_type
where {
?x :hasLongitude ?lon .
?x :hasLatitude ?lat .
?x :vehicleType ?vehicle_type .
?x a ?class .
	{?x a :Vehicle .
	?x :isReserved ?reserved .
	?x :isDisabled ?disabled .
	filter (?reserved = 0 && ?disabled = 0) }
	union 
	{?x a :Hub}
}
order by asc (?distance)
limit 10
[QueryItem="tempquery"]
PREFIX : <http://www.example.org/bikeOntology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>


select ( abs(3.691 - ?lon) + abs(51.02 - ?lat) as ?distance) ?lat ?lon ?cname ?class ?vt ?x
where {
	?x :ownedBy ?c .
	?x :hasLatitude ?lat .
	?x :hasLongitude ?lon .
	?c :name ?cname .
	?x a ?class .
	?x :vehicleType ?vt .
	filter (?c = <http://www.example.org/bikeOntology#company/Blue%20Bikes>) .

}
order by asc (?distance)
limit 1
[QueryItem="Closest Hub"]
PREFIX : <http://www.example.org/bikeOntology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>


select ( abs(3.7096 - ?lon) + abs(51.0348  - ?lat) as ?distance) ?lat ?lon ?cname
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
[QueryItem="Closest from each company"]
PREFIX : <http://www.example.org/bikeOntology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>

select ?distance ?lat ?lon ?cname ?class ?vt ?x
where {
{select ( abs(3.691 - ?lon) + abs(51.02 - ?lat) as ?distance) ?lat ?lon ?cname ?class ?vt ?x
where {
	?x :ownedBy ?c .
	?x :hasLatitude ?lat .
	?x :hasLongitude ?lon .
	?c :name ?cname .
	?x a ?class .
	?x :vehicleType ?vt .
	filter (?c = <http://www.example.org/bikeOntology#company/Baqme>) .

}
order by asc (?distance)
limit 1}
union
{select ( abs(3.691 - ?lon) + abs(51.02 - ?lat) as ?distance) ?lat ?lon ?cname ?class ?vt ?x
where {
	?x :ownedBy ?c .
	?x :hasLatitude ?lat .
	?x :hasLongitude ?lon .
	?c :name ?cname .
	?x a ?class .
	?x :vehicleType ?vt .
	filter (?c = <http://www.example.org/bikeOntology#company/Blue%20Bikes>) .

}
order by asc (?distance)
limit 1}
union
{select ( abs(3.691 - ?lon) + abs(51.02 - ?lat) as ?distance) ?lat ?lon ?cname ?class ?vt ?x
where {
	?x :ownedBy ?c .
	?x :hasLatitude ?lat .
	?x :hasLongitude ?lon .
	?c :name ?cname .
	?x a ?class .
	?x :vehicleType ?vt .
	filter (?c = <http://www.example.org/bikeOntology#company/Donkey%20Republic>) .

}
order by asc (?distance)
limit 1}
union {select ( abs(3.691 - ?lon) + abs(51.02 - ?lat) as ?distance) ?lat ?lon ?cname ?class ?vt ?x
where {
	?x :ownedBy ?c .
	?x :hasLatitude ?lat .
	?x :hasLongitude ?lon .
	?c :name ?cname .
	?x a ?class .
	?x :vehicleType ?vt .
	filter (?c = <http://www.example.org/bikeOntology#company/Dott>) .

}
order by asc (?distance)
limit 1}
}
order by asc (?distance)
[QueryItem="Closest Vehicle or Hub"]
PREFIX : <http://www.example.org/bikeOntology#>
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>


select distinct ( abs(3.7136848 - ?lon) + abs(51.0567498 - ?lat) as ?distance) ?x ?lat ?lon ?class ?vt ?name
where {
?x :hasLongitude ?lon .
?x :hasLatitude ?lat .
?x :vehicleType ?vt .
?x a ?class .
?x :ownedBy ?c .
?c :name ?name .
    {
    ?x a :Vehicle .
    ?x :isReserved ?reserved .
    ?x :isDisabled ?disabled .
    filter (?reserved = 0 && ?disabled = 0 )}
    union 
    {?x a :Hub}
filter (?class = :Hub || ?class = :Vehicle )
}
order by asc (?distance)
limit 10