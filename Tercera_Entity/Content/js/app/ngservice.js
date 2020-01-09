var app = angular.module("app");

//Servicios para las Gestiones de CIC
deudorSrv = function ($http) {
    this.SaveEditDeudor = function (deudor) {
        return $http({
            method: "POST",
            headers: { "content-type": "application/json" },
            url: "~/deudores/saveeditdeudor",
            data: JSON.stringify(deudor),
            dataType: "json"
        });
    };
    this.ObtenerDeudores = function (fechaInicio, fechaFinal) {
        return $http({
            method: "GET",
            headers: { "content-type": "application/json" },
            url: "../CicDeudores/ObtenerDeudores",
            params: { fechaInicio: fechaInicio, fechaFinal: fechaFinal }
        });
    };
    this.AbrirPeriodo = function (fechaInicio, fechaFinal) {
        return $http({
            method: "GET",
            headers: { "content-type": "application/json" },
            url: "../CicDeudores/AbrirPeriodo",
            params: { fechaInicio: fechaInicio, fechaFinal: fechaFinal }
        });
    };
    this.CerrarPeriodo = function (fechaInicio, fechaFinal) {
        return $http({
            method: "GET",
            headers: { "content-type": "application/json" },
            url: "../CicDeudores/CerrarPeriodo",
            params: { fechaInicio: fechaInicio, fechaFinal: fechaFinal }
        });
    };
};

app.service("deudorSrv", deudorSrv);