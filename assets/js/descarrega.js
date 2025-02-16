document.addEventListener("DOMContentLoaded", function () {
    const metodoRadios = document.querySelectorAll('input[name="metodo"]');

    metodoRadios.forEach(radio => {
        radio.addEventListener("change", function () {
            // Oculta todos los detalles usando Bootstrap
            document.querySelectorAll('.collapse').forEach(detalle => {
                detalle.classList.remove("show");
            });

            // Obtiene el ID del div correspondiente y lo muestra
            const targetId = this.getAttribute("data-bs-target");
            if (targetId) {
                document.querySelector(targetId).classList.add("show");
            }
        });
    });
});


function setActiveStep(step) {
    document.querySelectorAll('.step-number').forEach(function (element) {
        element.classList.remove('active-step');
        element.classList.add('inactive-step');
    });

    document.getElementById('step' + step).classList.add('active-step');
    document.getElementById('step' + step).classList.remove('inactive-step');

    document.querySelectorAll('.section').forEach(function (element, index) {
        if (index + 1 === step) {
            element.classList.add('active');
            element.classList.remove('inactive');
        } else {
            element.classList.add('inactive');
            element.classList.remove('active');
        }
    });
}

document.addEventListener("DOMContentLoaded", function () {
    var myModal = new bootstrap.Modal(document.querySelector(".modal"));
    myModal.show();
});

