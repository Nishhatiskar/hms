<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Block</title>

    <!-- Bootstrap Core CSS -->
    <script type= "text/javascript" src = "countries.js"></script>
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>

<body>
<?php 
include 'header.php';
include 'left_side_bar.php';

?>
    <div id="wrapper">

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Fees Structure</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Block create
                        </div>
                        <div class="panel-body">
                        <!-- panel body row -->
                            <div class="row">
                                <div class="col-lg-6">
                                <!-- form for block -->
                                    <form role="form" action="fees_save.php" method="post">
                            
                                        <div class="form-group">
                                            <label>Fees Type</label>
                                            <input class="form-control" id="fees" type="text" name="fees" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Cost</label>
                                            <input class="form-control" id="fees" type="text" name="cost" required>
                                        </div>

                                        <div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control" id="Status" name="status" required>
                                                <option value="">--select--</option>
                                                <option value="enabled">Enabled</option>
                                                <option value="disabled">Disabled</option>
                                            </select>
                                        </div>
                                        <button type="submit" class="btn btn-default" name="upload">Add</button>
                                        <button type="reset" class="btn btn-default">Refresh</button>

                                   

                                    </form>
                            <!-- /form close -->        
                                </div>
                                <!-- /col-lg-6 -->

                            </div>
                            <!-- /panel body row -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->


    <!-- jQuery -->
    <script src="bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

</body>

</html>
