<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <link rel="stylesheet" href="chosen/chosen.css" />
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
   <script src="chosen/chosen.jquery.js" type="text/javascript"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


  <script>
$(document).ready(function(){
    $("#flip").click(function(){
        $("#panel").slideToggle("quick");
    });
});
</script>

<style>
#panel, #flip {
    padding: 5px;
    text-align: center;
    background-color: white ;
}

#panel {
    padding: 50px;
    display: none;
}
</style>
  <style>
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {
  border-collapse: collapse;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: center;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
</style>
</head>
<body>


  </div>
 
        <div class="row">
        <div class="col-md-3">
       <select id="firstChosenSelect" data-placeholder="Chọn 1 mã hoạt động" style="width:100px;" tabindex="2">
      <option value=""></option> 
      <option value="HD01">HD01</option> 
      <option value="HD02">HD02</option> 
      <option value="HD03">HD03</option>
       </select>
   
      <script type="text/javascript">
       $('#firstChosenSelect').chosen();
      $('#firstChosenSelect').hide();
      </script>
    </div>
      
      <div class="col-md-3">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
    </div>
    <div class="col-md-3">
      <button type="submit" class="btn btn-info">Search</button>
    </div>
    </div>
   
    <div class="col-md-12">
    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
      <table class="table table-bordered" id="myTable">
       <tr class="header">
            <th>Mã hoạt động</th>
            <th>Tên hoạt động</th>
            <th>Đăng ký</th>
            <th>Chi tiết</th>
          </tr>
          <tr>
            <td>HD01</td>
            <td>Thăm các cụ già neo đơn</td>
            <td>
            <form>
              <label class="radio-inline">
                <input type="radio" name="optradio">Đăng kí  
              </label>
              </form>
              </td>
            <td>
              <div id="flip"><button  type="submit" class="btn btn-info ">Xem/Quay lại</button></div> 
            </td>           
          </tr>

          <tr>
            <td>HD02</td>
            <td>Mùa hè xanh</td>
            <td>
            <form>
              <label class="radio-inline">
                <input type="radio" name="optradio">Đăng kí  
              </label>
              </form>
              </td>
            <td>
              <div id="flip"><button  type="submit" class="btn btn-info ">Xem/Quay lại</button></div> 
            </td>           
          </tr>

          <tr>
            <td>HD03</td>
            <td>Trung thu yêu thương</td>
            <td>
            <form>
              <label class="radio-inline">
                <input type="radio" name="optradio">Đăng kí  
              </label>
              </form>
              </td>
            <td>
              <div id="flip"><button  type="submit" class="btn btn-info ">Xem/Quay lại</button></div> 
            </td>           
          </tr>
      </table>
      <script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>

       <div id="panel">Chi tiết hoạt động
            <table class="table table-bordered">
            <thead>
              <tr>
                <th>Mã hoạt động</th>
                <th>Tên hoạt động</th>
                <th>Đơn vị tổ chức</th>
                <th>Thời gian bắt đầu</th>
                <th>Thời gian kết thúc</th>
                <th>Ðịa điểm</th>
                <th>Ðiểm rèn luyện</th>
                <th>Ðiểm công tác xã hội</th>
                <th>Hoàn thành</th>
              </tr>
            </thead>
            <tbody>
            <tr>
            <td>HD01</td>
            <td>Thăm các cụ già neo đơn</td>
            <td>Chi Đoàn IT14_141101</td>
            <td>25/10/2016</td>
            <td>25/10/2016</td>
            <td>Phường Bình Thọ, Thủ Đức</td>
            <td>5</td>
            <td>5</td>
            <td>
          <div class="radio">
            <label>
              <input type="radio" value="optradio">Hoàn thành
            </label>
          </div>
        </td>
        </tr>
        </tbody>
        </table>
    </div>
 </div>
 </div>
 </div>
 </div>
 </body>
 </html> 