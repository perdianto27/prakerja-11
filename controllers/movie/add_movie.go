package movie

import (
	"main/configs"
	"main/models/base"
	moviemodel "main/models/movie"
	"net/http"

	"github.com/labstack/echo/v4"
)

func AddMovieController(c echo.Context) error {
	var movie moviemodel.Movie
	c.Bind(&movie)

	result := configs.DB.Create(&movie)
	if result.Error != nil {
		return c.JSON(http.StatusInternalServerError, base.BaseResponse{
			Status:  false,
			Message: "Failed add data to database",
			Data:    nil,
		})
	}

	return c.JSON(http.StatusOK, base.BaseResponse{
		Status:  true,
		Message: "Success register",
		Data:    movie,
	})
}
