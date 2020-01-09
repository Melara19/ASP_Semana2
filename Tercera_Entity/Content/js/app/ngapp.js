var app = angular.module("app", ["ui.sortable", "xeditable"]);

app.run(function (editableOptions) {
    editableOptions.theme = "bs3"; // bootstrap3 theme. Can be also 'bs2', 'default'
});

var roleRUserCtrl = function ($scope, $http) {
    $scope.init = function (id) {
        $scope.fillUserList("" + id);
    };

    $scope.UserList = null;

    //Call the functino to populate the second dropdownlist
    //Here we pass the selected value from first dropdownlist as input parameter
    $scope.fillUserList = function (id) {
        $http({
            method: "GET",
            url: "/Roles_r_Users/GetUserList",
            params: { roleId: id }
        }).then(function (result) {
            $scope.UserList = result.data;
        });
    };
};

var roleRScreenCtrl = function ($scope, $http) {
    $scope.ScreenList = null;

    //Call the functino to populate the second dropdownlist
    //Here we pass the selected value from first dropdownlist as input parameter
    $scope.fillScreenList = function (roleId) {
        $http({
            method: "GET",
            url: "/Roles_r_Screens/GetScreenList",
            params: { roleId: roleId }
        }).then(function (result) {
            $scope.ScreenList = result.data;
        });
    };
};

var deudorCtrl = function ($scope, deudorSrv) {
    $scope.mostrar = false;
    $scope.CsvActive = true;
    $scope.ObtenerDeudores = function () {
        $scope.mostrar = true;
        deudorSrv.ObtenerDeudores($scope.fechaInicio, $scope.fechaFinal)
            .then(function (result) {
                $scope.Deudores = result.data.Deudores;
                $scope.mostrar = false;
                $scope.CsvActive = result.data.CsvActive;
            }, function (result) {
                alert(result.data);
                $scope.mostrar = false;
            });
    };

    $scope.AbrirPeriodo = function () {
        deudorSrv.AbrirPeriodo($scope.fechaInicio, $scope.fechaFinal)
            .then(function (result) {
                alert(result.data.Descripcion);
            }, function (result) {
                alert(result.data);
            });
    };

    $scope.CerrarPeriodo = function () {
        deudorSrv.CerrarPeriodo($scope.fechaInicio, $scope.fechaFinal)
            .then(function (result) {
                alert(result.data.Descripcion);
            }, function (result) {
                alert(result.data);
            });
    };

    $scope.Limpiar = function () {
        $scope.dateFrom = null;
        $scope.dateTo = null;
    };
}

var auxiliarOperacionCtrl = function ($scope, auxiliarOperacionSrv) {
    $scope.mostrar = false;
    $scope.CsvActive = true;
    $scope.ObtenerAuxiLiarOperaciones = function () {
        $scope.mostrar = true;
        auxiliarOperacionSrv.ObtenerAuxiLiarOperaciones($scope.fechaInicio, $scope.fechaFinal)
            .then(function (result) {
                $scope.AuxiliarOperaciones = result.data.AuxiliarOperaciones;
                $scope.mostrar = false;
                $scope.CsvActive = result.data.CsvActive;
            }, function (result) {
                alert(result.data);
                $scope.mostrar = false;
            });
    };

    $scope.AbrirPeriodo = function () {
        auxiliarOperacionSrv.AbrirPeriodo($scope.fechaInicio, $scope.fechaFinal)
            .then(function (result) {
                alert(result.data.Descripcion);
            }, function (result) {
                alert(result.data);
            });
    };

    $scope.CerrarPeriodo = function () {
        auxiliarOperacionSrv.CerrarPeriodo($scope.fechaInicio, $scope.fechaFinal)
            .then(function (result) {
                alert(result.data.Descripcion);
            }, function (result) {
                alert(result.data);
            });
    };

    $scope.Limpiar = function () {
        $scope.dateFrom = null;
        $scope.dateTo = null;
    };
}

var operacionCtrl = function ($scope, operacionSrv) {
    $scope.mostrar = false;
    $scope.CsvActive = true;
    $scope.ObtenerOperaciones = function () {
        $scope.mostrar = true;
        operacionSrv.ObtenerOperaciones($scope.fechaInicio, $scope.fechaFinal)
            .then(function (result) {
                $scope.Operaciones = result.data.Operaciones;
                $scope.mostrar = false;
                $scope.CsvActive = result.data.CsvActive;
            }, function (result) {
                alert(result.data);
                $scope.mostrar = false;
            });
    };

    $scope.AbrirPeriodo = function () {
        operacionSrv.AbrirPeriodo($scope.fechaInicio, $scope.fechaFinal)
            .then(function (result) {
                alert(result.data.Descripcion);
            }, function (result) {
                alert(result.data);
            });
    };

    $scope.CerrarPeriodo = function () {
        operacionSrv.CerrarPeriodo($scope.fechaInicio, $scope.fechaFinal)
            .then(function (result) {
                alert(result.data.Descripcion);
            }, function (result) {
                alert(result.data);
            });
    };

    $scope.Limpiar = function () {
        $scope.dateFrom = null;
        $scope.dateTo = null;
    };
}

var relacionCtrl = function ($scope, relacionSrv) {
    $scope.mostrar = false;
    $scope.CsvActive = true;
    $scope.ObtenerRelaciones = function () {
        $scope.mostrar = true;
        relacionSrv.ObtenerRelaciones($scope.fechaInicio, $scope.fechaFinal)
            .then(function (result) {
                $scope.Relaciones = result.data.Relaciones;
                $scope.mostrar = false;
                $scope.CsvActive = result.data.CsvActive;
            }, function (result) {
                alert(result.data);
                $scope.mostrar = false;
            });
    };

    $scope.AbrirPeriodo = function () {
        relacionSrv.AbrirPeriodo($scope.fechaInicio, $scope.fechaFinal)
            .then(function (result) {
                alert(result.data.Descripcion);
            }, function (result) {
                alert(result.data);
            });
    };

    $scope.CerrarPeriodo = function () {
        relacionSrv.CerrarPeriodo($scope.fechaInicio, $scope.fechaFinal)
            .then(function (result) {
                alert(result.data.Descripcion);
            }, function (result) {
                alert(result.data);
            });
    };

    $scope.Limpiar = function () {
        $scope.dateFrom = null;
        $scope.dateTo = null;
    };
}

var reglaReporteCtrl = function ($scope, reglaReporteSrv) {
    $scope.LlenarColumnas = function (idClasificacion) {
        reglaReporteSrv.ObtenerColumnas(idClasificacion)
            .then(function (result) {
                $scope.Columnas = result.data;
            }, function (result) {
                alert(result.data);
            });
    };

    $scope.LlenarColumnas2 = function (idClasificacion) {
        reglaReporteSrv.ObtenerColumnas2(idClasificacion)
            .then(function (result) {
                $scope.Columnas = result.data;
            }, function (result) {
                alert(result.data);
            });
    };
}

var buscarCtrl = function ($scope, buscarSrv) {
    $scope.MostrarDeudor = false;
    $scope.MostrarOperacion = false;
    $scope.MostrarRelacion = false;
    $scope.MostrarAuxiliar = false;
    $scope.Definicion = { Columna: "", Condicion: "", Valor: "" }
    $scope.ListaDefinicion = [{}];

    scope.AgregarLista = function() {

    }

    $scope.MostrarTabla = function (idReporte) {
        if (idReporte === "1") {
            $scope.MostrarOperacion = false;
            $scope.MostrarRelacion = false;
            $scope.MostrarAuxiliar = false;
            $scope.MostrarDeudor = true;
        } else if (idReporte === "2") {
            $scope.MostrarDeudor = false;
            $scope.MostrarRelacion = false;
            $scope.MostrarAuxiliar = false;
            $scope.MostrarOperacion = true;
        } else if (idReporte === "3") {
            $scope.MostrarDeudor = false;
            $scope.MostrarOperacion = false;
            $scope.MostrarAuxiliar = false;
            $scope.MostrarRelacion = true;
        } else if (idReporte === "4") {
            $scope.MostrarDeudor = false;
            $scope.MostrarOperacion = false;
            $scope.MostrarRelacion = false;
            $scope.MostrarAuxiliar = true;
        };
    };
}

//Injeccion de dependidencias
roleRUserCtrl.$inject = ["$scope", "$http"];
roleRScreenCtrl.$inject = ["$scope", "$http"];
deudorCtrl.$inject = ["$scope", "deudorSrv"];
auxiliarOperacionCtrl.$inject = ["$scope", "auxiliarOperacionSrv"];
operacionCtrl.$inject = ["$scope", "operacionSrv"];
relacionCtrl.$inject = ["$scope", "relacionSrv"];
reglaReporteCtrl.$inject = ["$scope", "reglaReporteSrv"];
buscarCtrl.$inject = ["$scope", "buscarSrv"];

//Aqui se agregan los controladores
app.controller("roleRUserCtrl", roleRUserCtrl);
app.controller("roleRScreenCtrl", roleRScreenCtrl);
app.controller("deudorCtrl", deudorCtrl);
app.controller("auxiliarOperacionCtrl", auxiliarOperacionCtrl);
app.controller("operacionCtrl", operacionCtrl);
app.controller("relacionCtrl", relacionCtrl);
app.controller("reglaReporteCtrl", reglaReporteCtrl);
app.controller("buscarCtrl", buscarCtrl);