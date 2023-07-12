async function logJSONData() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    }
    async function showPosition(position) {
        var lat = position.coords.latitude
        var long = position.coords.longitude
        const response = await fetch(`https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${long}&hourly=temperature_2m,is_day&daily=weathercode&timezone=auto&forecast_days=1`);
        const jsonData = await response.json();
        let date = new Date()
        let hour = date.getHours()
        const data = {
            date: jsonData.daily.time[0],
            temp: jsonData.hourly.temperature_2m[hour]
        };
        document.getElementById("wTemp").textContent = `Temp: ${data.temp}*C`
        document.getElementById("curDate").textContent = data.date;
        document.getElementById("wLogo").innerHTML = (() => {
            if (hour <= 6) {
                return `<i class="fa-solid fa-moon"></i>`
            } else if (hour <= 11) {
                return `<i class="fa-solid fa-mountain-sun"></i>`
            } else if (hour <= 17) {
                return `<i class="fa-solid fa-sun"></i>`
            } else {
                return `<i class="fa-solid fa-cloud-moon"></i>`
            }
        })()
    }
};
logJSONData()
// document.body.addEventListener("load", logJSONData)


function navigate(self) {
    let elems = {
        "flight": document.querySelectorAll(".flight"),
        "services": document.querySelectorAll(".service"),
        "airport": document.querySelectorAll(".airport"),
        "tickets": document.querySelectorAll(".ticket")
    }
    let mainNav = document.querySelectorAll(".mainNav")
    mainNav.forEach((item) => {
        let sideNav = elems[item.textContent.toLowerCase()]
        if (item == self) {
            sideNav.forEach((item_) => {
                item.classList.add("active", "fw-bold")
                item_.classList.replace("d-none", "d-block")
            })
        } else {
            sideNav.forEach((item_) => {
                item.classList.remove("active", "fw-bold")
                item_.classList.replace("d-block", "d-none")
            })
        }
    })
}


function accClicked(name) {
    let accBtns = document.querySelectorAll(".myaccordion-button")
    accBtns.forEach((btn) => {
        if (btn == name) {
            btn.disabled = true
        } else {
            btn.disabled = false
        }
    })
    var accOne = document.getElementById("collapseOne")
    var accTwo = document.getElementById("collapseTwo")
    if (name.id == "departure") {
        accOne.classList.add("show")
        accTwo.classList.remove("show")
    } else {
        accTwo.classList.add("show")
        accOne.classList.remove("show")
    }
}
