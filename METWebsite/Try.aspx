<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Try.aspx.cs" Inherits="METWebsite.Try" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheets/Try.css" />
</head>
<body>
    <form id="form1" runat="server">
        <script>
            $('#pictureTarifa, #tarifaHorarios').collapse('hide');
            $('input[name="radios"]').change(function () {
                if ($('#pictureTar').is(":checked")) {
                    $('#pictureTarifa').collapse('show');
                } else {
                    $('#pictureTarifa').collapse('hide');
                }
                if ($('#tarifaHor').is(":checked")) {
                    $('#tarifaHorarios').collapse('show');
                } else {
                    $('#tarifaHorarios').collapse('hide');
                }
                if ($('#radio3').is(":checked")) {
                    $('#pictureTarifa').collapse('hide');
                    $('#tarifaHorarios').collapse('hide');
                }
            });
        </script>
        <div class="radio col-xs-12">
                <label>
                    <input type="radio" name="radios" class="track-order-change" id="pictureTar" value="">
                    First Radio1
                </label>
        </div>

              <div class="col-xs-12 panel-collapse collapse in" id="pictureTarifa">
                  <div>
                      First Accordion
                  </div>
              </div>

        <div class="radio col-xs-12">
            <label>
                <input type="radio" name="radios" class="track-order-change" id="tarifaHor">
                Second Radio
            </label>
        </div>

        <div class="col-xs-12 panel-collapse collapse in" id="tarifaHorarios">
            <div>
                Second Accordion
            </div>
        </div>

        <div class="radio col-xs-12">
            <label>
                <input type="radio" name="radios" class="track-order-change" id="radio3">
                radio none option
            </label>
        </div>
    </form>
</body>
</html>
