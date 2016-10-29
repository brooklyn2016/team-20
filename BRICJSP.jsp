<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BRICStudio</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap-3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="starter-template.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  </head>

  <body>

    <div id="banner"><img src="unnamed.png" height=100px ></div>
    <div class="container">
        <div class="row">
         </div>
        <br>
        <div class="row">
            <div class="col-sm-12">
                <div class="dropdown">
                  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    Login
                    <span class="caret"></span>
                  </button>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                    <li>Username: <input type="text" id="loginUsername"></li>
                    <li>Password: <input type="password" id="loginPassword"></li>
                    <li role="separator" class="divider"></li>
                    <li id="loginLI" style="text-align: center;">Login</li>
                  </ul>
                </div>
                <div id="error" style="visibility:hidden; text-color: red;">Error</div>
            </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div id="headerDiv" class="col-md-4"><h1>BRICStudio</h1></div>
            <div class="col-md-4"></div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div id="headerDiv" class="col-md-4"><h5>Upload a video and see it on broadcast television</h5></div>
            <div class="col-md-4"></div>
        </div>
        <br>
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4" id="fileDiv">
                <div class="row">
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-4 inputDiv">
                        <form>
                            <div class="form-group">
                                <input type="file" id="uploadInput"><br>
                            </div>
                            <button id="upload" type="button" class="btn btn-large btn-danger">Upload</button>
                         </form>
                    </div>
                    <div class="col-md-4">
                    </div>
                </div>
            </div>
            <div class="col-md-4">
            </div>
        </div>
            
      </div>
      </div>
      <br>
      <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">    
                <form style="text-align:center">
                        <div class="form-group">
                      </div>
                        <label for="userTags">Personal Tags</label>
                        <input type="text" id="userTags">
                  </form>
            </div>
            <div class="col-md-4">                
            </div>
      </div>
          <br>
          <div class="row">
              <div class="col-sm-3">
                  <form style="text-align:center">
                        <div class="form-group">
                      </div>
                        <label for="Sports">Sports</label>
                        <input type="checkbox" id="sports">
                  </form>
              </div>
                <div class="col-sm-3">
                  <form style="text-align:center">
                        <div class="form-group">
                      </div>
                        <label for="Prayer">Prayer</label>
                        <input type="checkbox" id="Prayer">
                  </form>
              </div>
                <div class="col-sm-3">
                  <form style="text-align:center">
                        <div class="form-group">
                      </div>
                        <label for="cooking">Cooking</label>
                        <input type="checkbox" id="cooking">
                  </form>
              </div>
            <div class="col-sm-3">
                  <form style="text-align:center">
                        <div class="form-group">
                      </div>
                        <label for="Culture">Culture</label>
                        <input type="checkbox" id="Culture">
                  </form>
              </div>
              </div>
          </div>
    <!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="mainJS.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
  </body>
</html>
