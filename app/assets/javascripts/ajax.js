console.log("ajax loaded!");

function setCurrentSlide(course_id, number_of_slide){
  console.log(course_id + " " + number_of_slide);
  $.ajax({
    url: "/set_current_slide",
    method: 'POST',
    data: { course_id: course_id, number_of_slide: number_of_slide},
    headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
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

function addPointsToCourse(course_id, exercise, points){
  console.log(course_id + " " + exercise + " " + points);
  $.ajax({
    url: "/add_points_to_course",
    method: 'POST',
    data: { course_id: course_id, exercise: exercise, points: points},
    headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
  });
}
