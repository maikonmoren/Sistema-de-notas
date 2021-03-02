<!DOCTYPE html>
<html lang="pt-br">
        <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <link rel="stylesheet" href="Vedor/estilo.css" >
        <script src="https://kit.fontawesome.com/8a46eb2d1a.js" crossorigin="anonymous"></script>
        </head>
<body>
       
<br><br> 
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">NCCR - Sistema de notas</h5>
            <div class="d-grid gap-2 col-6 mx-auto">
             <a class="btn btn-dark" href="View/scorecard_juiz.php" data-bs-toggle="modal" data-bs-target="#LoginModal">JUIZ</a>
             <a class="btn btn-dark" href="View/scorecard_telao.php">PAINEL</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Modal -->
<div class="modal fade" id="LoginModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Login</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body ">
      <div class="container-fluid">
      <form id="Login_juiz" action="" method="POST">
        <div class="input-container">
            <input id="txt_email" class="input" type="email" pattern=".+" required />
            <label class="label" for="txt_email">E-Mail</E-Mail></label>
        </div>
         <br>
        <div class="input-container">
            <input id="txt_senha" class="input" type="password" pattern=".+" required />
            <label class="label" for="txt_senha">Senha</label>
        </div>
      </div>
      <hr>
      <div class="d-grid gap-2 form-group">
      <input type="submit" class="btn btn-dark" value="Acessar">
      <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancelar</button>
      </form>
      </div>
      </div>
    </div>
  </div>
</div>
    
    <footer >
        <p class="text-center"><small>@</small></p>
        <p class="text-center"></small>Maikon Cristino</small></p>
  </footer>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>      
  <script> 
      $("#Login_juiz").on("submit", function(e){
       e.preventDefault();
        $.ajax({
            url: "Controller/Action.php",
            method: "POST",
            data: {
                'opt' : 'login_juiz',
                'email': $('#txt_email').val(),
                'senha': $('#txt_senha').val()
            },
          dataType: "JSON"
        }).done(function(data){
          console.log(data);
          if(data[0].juiz_id == "erro"){
            alert(data[0].juiz_nome);
          }else{
         window.location.href = "View/scorecard_juiz.php";
          }
            
        }).fail(function(data){
          alert(data);
        }); 
      });
       
  </script>
</body>
   
</html>