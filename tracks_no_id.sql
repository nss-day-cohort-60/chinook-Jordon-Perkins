Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
Album name
Media type
Genre



SELECT t.Name AS Track_Name, a.Title AS Album_Title, m.Name AS Media_Type_Name, g.Name AS Genre_Name
FROM Track AS t 
JOIN Genre AS g 
ON t.GenreId = g.GenreId
JOIN MediaType AS m 
ON t.MediaTypeID = m.MediaTypeId
JOIN Album AS a 
ON t.AlbumId = a.AlbumId

