package routes

import (
	"github.com/julienschmidt/httprouter"
	"net/http"
)

func (h *handler) Home(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	w.Write([]byte("HOMe"))
}
