for $autor in distinct-values(//autor)
let $count := count(//libro/autor[. = $autor])
where $count > 1
return <resultado>{data($autor)} - Total: {data($count)} Libros</resultado>
