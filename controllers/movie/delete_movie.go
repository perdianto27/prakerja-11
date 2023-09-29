package movie

import (
	"main/configs"
	"main/models/base"
	moviemodel "main/models/movie"
	"net/http"
	"strconv"

	"github.com/labstack/echo/v4"
)

func DeleteMovieController(c echo.Context) error {
	id, _ := strconv.Atoi(c.Param("id"))
	var movie moviemodel.Movie
	c.Bind(&movie)

	result := configs.DB.Delete(&movie, id)
	if result.Error != nil {
		return c.JSON(http.StatusInternalServerError, base.BaseResponse{
			Status:  false,
			Message: "Failed add data to database",
			Data:    nil,
		})
	}

	return c.JSON(http.StatusOK, base.BaseResponse{
		Status:  true,
		Message: "Success deleted",
		Data:    nil,
	})
}
