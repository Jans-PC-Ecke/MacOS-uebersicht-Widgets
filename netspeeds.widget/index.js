command: "sh ./netspeeds.widget/netspeeds.sh", 

refreshFrequency: 5000, 

render: function(output) {
	var data = output.split('#');
	return "<div class=\"netspeeds-widget\"><div class=\"speeds speeds-ethernet\"><h3>Wifi:</h3>Down: " + data[0] + " MB/sec<br>Up: " + data[1] + " MB/sec<br>IP: " + data[4];
},

style: "\n\
	left: 1200px;\n\
	bottom: 10px;\n\
	color: #fff;\n\
	font-size: 13px;\n\
	font-family: 'san francisco', 'lucida grande', helvetica, sans-serif;\n\
	\n\
	.netspeeds-widget \n\
		background-color: rgba(255, 255, 255, 0.1); \n\
		padding: 14px;\n\
		border-radius: 8px;\n\
		border: 1px solid #222;\n\
	\n\
	h3 \n\
		margin-top: 0px; \n\
		margin-bottom: 0; \n\
		font-size: 13px;\n\
	\n\
	.speeds \n\
		background-position: left center;\n\
		background-repeat: no-repeat;\n\
		padding-left: 60px;\n\
		display: inline-block;\n\
		min-width: 190px;\n\
		box-sizing: border-box;\n\
	\n\
	.speeds-ethernet \n\
		background-image: url(netspeeds.widget/ethernet.png);\
		background-image: url(netspeeds.widget/wifi.png);\n\
		padding-right: 20px;\n\
	\n\
	.speeds-airport \n\
		background-image: url(netspeeds.widget/ethernet.png);\n\
		background-image: url(netspeeds.widget/wifi.png);\n\
"