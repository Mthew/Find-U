var finder = {
    init: () => {
        finder.config();
    },
    config: () => {
        $("#btn-finder").off('click');
        $("#btn-finder").on('click', finder.find);
    },
    getCarrer: () => {
        const concept = $("#search").val();
        $("#search").val("");
        return $.get(`http://localhost:49764/api/Carrer/get?name=${concept}`);
    },
    find: () => {
        $("#projects .container").html("");
        finder.getCarrer().then((data) => {
            data.forEach((e, i) => {
                $("#projects .container").append(
                    finder.buildCarrer(e, i)
                );            
            });
            $("#projects").show();
            $('html,body').animate({
                scrollTop: $("#projects").offset().top
            }, 'slow');            
        })
    },
    buildCarrer: (item, i) => {        
        const left = i % 2 == 0 ? true : null,
            {UniversityName, Name, Description} = item;
        return `<div class="row justify-content-center no-gutters ${left && ' mb-5 mb-lg-0'}">
        <div class="col-lg-6">
          <img class="img-fluid" src="img/${UniversityName}.jpg" alt="">
        </div>
        <div class="col-lg-6 ${left ? '' : 'order-lg-first'}">
          <div class="bg-black text-center h-100 project">
            <div class="d-flex h-100">
              <div class="project-text w-100 my-auto text-center text-lg-${left ? 'left' : 'right'}">
                <h4 class="text-white">${Name}</h4>
                <p class="mb-0 text-white-50">${Description}</p>
                <hr class="d-none d-lg-block mb-0 mr-0">
              </div>
            </div>
          </div>
        </div>
      </div>`
    }
}

$(document).ready(() => {
    finder.init();
})