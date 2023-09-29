package routes

import (
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"

	moviecontroller "main/controllers/movie"
)

func InitRoutes(e *echo.Echo) {
	e.Pre(middleware.RemoveTrailingSlash())
	e.Use(middleware.Logger())
	e.POST("/movie", moviecontroller.AddMovieController)
	e.GET("/movies", moviecontroller.GetMoviesController)
	e.DELETE("/movie/:id", moviecontroller.DeleteMovieController)
}
