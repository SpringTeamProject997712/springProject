/* global Chart, coreui */

/**
 * --------------------------------------------------------------------------
 * CoreUI Boostrap Admin Template (v4.1.0): main.js
 * Licensed under MIT (https://coreui.io/license)
 * --------------------------------------------------------------------------
 */

// Disable the on-canvas tooltip
Chart.defaults.pointHitDetectionRadius = 1
Chart.defaults.plugins.tooltip.enabled = false
Chart.defaults.plugins.tooltip.mode = 'index'
Chart.defaults.plugins.tooltip.position = 'nearest'
Chart.defaults.plugins.tooltip.external = coreui.ChartJS.customTooltips
Chart.defaults.defaultFontColor = '#646470'

const random = (min, max) =>
  // eslint-disable-next-line no-mixed-operators
  Math.floor(Math.random() * (max - min + 1) + min)
  
function get_userChart(){
	let user = "";
	$.ajax({
		type:"get",
		url:"/admin/user_chart",
		async:false,
		success:function(data){
			user = JSON.parse(data);
		},error: function(x,y,err){
			alert(x.y + x.responseText + err) 
		}
	})
	return user;
}

let my_user_data = get_userChart();
console.log(my_user_data);

function convert_x(my_json){
	let x_arrs = [];
	for(var i=0; i<my_json.length; i++){
		x_arrs.push(my_json[i].x_value);
	}
	console.log(x_arrs);
	return x_arrs;
}

function convert_y(my_json){
	let y_arrs = [];
	for(var i=0; i<my_json.length; i++){
		y_arrs.push(my_json[i].count);
	}
	console.log(y_arrs);
	return y_arrs;
}

// eslint-disable-next-line no-unused-vars
const cardChart1 = new Chart(document.getElementById('card-chart1'), {
  type: 'line',
  data: {
    labels: convert_x(my_user_data),
    datasets: [
      {
        label: 'join user number',
        backgroundColor: 'transparent',
        borderColor: 'rgba(255,255,255,.55)',
        pointBackgroundColor: coreui.Utils.getStyle('--cui-info'),
        data: convert_y(my_user_data),
      },
    ],
  },
  options: {
    plugins: {
      legend: {
        display: false,
      },
    },
    maintainAspectRatio: false,
    scales: {
      x: {
        grid: {
          display: false,
          drawBorder: false,
        },
        ticks: {
          display: false,
        },
      },
      y: {
        min: -2,
        max: 5,
        display: false,
        grid: {
          display: false,
        },
        ticks: {
          display: false,
        },
      },
    },
    elements: {
      line: {
        borderWidth: 1,
      },
      point: {
        radius: 4,
        hitRadius: 10,
        hoverRadius: 4,
      },
    },
  },
})

function get_moneyChart(){
	let user = "";
	$.ajax({
		type:"get",
		url:"/admin/money_chart",
		async:false,
		success:function(data){
			user = JSON.parse(data);
		},error: function(x,y,err){
			alert(x.y + x.responseText + err) 
		}
	})
	return user;
}

let money_data = get_moneyChart();

// eslint-disable-next-line no-unused-vars
const cardChart2 = new Chart(document.getElementById('card-chart2'), {
  type: 'line',
  data: {
    labels: convert_x(money_data),
    datasets: [
      {
        label: '日商',
        backgroundColor: 'transparent',
        borderColor: 'rgba(255,255,255,.55)',
        pointBackgroundColor: coreui.Utils.getStyle('--cui-info'),
        data: convert_y(money_data),
      },
    ],
  },
  options: {
    plugins: {
      legend: {
        display: false,
      },
    },
    maintainAspectRatio: false,
    scales: {
      x: {
        grid: {
          display: false,
          drawBorder: false,
        },
        ticks: {
          display: false,
        },
      },
      y: {
        min: 0,
        max: 300000,
        display: false,
        grid: {
          display: false,
        },
        ticks: {
          display: false,
        },
      },
    },
    elements: {
      line: {
        borderWidth: 1,
      },
      point: {
        radius: 4,
        hitRadius: 10,
        hoverRadius: 4,
      },
    },
  },
})

function get_ratio_orderChart(){
	let user = "";
	$.ajax({
		type:"get",
		url:"/admin/ratio_order_chart",
		async:false,
		success:function(data){
			user = JSON.parse(data);
		},error: function(x,y,err){
			alert(x.y + x.responseText + err) 
		}
	})
	return user;
}

let f_ratio_data = get_ratio_orderChart();

// eslint-disable-next-line no-unused-vars
const mainChart = new Chart(document.getElementById('main-chart'), {
  type: 'doughnut',
  data: {
    labels: ['Albums','Tracks'],
    datasets: [
      {
        label: '購買比率',
        backgroundColor: ['rgba(255, 99, 132, 0.2)',
					'rgba(54, 162, 235, 0.2)'],
        borderColor: coreui.Utils.getStyle('--cui-info'),
        pointHoverBackgroundColor: '#0040FF',
        data: convert_y(f_ratio_data),
      }
    ],
  },
  options: {
    responsive: false,
    plugins: {
      legend: {
        position: 'top',
      },
      title: {
        display: false,
        text: 'ㄴㄴ'
      }
    }//plugins
  },
})

function get_ratio_genreChart(){
	let user = "";
	$.ajax({
		type:"get",
		url:"/admin/ratio_genre_chart",
		async:false,
		success:function(data){
			user = JSON.parse(data);
		},error: function(x,y,err){
			alert(x.y + x.responseText + err) 
		}
	})
	return user;
}

let s_ratio_data = get_ratio_genreChart();

const subsubChart = new Chart(document.getElementById('subsub-chart'), {
  type: 'doughnut',
  data: {
    labels: convert_x(s_ratio_data),
    datasets: [
      {
        label: '購買比率',
        backgroundColor: ['rgba(255, 99, 132, 0.2)',
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)',
					'rgba(153, 102, 255, 0.2)',
					'rgba(255, 159, 64, 0.2)',//6
					'rgba(123, 45, 64, 0.2)',
					'rgba(17, 62, 7, 0.2)',
					'rgba(160, 159, 120, 0.2)'],
        borderColor: coreui.Utils.getStyle('--cui-info'),
        pointHoverBackgroundColor: '#0040FF',
        data: convert_y(s_ratio_data),
      }
    ],
  },
  options: {
    responsive: false,
    plugins: {
      legend: {
        position: 'top',
      },
      title: {
        display: false,
        text: 'ㄴㄴ'
      }
    }//plugins
  },
})
