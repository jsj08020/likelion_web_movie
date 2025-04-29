$(document).ready(function() {

  // 일별 박스오피스 조회
  $('#get-movie-btn').on('click', function() {
    var date = $('#date').val(); 
    date = date.replaceAll('-', '');
    getMoviesFromAPI(date);
  });

});


function getMoviesFromAPI(date) {
  $.ajax({
    url: 'https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json',
    type: 'get',
    data: {
      key: '77cccceb4d521f3a3a29c4fa7ca0eddb',
      targetDt: date
    },
    success: function(json) {
      var movies = json['boxOfficeResult']['dailyBoxOfficeList'];
      $('#movie-list').empty();

      $.each(movies, function(index, movie) {
        $('#movie-list').append(`
          <tr>
            <th scope="row">${movie.rank}</th>
            <td>${movie.movieNm}</td>
            <td>${movie.audiAcc}</td>
            <td>${movie.openDt}</td>
          </tr>
        `);
      });
    },
    error: function(error){}
  });
}
