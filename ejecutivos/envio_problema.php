<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    </head>
    <body class="container">
    <form action="">
        <p class="fs-1 text-center">REPORTAR PROBLEMA</p>
        
        <div class="form-floating mb-3">
            <select class="form-select" id="floatingSelect" aria-label="Floating label select example">
                <option selected>SELECCIONA</option>
                <option value="1">Activación de la licencia de Office</option>
                <option value="2">Fallas con el internet</option>
                <option value="3">PC Lenta</option>
                <option value="4">Otro</option>
            </select>
            <label for="floatingSelect">Problema</label>
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">Problema</label>
            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="ej. Falta agregar correo">
        </div>
        <div class="d-grid gap-2 col-6 mx-auto">
            <button type="button" class="btn btn-success">REPORTAR</button>
        </div>        
    </form>
    </body>
</html>