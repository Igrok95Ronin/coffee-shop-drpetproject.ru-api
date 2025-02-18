package routes

import (
	"github.com/julienschmidt/httprouter"
	"net/http"
)

func (h *handler) AddProduct(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	w.Write([]byte("Добавить продукт"))
}
