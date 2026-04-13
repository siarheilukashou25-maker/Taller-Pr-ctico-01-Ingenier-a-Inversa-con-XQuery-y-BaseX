for $p in //libro[@categoria = "programacion"]
let $precio := $p/precio
where number($precio) > 30.00
order by $p/titulo descending
return <resultado>Título: {$p/titulo} - Precio: {$precio}€</resultado>
