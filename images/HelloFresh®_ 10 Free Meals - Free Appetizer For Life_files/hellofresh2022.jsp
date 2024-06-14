Array.prototype.filter||(Array.prototype.filter=function(t,e){"use strict";if("Function"!=typeof t&&"function"!=typeof t||!this)throw new TypeError;var r=this.length>>>0,o=new Array(r),n=this,l=0,i=-1;if(void 0===e)for(;++i!==r;)i in this&&t(n[i],i,n)&&(o[l++]=n[i]);else for(;++i!==r;)i in this&&t.call(e,n[i],i,n)&&(o[l++]=n[i]);return o.length=l,o}),Array.prototype.forEach||(Array.prototype.forEach=function(t){var e,r;if(null==this)throw new TypeError('"this" is null or not defined');var o=Object(this),n=o.length>>>0;if("function"!=typeof t)throw new TypeError(t+" is not a function");for(arguments.length>1&&(e=arguments[1]),r=0;r<n;){var l;r in o&&(l=o[r],t.call(e,l,r,o)),r++}}),window.NodeList&&!NodeList.prototype.forEach&&(NodeList.prototype.forEach=Array.prototype.forEach),Array.prototype.indexOf||(Array.prototype.indexOf=function(t,e){var r;if(null==this)throw new TypeError('"this" is null or not defined');var o=Object(this),n=o.length>>>0;if(0===n)return-1;var l=0|e;if(l>=n)return-1;for(r=Math.max(l>=0?l:n-Math.abs(l),0);r<n;){if(r in o&&o[r]===t)return r;r++}return-1}),document.getElementsByClassName||(document.getElementsByClassName=function(t){var e,r,o,n=document,l=[];if(n.querySelectorAll)return n.querySelectorAll("."+t);if(n.evaluate)for(r=".//*[contains(concat(' ', @class, ' '), ' "+t+" ')]",e=n.evaluate(r,n,null,0,null);o=e.iterateNext();)l.push(o);else for(e=n.getElementsByTagName("*"),r=new RegExp("(^|\\s)"+t+"(\\s|$)"),o=0;o<e.length;o++)r.test(e[o].className)&&l.push(e[o]);return l}),document.querySelectorAll||(document.querySelectorAll=function(t){var e,r=document.createElement("style"),o=[];for(document.documentElement.firstChild.appendChild(r),document._qsa=[],r.styleSheet.cssText=t+"{x-qsa:expression(document._qsa && document._qsa.push(this))}",window.scrollBy(0,0),r.parentNode.removeChild(r);document._qsa.length;)(e=document._qsa.shift()).style.removeAttribute("x-qsa"),o.push(e);return document._qsa=null,o}),document.querySelector||(document.querySelector=function(t){var e=document.querySelectorAll(t);return e.length?e[0]:null}),Object.keys||(Object.keys=function(){"use strict";var t=Object.prototype.hasOwnProperty,e=!{toString:null}.propertyIsEnumerable("toString"),r=["toString","toLocaleString","valueOf","hasOwnProperty","isPrototypeOf","propertyIsEnumerable","constructor"],o=r.length;return function(n){if("function"!=typeof n&&("object"!=typeof n||null===n))throw new TypeError("Object.keys called on non-object");var l,i,s=[];for(l in n)t.call(n,l)&&s.push(l);if(e)for(i=0;i<o;i++)t.call(n,r[i])&&s.push(r[i]);return s}}()),"function"!=typeof String.prototype.trim&&(String.prototype.trim=function(){return this.replace(/^\s+|\s+$/g,"")}),String.prototype.replaceAll||(String.prototype.replaceAll=function(t,e){return"[object regexp]"===Object.prototype.toString.call(t).toLowerCase()?this.replace(t,e):this.replace(new RegExp(t,"g"),e)}),window.hasOwnProperty=window.hasOwnProperty||Object.prototype.hasOwnProperty;
if (typeof usi_commons === 'undefined') {
	usi_commons = {
		
		debug: location.href.indexOf("usidebug") != -1 || location.href.indexOf("usi_debug") != -1,
		
		log:function(msg) {
			if (usi_commons.debug) {
				try {
					if (msg instanceof Error) {
						console.log(msg.name + ': ' + msg.message);
					} else {
						console.log.apply(console, arguments);
					}
				} catch(err) {
					usi_commons.report_error_no_console(err);
				}
			}
		},
		log_error: function(msg) {
			if (usi_commons.debug) {
				try {
					if (msg instanceof Error) {
						console.log('%c USI Error:', usi_commons.log_styles.error, msg.name + ': ' + msg.message);
					} else {
						console.log('%c USI Error:', usi_commons.log_styles.error, msg);
					}
				} catch(err) {
					usi_commons.report_error_no_console(err);
				}
			}
		},
		log_success: function(msg) {
			if (usi_commons.debug) {
				try {
					console.log('%c USI Success:', usi_commons.log_styles.success, msg);
				} catch(err) {
					usi_commons.report_error_no_console(err);
				}
			}
		},
		dir:function(obj) {
			if (usi_commons.debug) {
				try {
					console.dir(obj);
				} catch(err) {
					usi_commons.report_error_no_console(err);
				}
			}
		},
		log_styles: {
			error: 'color: red; font-weight: bold;',
			success: 'color: green; font-weight: bold;'
		},
		domain: "https://app.upsellit.com",
		cdn: "https://www.upsellit.com",
		is_mobile: (/iphone|ipod|ipad|android|blackberry|mobi/i).test(navigator.userAgent.toLowerCase()),
		device: (/iphone|ipod|ipad|android|blackberry|mobi/i).test(navigator.userAgent.toLowerCase()) ? 'mobile' : 'desktop',
		gup:function(name) {
			try {
				name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
				var regexS = "[\\?&]" + name + "=([^&#\\?]*)";
				var regex = new RegExp(regexS);
				var results = regex.exec(window.location.href);
				if (results == null) return "";
				else return results[1];
			} catch (e) {
				usi_commons.report_error(e);
			}
		},
		load_script:function(source, callback, nocache) {
			try {
				if (source.indexOf("//www.upsellit.com") == 0) source = "https:"+source;
				var docHead = document.getElementsByTagName("head")[0];
				//if (top.location != location) docHead = parent.document.getElementsByTagName("head")[0];
				var newScript = document.createElement('script');
				newScript.type = 'text/javascript';
				var usi_appender = "";
				if (!nocache && source.indexOf("/active/") == -1 && source.indexOf("_pixel.jsp") == -1 && source.indexOf("_throttle.jsp") == -1 && source.indexOf("metro") == -1 && source.indexOf("_suppress") == -1 && source.indexOf("product_recommendations.jsp") == -1 && source.indexOf("_pid.jsp") == -1 && source.indexOf("_zips") == -1) {
					usi_appender = (source.indexOf("?")==-1?"?":"&");
					if (source.indexOf("pv2.js") != -1) usi_appender = "%7C";
					usi_appender += "si=" + usi_commons.get_sess();
				}
				newScript.src = source + usi_appender;
				if (typeof callback == "function") {
					newScript.onload = function() {
						try {
							callback();
						} catch (e) {
							usi_commons.report_error(e);
						}
					};
				}
				docHead.appendChild(newScript);
			} catch (e) {
				usi_commons.report_error(e);
			}
		},
		load_view:function(usiHash, usiSiteID, usiKey, callback) {
			try {
				if (typeof(usi_force) != "undefined" || location.href.indexOf("usi_force") != -1 || (usi_cookies.get("usi_sale") == null && usi_cookies.get("usi_launched") == null && usi_cookies.get("usi_launched"+usiSiteID) == null)) {
					usiKey = usiKey || "";
					var usi_append = "";
					if (usi_commons.gup("usi_force_date") != "") usi_append = "&usi_force_date=" + usi_commons.gup("usi_force_date");
					else if (typeof usi_cookies !== 'undefined' && usi_cookies.get("usi_force_date") != null) usi_append = "&usi_force_date=" + usi_cookies.get("usi_force_date");
					if (usi_commons.debug) usi_append += "&usi_referrer="+encodeURIComponent(location.href);
					var source = usi_commons.domain + "/view.jsp?hash=" + usiHash + "&siteID=" + usiSiteID + "&keys=" + usiKey + usi_append;
					if (typeof(usi_commons.last_view) !== "undefined" && usi_commons.last_view == usiSiteID+"_"+usiKey) return;
					usi_commons.last_view = usiSiteID+"_"+usiKey;
					if (typeof usi_js !== 'undefined' && typeof usi_js.cleanup === 'function') usi_js.cleanup();
					usi_commons.load_script(source, callback);
				}
			} catch (e) {
				usi_commons.report_error(e);
			}
		},
		remove_loads:function() {
			try {
				if (document.getElementById("usi_obj") != null) {
					document.getElementById("usi_obj").parentNode.parentNode.removeChild(document.getElementById("usi_obj").parentNode);
				}
				if (typeof(usi_commons.usi_loads) !== "undefined") {
					for (var i in usi_commons.usi_loads) {
						if (document.getElementById("usi_"+i) != null) {
							document.getElementById("usi_"+i).parentNode.parentNode.removeChild(document.getElementById("usi_"+i).parentNode);
						}
					}
				}
			} catch (e) {
				usi_commons.report_error(e);
			}
		},
		load:function(usiHash, usiSiteID, usiKey, callback){
			try {
				if (typeof(window["usi_" + usiSiteID]) !== "undefined") return;
				usiKey = usiKey || "";
				var usi_append = "";
				if (usi_commons.gup("usi_force_date") != "") usi_append = "&usi_force_date=" + usi_commons.gup("usi_force_date");
				else if (typeof usi_cookies !== 'undefined' && usi_cookies.get("usi_force_date") != null) usi_append = "&usi_force_date=" + usi_cookies.get("usi_force_date");
				if (usi_commons.debug) usi_append += "&usi_referrer="+encodeURIComponent(location.href);
				var source = usi_commons.domain + "/usi_load.jsp?hash=" + usiHash + "&siteID=" + usiSiteID + "&keys=" + usiKey + usi_append;
				usi_commons.load_script(source, callback);
				if (typeof(usi_commons.usi_loads) === "undefined") {
					usi_commons.usi_loads = {};
				}
				usi_commons.usi_loads[usiSiteID] = usiSiteID;
			} catch (e) {
				usi_commons.report_error(e);
			}
		},
		load_precapture:function(usiQS, usiSiteID, callback) {
			try {
				if (typeof(usi_commons.last_precapture_siteID) !== "undefined" && usi_commons.last_precapture_siteID == usiSiteID) return;
				usi_commons.last_precapture_siteID = usiSiteID;
				var source = usi_commons.domain + "/hound/monitor.jsp?qs=" + usiQS + "&siteID=" + usiSiteID;
				usi_commons.load_script(source, callback);
			} catch (e) {
				usi_commons.report_error(e);
			}
		},
		load_mail:function(qs, siteID, callback) {
			try {
				var source = usi_commons.domain + "/mail.jsp?qs=" + qs + "&siteID=" + siteID + "&domain=" + encodeURIComponent(usi_commons.domain);
				usi_commons.load_script(source, callback);
			} catch (e) {
				usi_commons.report_error(e);
			}
		},
		load_products:function(options) {
			try {
				if (!options.siteID || !options.pid) return;
				var queryStr = "";
				var params = ['siteID', 'association_siteID', 'pid', 'less_expensive', 'rows', 'days_back', 'force_exact', 'match', 'nomatch', 'name_from', 'image_from', 'price_from', 'url_from', 'extra_from', 'custom_callback', 'allow_dupe_names', 'expire_seconds', 'name', 'ordersID', 'cartsID', 'viewsID', 'companyID', 'order_by'];
				params.forEach(function(name, index){
					if (options[name]) {
						queryStr += (index == 0 ? "?" : "&") + name + '=' + options[name];
					}
				});
				if (options.filters) {
					queryStr += "&filters=" + encodeURIComponent(options.filters.map(function(filter){
						return encodeURIComponent(filter);
					}).join("&"));
				}
				usi_commons.load_script(usi_commons.cdn + '/utility/product_recommendations_filter_v3.jsp' + queryStr, function(){
					if (typeof options.callback === 'function') {
						options.callback();
					}
				});
			} catch (e) {
				usi_commons.report_error(e);
			}
		},
		send_prod_rec:function(siteID, info, real_time) {
			var result = false;
			try {
				if (document.getElementsByTagName("html").length > 0 && document.getElementsByTagName("html")[0].className != null && document.getElementsByTagName("html")[0].className.indexOf("translated") != -1) {
					//Ignore translated pages
					return false;
				}
				var data = [siteID, info.name, info.link, info.pid, info.price, info.image];
				if (data.indexOf(undefined) == -1) {
					var queryString = [siteID, info.name.replace(/\|/g, "&#124;"), info.link, info.pid, info.price, info.image].join("|") + "|";
					if (info.extra) queryString += info.extra + "|";
					var filetype = real_time ? "jsp" : "js";
					usi_commons.load_script(usi_commons.domain + "/utility/pv2." + filetype + "?" + encodeURIComponent(queryString));
					result = true;
				}
			} catch (e) {
				usi_commons.report_error(e);
				result = false;
			}
			return result;
		},
		report_error:function(err) {
			if (err == null) return;
			if (typeof err === 'string') err = new Error(err);
			if (!(err instanceof Error)) return;
			if (typeof(usi_commons.error_reported) !== "undefined") {
				return;
			}
			usi_commons.error_reported = true;
			if (location.href.indexOf('usishowerrors') !== -1) throw err;
			else usi_commons.load_script(usi_commons.domain + '/err.jsp?oops=' + encodeURIComponent(err.message) + '-' + encodeURIComponent(err.stack) + "&url=" + encodeURIComponent(location.href));
			usi_commons.log_error(err.message);
			usi_commons.dir(err);
		},
		report_error_no_console:function(err) {
			if (err == null) return;
			if (typeof err === 'string') err = new Error(err);
			if (!(err instanceof Error)) return;
			if (typeof(usi_commons.error_reported) !== "undefined") {
				return;
			}
			usi_commons.error_reported = true;
			if (location.href.indexOf('usishowerrors') !== -1) throw err;
			else usi_commons.load_script(usi_commons.domain + '/err.jsp?oops=' + encodeURIComponent(err.message) + '-' + encodeURIComponent(err.stack) + "&url=" + encodeURIComponent(location.href));
		},
		gup_or_get_cookie: function(name, expireSeconds, forceCookie) {
			try {
				if (typeof usi_cookies === 'undefined') {
					usi_commons.log_error('usi_cookies is not defined');
					return;
				}
				expireSeconds = (expireSeconds || usi_cookies.expire_time.day);
				if (name == "usi_enable") expireSeconds = usi_cookies.expire_time.hour;
				var value = null;
				var qsValue = usi_commons.gup(name);
				if (qsValue !== '') {
					value = qsValue;
					usi_cookies.set(name, value, expireSeconds, forceCookie);
				} else {
					value = usi_cookies.get(name);
				}
				return (value || '');
			} catch (e) {
				usi_commons.report_error(e);
			}
		},
		get_sess: function() {
			var usi_si = null;
			if (typeof(usi_cookies) === "undefined") return "";
			try {
				if (usi_cookies.get('usi_si') == null) {
					var usi_rand_str = Math.random().toString(36).substring(2);
					if (usi_rand_str.length > 6) usi_rand_str = usi_rand_str.substring(0, 6);
					usi_si = usi_rand_str + "_" + Math.round((new Date()).getTime() / 1000);
					usi_cookies.set('usi_si', usi_si, 24*60*60);
					return usi_si;
				}
				if (usi_cookies.get('usi_si') != null) usi_si = usi_cookies.get('usi_si');
				usi_cookies.set('usi_si', usi_si, 24*60*60);
			} catch(err) {
				usi_commons.report_error(err);
			}
			return usi_si;
		},
		get_id: function(usi_append) {
			if (!usi_append) usi_append = "";
			var usi_id = null;
			try {
				if (usi_cookies.get('usi_v') == null && usi_cookies.get('usi_id'+usi_append) == null) {
					var usi_rand_str = Math.random().toString(36).substring(2);
					if (usi_rand_str.length > 6) usi_rand_str = usi_rand_str.substring(0, 6);
					usi_id = usi_rand_str + "_" + Math.round((new Date()).getTime() / 1000);
					usi_cookies.set('usi_id'+usi_append, usi_id, 30 * 86400, true);
					return usi_id;
				}
				if (usi_cookies.get('usi_v') != null) usi_id = usi_cookies.get('usi_v');
				if (usi_cookies.get('usi_id'+usi_append) != null) usi_id = usi_cookies.get('usi_id'+usi_append);
				usi_cookies.set('usi_id'+usi_append, usi_id, 30 * 86400, true);
			} catch(err) {
				usi_commons.report_error(err);
			}
			return usi_id;
		},
		load_session_data: function(extended) {
			try {
				if (usi_cookies.get_json("usi_session_data") == null) {
					usi_commons.load_script(usi_commons.domain + '/utility/session_data.jsp?extended=' + (extended?"true":"false"));
				} else {
					usi_app.session_data = usi_cookies.get_json("usi_session_data");
					if (typeof(usi_app.session_data_callback) !== "undefined") {
						usi_app.session_data_callback();
					}
				}
			} catch(err) {
				usi_commons.report_error(err);
			}
		},
		customer_ip:function(last_purchase) {
			try {
				if (last_purchase != -1) {
					usi_cookies.set("usi_suppress", "1", usi_cookies.expire_time.never);
				} else {
					usi_app.main();
				}
			} catch(err) {
				usi_commons.report_error(err);
			}
		},
		customer_check:function(company_id) {
			try {
				if (!usi_app.is_enabled && !usi_cookies.value_exists("usi_ip_checked")) {
					usi_cookies.set("usi_ip_checked", "1", usi_cookies.expire_time.day);
					usi_commons.load_script(usi_commons.domain + "/utility/customer_ip2.jsp?companyID=" + company_id);
					return false;
				}
				return true;
			} catch(err) {
				usi_commons.report_error(err);
			}
		}
	};
	setTimeout(function() {
		try {
			if (usi_commons.gup_or_get_cookie("usi_debug") != "") usi_commons.debug = true;
			if (usi_commons.gup_or_get_cookie("usi_qa") != "") {
				usi_commons.domain = usi_commons.cdn = "https://prod.upsellit.com";
			}
		} catch(err) {
			usi_commons.report_error(err);
		}
	}, 1000);
}

usi_cookieless = "1";
usi_session_storage = "1";
if (typeof(usi_app) == "undefined") {
	if("undefined"==typeof usi_cookies){if(usi_cookies={expire_time:{minute:60,hour:3600,two_hours:7200,four_hours:14400,day:86400,week:604800,two_weeks:1209600,month:2592e3,year:31536e3,never:31536e4},max_cookies_count:15,max_cookie_length:1e3,update_window_name:function(e,i,n){try{var t=-1;if(-1!=n){var r=new Date;r.setTime(r.getTime()+1e3*n),t=r.getTime()}var o=window.top||window,l=0;null!=i&&-1!=i.indexOf("=")&&(i=i.replace(RegExp("=","g"),"USIEQLS")),null!=i&&-1!=i.indexOf(";")&&(i=i.replace(RegExp(";","g"),"USIPRNS"));for(var a=o.name.split(";"),u="",f=0;f<a.length;f++){var c=a[f].split("=");3==c.length?(c[0]==e&&(c[1]=i,c[2]=t,l=1),null!=c[1]&&"null"!=c[1]&&(u+=c[0]+"="+c[1]+"="+c[2]+";")):""!=a[f]&&(u+=a[f]+";")}0==l&&(u+=e+"="+i+"="+t+";"),o.name=u}catch(s){}},flush_window_name:function(e){try{for(var i=window.top||window,n=i.name.split(";"),t="",r=0;r<n.length;r++){var o=n[r].split("=");3==o.length&&(0==o[0].indexOf(e)||(t+=n[r]+";"))}i.name=t}catch(l){}},get_from_window_name:function(e){try{for(var i,n,t=(window.top||window).name.split(";"),r=0;r<t.length;r++){var o=t[r].split("=");if(3==o.length){if(o[0]==e&&(n=o[1],-1!=n.indexOf("USIEQLS")&&(n=n.replace(/USIEQLS/g,"=")),-1!=n.indexOf("USIPRNS")&&(n=n.replace(/USIPRNS/g,";")),!("-1"!=o[2]&&0>usi_cookies.datediff(o[2]))))return i=[n,o[2]]}else if(2==o.length&&o[0]==e)return n=o[1],-1!=n.indexOf("USIEQLS")&&(n=n.replace(/USIEQLS/g,"=")),-1!=n.indexOf("USIPRNS")&&(n=n.replace(/USIPRNS/g,";")),i=[n,new Date().getTime()+6048e5]}}catch(l){}return null},datediff:function(e){return e-new Date().getTime()},count_cookies:function(e){return e=e||"usi_",usi_cookies.search_cookies(e).length},root_domain:function(){try{var e=document.domain.split("."),i=e[e.length-1];if("com"==i||"net"==i||"org"==i||"us"==i||"co"==i||"ca"==i)return e[e.length-2]+"."+e[e.length-1]}catch(n){}return document.domain},create_cookie:function(e,i,n){if(!1!==navigator.cookieEnabled&&void 0===window.usi_nocookies){var t="";if(-1!=n){var r=new Date;r.setTime(r.getTime()+1e3*n),t="; expires="+r.toGMTString()}var o="samesite=none;";0==location.href.indexOf("https://")&&(o+="secure;");var l=usi_cookies.root_domain();"undefined"!=typeof usi_parent_domain&&-1!=document.domain.indexOf(usi_parent_domain)&&(l=usi_parent_domain),document.cookie=e+"="+encodeURIComponent(i)+t+"; path=/;domain="+l+"; "+o}},create_nonencoded_cookie:function(e,i,n){if(!1!==navigator.cookieEnabled&&void 0===window.usi_nocookies){var t="";if(-1!=n){var r=new Date;r.setTime(r.getTime()+1e3*n),t="; expires="+r.toGMTString()}var o="samesite=none;";0==location.href.indexOf("https://")&&(o+="secure;");var l=usi_cookies.root_domain();"undefined"!=typeof usi_parent_domain&&-1!=document.domain.indexOf(usi_parent_domain)&&(l=usi_parent_domain),document.cookie=e+"="+i+t+"; path=/;domain="+l+"; "+o}},read_cookie:function(e){if(!1===navigator.cookieEnabled)return null;var i=e+"=",n=[];try{n=document.cookie.split(";")}catch(t){}for(var r=0;r<n.length;r++){for(var o=n[r];" "==o.charAt(0);)o=o.substring(1,o.length);if(0==o.indexOf(i))return decodeURIComponent(o.substring(i.length,o.length))}return null},del:function(e){usi_cookies.set(e,null,-100);try{null!=localStorage&&localStorage.removeItem(e),null!=sessionStorage&&sessionStorage.removeItem(e)}catch(i){}},get_ls:function(e){try{var i=localStorage.getItem(e);if(null!=i){if(0==i.indexOf("{")&&-1!=i.indexOf("usi_expires")){var n=JSON.parse(i);if(new Date().getTime()>n.usi_expires)return localStorage.removeItem(e),null;i=n.value}return decodeURIComponent(i)}}catch(t){}return null},get:function(e){var i=usi_cookies.read_cookie(e);if(null!=i)return i;try{if(null!=localStorage&&(i=usi_cookies.get_ls(e),null!=i))return i;if(null!=sessionStorage&&(i=sessionStorage.getItem(e),void 0===i&&(i=null),null!=i))return decodeURIComponent(i)}catch(n){}var t=usi_cookies.get_from_window_name(e);if(null!=t&&t.length>1)try{i=decodeURIComponent(t[0])}catch(r){return t[0]}return i},get_json:function(e){var i=null,n=usi_cookies.get(e);if(null==n)return null;try{i=JSON.parse(n)}catch(t){n=n.replace(/\\"/g,'"');try{i=JSON.parse(JSON.parse(n))}catch(r){try{i=JSON.parse(n)}catch(o){}}}return i},search_cookies:function(e){e=e||"";var i=[];return document.cookie.split(";").forEach(function(n){var t=n.split("=")[0].trim();(""===e||0===t.indexOf(e))&&i.push(t)}),i},set:function(e,i,n,t){"undefined"!=typeof usi_nevercookie&&!0==usi_nevercookie&&(t=!1),void 0===n&&(n=-1);try{i=i.replace(/(\r\n|\n|\r)/gm,"")}catch(r){}"undefined"==typeof usi_windownameless&&usi_cookies.update_window_name(e+"",i+"",n);try{if(n>0&&null!=localStorage){var o=new Date,l={value:i,usi_expires:o.getTime()+1e3*n};localStorage.setItem(e,JSON.stringify(l))}else null!=sessionStorage&&sessionStorage.setItem(e,i)}catch(a){}if(t||null==i){if(null!=i){if(null==usi_cookies.read_cookie(e)&&!t&&usi_cookies.search_cookies("usi_").length+1>usi_cookies.max_cookies_count){usi_cookies.report_error('Set cookie "'+e+'" failed. Max cookies count is '+usi_cookies.max_cookies_count);return}if(i.length>usi_cookies.max_cookie_length){usi_cookies.report_error('Cookie "'+e+'" truncated ('+i.length+"). Max single-cookie length is "+usi_cookies.max_cookie_length);return}}usi_cookies.create_cookie(e,i,n)}},set_json:function(e,i,n,t){var r=JSON.stringify(i).replace(/^"/,"").replace(/"$/,"");usi_cookies.set(e,r,n,t)},flush:function(e){e=e||"usi_";var i,n,t,r=document.cookie.split(";");for(i=0;i<r.length;i++)0==(n=r[i]).trim().toLowerCase().indexOf(e)&&(t=n.trim().split("=")[0],usi_cookies.del(t));usi_cookies.flush_window_name(e);try{if(null!=localStorage)for(var o in localStorage)0==o.indexOf(e)&&localStorage.removeItem(o);if(null!=sessionStorage)for(var o in sessionStorage)0==o.indexOf(e)&&sessionStorage.removeItem(o)}catch(l){}},print:function(){for(var e=document.cookie.split(";"),i="",n=0;n<e.length;n++){var t=e[n];0==t.trim().toLowerCase().indexOf("usi_")&&(console.log(decodeURIComponent(t.trim())+" (cookie)"),i+=","+t.trim().toLowerCase().split("=")[0]+",")}try{if(null!=localStorage)for(var r in localStorage)0==r.indexOf("usi_")&&"string"==typeof localStorage[r]&&-1==i.indexOf(","+r+",")&&(console.log(r+"="+usi_cookies.get_ls(r)+" (localStorage)"),i+=","+r+",");if(null!=sessionStorage)for(var r in sessionStorage)0==r.indexOf("usi_")&&"string"==typeof sessionStorage[r]&&-1==i.indexOf(","+r+",")&&(console.log(r+"="+sessionStorage[r]+" (sessionStorage)"),i+=","+r+",")}catch(o){}for(var l=(window.top||window).name.split(";"),a=0;a<l.length;a++){var u=l[a].split("=");if(3==u.length&&0==u[0].indexOf("usi_")&&-1==i.indexOf(","+u[0]+",")){var f=u[1];-1!=f.indexOf("USIEQLS")&&(f=f.replace(/USIEQLS/g,"=")),-1!=f.indexOf("USIPRNS")&&(f=f.replace(/USIPRNS/g,";")),console.log(u[0]+"="+f+" (window.name)"),i+=","+t.trim().toLowerCase().split("=")[0]+","}}},value_exists:function(){var e,i;for(e=0;e<arguments.length;e++)if(i=usi_cookies.get(arguments[e]),""===i||null===i||"null"===i||"undefined"===i)return!1;return!0},report_error:function(e){"undefined"!=typeof usi_commons&&"function"==typeof usi_commons.report_error&&usi_commons.report_error(e)}},"undefined"!=typeof usi_commons&&"function"==typeof usi_commons.gup&&"function"==typeof usi_commons.gup_or_get_cookie)try{""!=usi_commons.gup("usi_email_id")?usi_cookies.set("usi_email_id",usi_commons.gup("usi_email_id").split(".")[0],Number(usi_commons.gup("usi_email_id").split(".")[1]),!0):null==usi_cookies.read_cookie("usi_email_id")&&null!=usi_cookies.get_from_window_name("usi_email_id")&&(usi_commons.load_script("https://www.upsellit.com/launch/blank.jsp?usi_email_id_fix="+encodeURIComponent(usi_cookies.get_from_window_name("usi_email_id")[0])),usi_cookies.set("usi_email_id",usi_cookies.get_from_window_name("usi_email_id")[0],(usi_cookies.get_from_window_name("usi_email_id")[1]-new Date().getTime())/1e3,!0)),""!=usi_commons.gup_or_get_cookie("usi_debug")&&(usi_commons.debug=!0),""!=usi_commons.gup_or_get_cookie("usi_qa")&&(usi_commons.domain=usi_commons.cdn="https://prod.upsellit.com")}catch(e){usi_commons.report_error(e)}-1!=location.href.indexOf("usi_clearcookies")&&usi_cookies.flush()}

if (typeof usi_user_id === 'undefined') {
	usi_user_id = {
		site_id: -1,
		date_diff: 24 * 60 * 60 * 1000,
		previous_active_element: null,
		load_script: function (source) {
			try {
				var docHead = document.getElementsByTagName("head")[0];
				//if (top.location != location) docHead = parent.document.getElementsByTagName("head")[0];
				var newScript = document.createElement('script');
				newScript.type = 'text/javascript';
				var usi_append = "";
				if (location.href.indexOf("usi_instant") != -1) {
					usi_append += "&usi_referrer=usi_instant";
				}
				newScript.src = source + usi_append;
				docHead.appendChild(newScript);
			} catch(err) {
				usi_commons.report_error(err);
			}
		},
		is_new: function () {
			try {
				return (Date.now() - Number(usi_cookies.read_cookie("usi_visit2")) > usi_user_id.date_diff);
			} catch(err) {
				usi_commons.report_error(err);
			}
		},
		compress: function (str) {
			try {
				str = btoa(str).split("").reverse().join("");
				if (str.indexOf("==") == 0) {
					str = "2-" + str.substring(2, str.length);
				} else if (str.indexOf("=") == 0) {
					str = "1-" + str.substring(1, str.length);
				}
				return str;
			} catch(err) {
				usi_commons.report_error(err);
			}
		},
		validate: function (e) {
			try {
				var re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
				return re.test(e);
			} catch(err) {
				usi_commons.report_error(err);
			}
		},
		activate: function (site_id) {
			try {
				if (usi_user_id.site_id != -1) {
					usi_commons.log("usi_user_id.activate: already running");
					return;
				}
				usi_user_id.site_id = site_id;
				var test_email = usi_commons.gup("usi_test_email");
				if (test_email != "") {
					usi_user_id.identified(decodeURIComponent(test_email));
				}
				usi_commons.log("usi_user_id.activate: starting");
				usi_user_id.loop();
				usi_user_id.wait_for_hook();
			} catch(err) {
				usi_commons.report_error(err);
			}
		},
		wait_for_hook: function() {
			if (typeof(__attentive_cfg) !== "undefined" && typeof(window.ometria) === "undefined") {
				__attentive_cfg.oma = '1';
				window.ometria = {};
				window.ometria.identify = function(e) {
					usi_user_id.identified(e);
					usi_user_id.send_data('usi_entry_modal', '1');
				};
			} else {
				setTimeout(usi_user_id.wait_for_hook, 2000);
			}
		},
		identify: function () {
			try {
			} catch (err) {
				usi_commons.report_error(err);
			}
		},
		md5: function(str) {
			try {
			} catch(err) {
				usi_commons.report_error(err);
			}
		},
		loop: function () {
			try {
				var active_element = document.activeElement;
				if (active_element == null || (active_element.tagName).toLowerCase() != 'input') {
					if (usi_user_id.previous_active_element != null) {
						active_element = usi_user_id.previous_active_element;
						usi_user_id.previous_active_element = null;
					}
				}
				if (active_element != null) {
					if ((active_element.tagName).toLowerCase() == 'input') {
						if (active_element.value != null && active_element.type != "password") {
							usi_user_id.previous_active_element = active_element;
							if (typeof (usi_user_id.last_value) == "undefined" || usi_user_id.last_value != active_element.value) {
								usi_user_id.last_value = active_element.value;
								if (usi_user_id.validate(active_element.value.toLowerCase())) {
									usi_user_id.identified(active_element.value.toLowerCase());
								}
							}
						}
					}
				}
				if (active_element == null) {
					var usi_fields = document.getElementsByTagName("input");
					for (var i = 0; i < usi_fields.length; i++) {
						var usi_field = usi_fields[i];
						if (usi_field.value != null && usi_field.type != "password") {
							if (typeof (usi_user_id.last_value) == "undefined" || usi_user_id.last_value != usi_field.value) {
								usi_user_id.last_value = usi_field.value;
								if (usi_user_id.validate(usi_field.value.toLowerCase())) {
									usi_user_id.identified(usi_field.value.toLowerCase());
								}
							}
						}
					}
				}
				setTimeout(usi_user_id.loop, 1500);
			} catch(err) {
				usi_commons.report_error(err);
			}
		},
		identified: function (e) {
			try {
				usi_commons.log("usi_user_id.activate: usi_id2 found! " + e);
				var uniq = usi_user_id.compress(e);
				usi_user_id.send_page_hit(uniq, 60*60);
				if (typeof(usi_user_id.found_user_callback) === "function") {
					usi_user_id.found_user_callback();
				}
			} catch(err) {
				usi_commons.report_error(err);
			}
		},
		send_data: function(name, value) {
			usi_user_id.load_script(usi_commons.domain + "/hound/saveData.jsp?siteID=" + usi_user_id.site_id + "&USI_value=" + value + "&USI_name=" + name + "&USI_Session=" + usi_commons.get_id(""));
		},
		send_page_hit: function (uniq, age) {
			try {
				usi_user_id.send_data("usi_age", age);
				usi_user_id.send_data("usi_id", uniq);
			} catch(err) {
				usi_commons.report_error(err);
			}
		}
	};
}
	try {
		usi_app = {};
		usi_app.main = function () {
			try {
				usi_app.company_id = '10545';
				usi_app.url = location.href.toLowerCase();
				usi_app.is_enabled = usi_commons.gup_or_get_cookie("usi_enable", usi_cookies.expire_time.day, true) != "";
				usi_app.is_confirmation_page = usi_app.url.indexOf('/checkout-success') != -1;
				usi_app.aff_link = "https://www.anrdoezrs.net/click-2681135-15414233";
				usi_app.test = usi_commons.gup_or_get_cookie("usi_force_test", usi_cookies.expire_time.day, true);

				if (location.href.indexOf("unsub") != -1 || location.href.indexOf("/my-account") != -1 || location.href.indexOf("/login") != -1) {
					usi_app.scrub_user();
					return;
				}

				if (usi_app.is_suppressed || usi_cookies.value_exists('usi_suppress')) {
					if (!usi_app.is_enabled) {
						return usi_commons.log("usi_app.main is suppressed");
					}
				}

				if (usi_commons.gup("cjevent") != "") {
					usi_commons.load_script("https://www.upsellit.com/launch/blank.jsp?hellofresh_cjevent=" + encodeURIComponent(location.href));
				}

				if (usi_commons.gup("usi_email_id") != "" && usi_cookies.get("usi_cjevent") == null) {
					usi_app.link_injection(usi_app.aff_link);
					if (typeof(usi_app.set_cj_id) === "undefined") usi_app.set_cj_id = setTimeout(usi_app.set_cj, 10000);
				} else if (window.self === window.top && usi_cookies.get("usi_cjevent") != null) {
					if (typeof(usi_app.set_cj_id) === "undefined") usi_app.set_cj_id = setTimeout(usi_app.set_cj, 10000);
				}

				if (usi_commons.gup("utm_source").indexOf("USI+Technologies") == 0 && usi_commons.gup("cjevent") != "") {
					usi_cookies.set("usi_cjevent", usi_commons.gup("cjevent"), 30*24*60*60, true);
				}

				if(usi_app.is_confirmation_page) return;

				if (!usi_cookies.value_exists("usi_ip_checked")) {
					usi_cookies.set("usi_ip_checked", "1", usi_cookies.expire_time.day);
					// callback is usi_app.customer_ip, if user hasn't purchased it calls usi_app.main
					usi_commons.load_script("https://app.upsellit.com/utility/customer_ip.jsp?companyID=" + usi_app.company_id);
					return;
				}

				usi_app.monitor_choices();
				usi_app.load();
			} catch(err) {
				usi_commons.report_error(err);
			}
		};

		usi_app.customer_ip = function(last_purchase) {
			try {
				if (last_purchase != -1) {
					usi_cookies.set("usi_suppress", "1", usi_cookies.expire_time.never);
				} else {
					usi_app.main();
				}
			} catch(err) {
				usi_commons.report_error(err);
			}
		};

		usi_app.set_cj = function() {
			try {
				if (location.href.indexOf("/checkout-form/payment") != -1 && usi_cookies.get("cje") != usi_cookies.get("usi_cjevent")) {
					usi_commons.load_script("https://www.upsellit.com/launch/blank.jsp?hellofresh_fixlink=" + encodeURIComponent(location.href));
					usi_app.link_injection(usi_app.aff_link);
				}
			} catch(err) {
				usi_commons.report_error(err);
			}
			setTimeout(usi_app.set_cj, 10000);
		};

		usi_app.load = function () {
			try {
				usi_commons.log("usi_app.load()");
				if (typeof usi_js !== 'undefined' && typeof usi_js.cleanup === 'function') {
					usi_js.cleanup();
				}
				if (usi_app.is_suppressed) {
					return usi_commons.log("usi_app.load is suppressed");
				}
				if (usi_cookies.get("usi_ready2") == null) {
					if (Math.random() < (usi_app.increase_percentage('Tue Jun 06 2024 00:00:00 GMT-0700', 0.1) / 100.0)) {
						usi_cookies.set("usi_ready2", "1", 30 * 24 * 60 * 60, true);
					} else if (Math.random() < (usi_app.increase_percentage('Tue Jun 06 2024 00:00:00 GMT-0700', 0.1) / 100.0)) {
						usi_cookies.set("usi_ready2", "2", 30 * 24 * 60 * 60, true);
					} else if (Math.random() < (usi_app.increase_percentage('Tue Jun 06 2024 00:00:00 GMT-0700', 0.1) / 100.0)) {
						usi_cookies.set("usi_ready2", "3", 30 * 24 * 60 * 60, true);
					} else if (Math.random() < (usi_app.increase_percentage('Tue Jun 06 2024 00:00:00 GMT-0700', 0.1) / 100.0)) {
						usi_cookies.set("usi_ready2", "4", 30 * 24 * 60 * 60, true);
					} else if (Math.random() < (usi_app.increase_percentage('Tue Jun 06 2024 00:00:00 GMT-0700', 0.1) / 100.0)) {
						usi_cookies.set("usi_ready2", "5", 30 * 24 * 60 * 60, true);
					} else {
						usi_cookies.set("usi_ready2", "0", 30 * 24 * 60 * 60, true);
					}
				}
				usi_user_id.found_user_callback = function() {
					usi_app.send_data();
				}
				if (usi_cookies.get("usi_ready2") == "1") {
					usi_user_id.activate('52355');
				} else if (usi_cookies.get("usi_ready2") == "2") {
					usi_user_id.activate('52359');
				} else if (usi_cookies.get("usi_ready2") == "3") {
					usi_user_id.activate('52367');
				} else if (usi_cookies.get("usi_ready2") == "4") {
					usi_user_id.activate('52371');
				} else if (usi_cookies.get("usi_ready2") == "5") {
					usi_user_id.activate('52375');
				} else {
					usi_user_id.activate('51103');
				}
			} catch(err) {
				usi_commons.report_error(err);
			}
		};

		usi_app.send_data = function() {
			try {
				if (usi_cookies.get("usi_first_preference") != null) {
					usi_user_id.send_data('usi_first_preference', usi_cookies.get("usi_first_preference"));
					usi_user_id.send_data('usi_meals', usi_cookies.get("usi_meals"));
					usi_user_id.send_data('usi_preferences_text', usi_cookies.get("usi_preferences_text"));
				}
			} catch(err) {
				usi_commons.report_error(err);
			}
		};

		usi_app.increase_percentage = function(start_date, percent_perday) {
			var diff_mili = (new Date()).getTime() - (new Date(start_date)).getTime();
			return diff_mili/86400000/(1/percent_perday);
		};

		usi_app.monitor_choices = function() {
			try {
				if (document.querySelector("span[data-translation-id='funnel.plans.plansWidget.orderReviewStep.planConfiguration']") != null &&  document.querySelectorAll("button[data-test-is-active='true'").length > 0) {
					var meals_text = document.querySelector("span[data-translation-id='funnel.plans.plansWidget.orderReviewStep.planConfiguration']").innerText;
					var preferences = document.querySelectorAll("button[data-test-is-active='true'");
					var preferences_text = "<ul>";
					var is_First = true;
					for (var i = 0; i < preferences.length; i++) {
						if (isNaN(preferences[i].innerText)) {
							if (is_First) {
								usi_cookies.set("usi_first_preference", preferences[i].innerText, 30 * 24 * 60 * 60);
								is_First = false;
							}
							preferences_text += "<li>" + preferences[i].innerText.replace("&", "and") + "</li>";
						}
					}
					preferences_text += "</ul>";
					usi_cookies.set("usi_meals", meals_text, 30 * 24 * 60 * 60);
					usi_cookies.set("usi_preferences_text", preferences_text, 30 * 24 * 60 * 60);
				}
				setTimeout(usi_app.monitor_choices, 2000);
			} catch(err) {
				usi_commons.report_error(err);
			}

		};

		usi_app.link_injection = function (src,callback) {
			try {
				var iframe = document.createElement("iframe");
				iframe.src = src;
				iframe.style.width = "1px";
				iframe.style.height = "1px";
				iframe.setAttribute("id","usi_iframe");
				if (callback != null) iframe.onload = callback;
				document.getElementsByTagName('body')[0].appendChild(iframe);
			} catch(err) {
				usi_commons.report_error(err);
			}
		};

		usi_app.scrub_user = function() {
			usi_cookies.del("usi_id2");
			usi_cookies.del("usi_visit2");
			usi_commons.load_script("https://app.upsellit.com/hound/pixel.jsp?companyID=10545");
		};

		usi_app.check_for_change = function(){
			if (typeof(usi_app.current_page) === "undefined" || usi_app.current_page != location.href) {
				usi_app.current_page = location.href;
				usi_app.main();
				usi_commons.log("USI: running main");
			}
			setTimeout(usi_app.check_for_change, 500);
		};
		if (!usi_app.check_for_change_timeout_id) {
			usi_app.check_for_change_timeout_id = setTimeout(usi_app.check_for_change, 1000);
		}
	} catch(err) {
		usi_commons.report_error(err);
	}
}
