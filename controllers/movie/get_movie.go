package movie

import (
	"main/configs"
	basemodel "main/models/base"
	moviemodel "main/models/movie"
	"net/http"

	"github.com/labstack/echo/v4"
)

func GetMoviesController(c echo.Context) error {
	var movies []moviemodel.Movie
	result := configs.DB.Find(&movies)

	if result.Error != nil {
		return c.JSON(http.StatusInternalServerError, basemodel.BaseResponse{
			Status:  false,
			Message: "Failed get data from database",
			Data:    nil,
		})
	}

	return c.JSON(http.StatusOK, basemodel.BaseResponse{
		Status:  true,
		Message: "Success",
		Data:    movies,
	})
}
