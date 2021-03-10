console.log("ajax loaded!");

function setCurrentSlide(course_id, number_of_slide){
  console.log("setCurrentSlide: " + course_id + " " + number_of_slide);
  //console.log($('meta[name="csrf-token"]').attr('content'));
  $.ajax({
    url: "/set_current_slide",
    method: 'POST',
    data: { course_id: course_id, number_of_slide: number_of_slide},
    headers: { 'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content }
  });
}

function setStatus(course_id, status){
  console.log(course_id + " " + status);
  $.ajax({
    url: "/set_status",
    method: 'POST',
    data: { course_id: course_id, status: status},
    headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
  });
}

function setResult1(course_id, result){
  console.log(course_id + " " + result);
  $.ajax({
    url: "/set_result1",
    method: 'POST',
    data: { course_id: course_id, result: result},
    headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
  });
}

function setOrden(course_id, orden){
  console.log(course_id + " " + orden);
  $.ajax({
    url: "/set_orden",
    method: 'POST',
    data: { course_id: course_id, orden: orden},
    headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
  });
}

function addPointsToCourse(course_id, exercise, points){
  console.log(course_id + " " + exercise + " " + points);
  $.ajax({
    url: "/add_points_to_course",
    method: 'POST',
    data: { course_id: course_id, exercise: exercise, points: points},
    headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
  });
}

function setGroup(code, firstname){
  console.log("code: " + code + " firstname: " + firstname);
  $.ajax({
    url: "/set_group",
    method: 'POST',
    data: { code: code, firstname: firstname},
    headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
  });
}

function checkGroup(code){
  console.log("code: " + code);
  $.ajax({
    url: "/check_group",
    method: 'GET',
    data: { code: code},
    headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') },
    success: function (data) {
      console.log("SUCCESS");
      return data;
    },
    error: function () { return "true"; }
  });
}

function deleteAccount(account_id){
  console.log("deleteAccount: " + account_id);
  $.ajax({
    url: "/accounts/" + account_id,
    method: 'DELETE',
    data: { id: account_id},
    headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
  });
}
