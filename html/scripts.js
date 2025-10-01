const gymResourceNameDefault = typeof GetParentResourceName === 'function' ? GetParentResourceName() : 'Outlaw_GymShop';
let gymresourcename = gymResourceNameDefault;

let gymdatedata = ["10.03","11.03","12.03","13.03","14.03","15.03","16.03","17.03","18.03","19.03","20.03"];

let gymvisitorsdata = [0,0,0,0,0,10,0,0,0,0,0];

let visitorschart;
let nuiOpen = false;
const root = document.documentElement;
const defaultHighlight = getComputedStyle(root).getPropertyValue('--gym-highlight-height').trim() || '12%';
const defaultHighlightOffset = getComputedStyle(root).getPropertyValue('--gym-highlight-bottom').trim() || '0%';

Chart.defaults.global.defaultFontColor = '#f5f7fb';
Chart.defaults.global.defaultFontFamily = 'Poppins, sans-serif';

function clampPercentage(value, minimum, maximum, fallback) {
  if (typeof value !== 'number' || Number.isNaN(value)) {
    return fallback;
  }
  return Math.min(maximum, Math.max(minimum, value));
}

function parseDefaultPercentage(value, fallback) {
  const numeric = parseFloat(value);
  if (Number.isFinite(numeric)) {
    return numeric;
  }
  return fallback;
}

function setHighlightWindow(percent, offset) {
  const size = clampPercentage(percent, 2, 100, null);
  const baseOffset = clampPercentage(offset, 0, 100, null);
  if (size !== null) {
    root.style.setProperty('--gym-highlight-height', `${size}%`);
  } else {
    root.style.setProperty('--gym-highlight-height', defaultHighlight);
  }
  if (baseOffset !== null) {
    const appliedSize = size !== null ? size : parseDefaultPercentage(defaultHighlight, 12);
    const maxOffset = Math.max(0, 100 - appliedSize);
    const safeOffset = Math.min(maxOffset, baseOffset);
    root.style.setProperty('--gym-highlight-bottom', `${safeOffset}%`);
  } else {
    root.style.setProperty('--gym-highlight-bottom', defaultHighlightOffset);
  }
}

(function ($) {
  const originalShow = $.fn.show;
  $.fn.show = function () {
    const result = originalShow.apply(this, arguments);
    this.each(function () {
      if ($(this).hasClass('panel')) {
        $(this).css('display', 'flex');
      }
    });
    return result;
  };
})(jQuery);

function closeMain() {
  $('body').css('display', 'none');
  nuiOpen = false;
}

function openMain() {
  $('body').css('display', 'block');
  nuiOpen = true;
}

function postNui(endpoint, payload) {
  $.post('https://' + gymresourcename + '/' + endpoint, JSON.stringify(payload || {}));
}

function tintColor(hex, ratio) {
  if (typeof hex !== 'string') {
    return '#ffffff';
  }
  const normalized = hex.replace('#', '');
  if (normalized.length !== 6) {
    return hex;
  }
  const num = parseInt(normalized, 16);
  const r = (num >> 16) & 255;
  const g = (num >> 8) & 255;
  const b = num & 255;
  const mix = (channel) => Math.round(channel + (255 - channel) * ratio);
  const rr = mix(r).toString(16).padStart(2, '0');
  const gg = mix(g).toString(16).padStart(2, '0');
  const bb = mix(b).toString(16).padStart(2, '0');
  return `#${rr}${gg}${bb}`;
}

$('.closegymentry').on('click', function () {
  postNui('quit');
});

$('.closegymbuy').on('click', function () {
  postNui('quit');
});

$('.closegymmanagment').on('click', function () {
  postNui('quit');
});

window.addEventListener('message', function (event) {

	var item = event.data;
	
	if (item.message == "gymentryshow") {
		openMain();
		document.getElementsByClassName("headergymentrytext")[0].innerHTML = item.gymentrylabel;
		document.getElementById("gymentrypassdurationdata").innerHTML = item.gymentrypasstimeduration;
		document.getElementById("gymentryonedurationdata").innerHTML = item.gymentryonetimeduration;
		document.getElementById("gymentrypasspricedata").innerHTML = item.gymentrypasstimeprice;
		document.getElementById("gymentryonepricedata").innerHTML = item.gymentryonetimeprice;
		$("#gymmanagmentshow").hide();	
		$("#gymbuyshow").hide();	
		$("#gymshow").hide();	
		$("#gymstatsshow").hide();	
		$("#gymentryshow").show();	
	}		
		
	if (item.message == "hide") {
		closeMain();
	}
	
	if (item.message == "gymbuyshow") {
		openMain();
		document.getElementsByClassName("headergymbuytext")[0].innerHTML = item.gymbuylabel;
		document.getElementById("gymbuypricedata").innerHTML = item.gymbuyprice;
		$("#gymmanagmentshow").hide();	
		$("#gymentryshow").hide();	
		$("#gymshow").hide();	
		$("#gymstatsshow").hide();	
		$("#gymbuyshow").show();	
	}	

	if (item.message == "gymmanagmentshow") {
		openMain();
		gymdatedata = [];
		gymvisitorsdata = [];
		if (visitorschart) {
			visitorschart.destroy();
		}
		$("#gymentryshow").hide();	
		$("#gymbuyshow").hide();	
		$("#gymshow").hide();	
		$("#gymstatsshow").hide();	
		$("#gymmanagmentshow").show();	
		var inputhandler = document.getElementById("gymentrypricesliderdata");
		inputhandler.setAttribute("max", item.gympricemaxdata);	
		document.getElementById("gymentrypricedata").innerHTML = item.gympriceoowneddata;
		document.getElementById("gymwithdrawmoneytextdata").innerHTML = item.gymownedbalancedata;
		if(item.gymowneddataclosed == 1) {		
			document.getElementById("gymclosedinputdata").checked = false;
		} else {	
			document.getElementById("gymclosedinputdata").checked = true;
		}			
		$("#gymentrypricesliderdata").val(item.gympriceoowneddata); 
	}	

	if (item.message == "updatevisitors") {
		gymdatedata.push(item.visitordata);
		gymvisitorsdata.push(item.visitordata2);
	}	
	
        if (item.message == "updatevisitors2") {
                const styles = getComputedStyle(root);
                const primary = styles.getPropertyValue('--primary').trim() || '#ff6b35';
                const accent = styles.getPropertyValue('--primary-accent').trim() || tintColor(primary, 0.35);
                visitorschart = new Chart("gymstatsdata2", {
                  type: "line",
                  data: {
                        labels: gymdatedata,
                        datasets: [{
                          data: gymvisitorsdata,
                          borderColor: primary,
                          backgroundColor: accent,
                          pointBackgroundColor: primary,
                          pointBorderColor: '#1b2335',
                          borderWidth: 3,
                          lineTension: 0.25,
                          fill: false
                        }]
                  },
                  options: {
                        scales: {
                                yAxes: [{
                                        gridLines: { color: 'rgba(255,255,255,0.1)' },
                                        ticks: {
                                                fontSize: 14,
                                                fontFamily: 'Poppins, sans-serif',
                                                stepSize: 1,
                                                beginAtZero: true
                                        }
                                }],
                                xAxes: [{
                                        gridLines: { color: 'rgba(255,255,255,0.05)' },
                                        ticks: {
                                                fontSize: 14,
                                                fontFamily: 'Poppins, sans-serif',
                                                beginAtZero: true
                                        }
                                }]
                        },
                        tooltips: {
                                enabled: true,
                                displayColors: false,
                                mode: 'single',
                                callbacks: {
                                        label: function(tooltipItems) {
                                                return '$' + tooltipItems.yLabel;
                                        }
                                }
                        },
                        responsive: true,
                        legend: { display: false }
                  }
                });
        }
	
	if (item.message == "gymmanagmentupdate") {
		document.getElementById("gymentrypricedata").innerHTML = item.gympriceoowneddata;
		document.getElementById("gymwithdrawmoneytextdata").innerHTML = item.gymownedbalancedata;
		if(item.gymowneddataclosed == 1) {		
			document.getElementById("gymclosedinputdata").checked = false;
		} else {	
			document.getElementById("gymclosedinputdata").checked = true;
		}			
		$("#gymentrypricesliderdata").val(item.gympriceoowneddata); 
	}	

	if (item.message == "gymshow") {
		document.getElementsByClassName("gymlabeltext")[0].innerHTML = item.gymlabeltext;
		openMain();
		$("#gymshow").show();	
	}
	
	if (item.message == "gymstatsshow") {
		$('.statsstatsstrengthmaincontainerdata').css("width", item.strengthdata+"%")
		$('.statsstatsconditionmaincontainerdata').css("width", item.conditiondata+"%")
		$('.statsstatsswimmingmaincontainerdata').css("width", item.swimmingdata+"%")
		$('.statsstatshygienemaincontainerdata').css("width", item.hygienedata+"%")
		$('.statsstatsenergymaincontainerdata').css("width", item.energydata+"%")		
		openMain();
		$("#gymstatsshow").show();	
	}
	
	if (item.message == "progressshow") {
		openMain();
		document.getElementsByClassName("progressbartext")[0].innerHTML = item.progresstext;	
		$("#progressshow").show();	
	}	
	
	if (item.message == "progresshide") {
		$("#progressshow").hide();	
	}	

	if (item.message == "progressupdate") {
		$('.progressbarmaincontainerdata').css("width", item.progressbardata+"%")
	}	

        if (item.message == "gymprogressshow") {
                openMain();
                const progressPrompt = document.querySelector('.progressbartext');
                if (progressPrompt && typeof item.progresstext === 'string' && item.progresstext.trim().length > 0) {
                  progressPrompt.textContent = item.progresstext;
                }
                const reactionPrompt = document.querySelector('.gymprogressbartext');
                if (reactionPrompt) {
                  const fallbackText = reactionPrompt.dataset.defaultText || reactionPrompt.innerHTML;
                  reactionPrompt.innerHTML = fallbackText;
                }
                const reactKeyElement = document.getElementById('gymreactkey');
                if (reactKeyElement) {
                  reactKeyElement.textContent = item.gymreactkey;
                }
                setHighlightWindow(Number(item.highlightwindow), Number(item.highlightoffset));
                $("#gymprogressshow").show();
        }

        if (item.message == "gymprogresshide") {
                setHighlightWindow();
                $("#gymprogressshow").hide();
        }

	if (item.message == "gymprogressupdate") {
		$('.gymprogressbarmaincontainerdata').css("height", item.progressbardata2+"%")
	}		
		
	if (item.message == "hidegymentry") {
		$("#gymentryshow").hide();	
	}	
	
	if (item.message == "hidegymbuy") {
		$("#gymbuyshow").hide();	
	}	

	if (item.message == "hidegymmanagment") {
		$("#gymmanagmentshow").hide();	
	}		
	
	if (item.message == "hidegym") {
		$("#gymshow").hide();	
	}	

	if (item.message == "hidestats") {
		$("#gymstatsshow").hide();	
	}			
	
	if (item.message == "infonotifyshow") {
		document.getElementsByClassName("infonotifytext")[0].innerHTML = item.infonotifytext;
		openMain();
		$("#infonotifyshow").show();	
	}
	
	if (item.message == "hidenotify") {
		$("#infonotifyshow").hide();	
	}		
	
        if (item.message == "updateinterfacedata") {
                gymresourcename = item.gymresourcenamedata || gymResourceNameDefault;
                if (item.interfacecolordata) {
                        root.style.setProperty('--primary', item.interfacecolordata);
                        root.style.setProperty('--primary-accent', tintColor(item.interfacecolordata, 0.35));
                }
        }

        document.onkeyup = function (data) {
                if (nuiOpen && data.which === 27) {
                        postNui('quit');
                }
        };
});

function managmententryprice(e) {
        document.getElementById("gymentrypricedata").innerHTML = e.value;
        postNui('changeentryprice', {
                entryprice: e.value
        });
}

$(".gymentrypassbutton").click(function () {
        postNui('payentry', {
                entrytype: "pass"
        });
});

$(".gymentryonebutton").click(function () {
        postNui('payentry', {
                entrytype: "normal"
        });
});

$(".buttongymbuy").click(function () {
        postNui('buygym');
});

$(".gymwithdrawbutton").click(function () {
        postNui('managmentwithdraw');
});

$("#gymclosedinputdata").click(function(){
        if (document.getElementById("gymclosedinputdata").checked == false){
                document.getElementById("gymclosedinputdata").checked = false;
                postNui('gymstatus', {
                        statushandler: true
                });
        }
        else {
                document.getElementById("gymclosedinputdata").checked = true;
                postNui('gymstatus', {
                        statushandler: false
                });
        }
})

$(".gymsellbutton").click(function () {
        postNui('sellgym');
});

$(".gymtransferbutton").click(function () {
        postNui('transfergym');
});
