(window.webpackChunksmart_tag=window.webpackChunksmart_tag||[]).push([[850],{9441:(e,t,n)=>{var o=n(4836)(n(1097));window.bouncex.products=window.bouncex.products||{},window.bouncex.products.sms={preCampaignFunctions:function(){bouncex.sms=o.default,bouncex.sms.init()}}},1097:(e,t,n)=>{var o=n(4836);Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var i=n(1915),r=o(n(7686)),s=o(n(5754)),u=n(5295),c={_constants:{product:"sms",optInMessage:"Send this text to sign-up for automated, recurring <BrandName> marketing texts, like cart reminders.",params:{source:"sms_source",click:"sms_click",uph:"sms_uph"}},_cache:{deviceId:""},init:function(){this.initialized=!0,this._clickthrough(),this._user(),this._cacheDeviceId()},_clickthrough:function(){var e=bouncex.utils.url.getParam(this._constants.params.click);if(e){var t=Math.floor((new Date).getTime()/1e3);bouncex.updateBounceCookie((function(n){var o=n.sms||{};o[e]=t,n.sms=o,n.ps=1}))}var n=bouncex.utils.url.getParam(this._constants.params.uph);n&&bouncex.updateBounceVisitCookie({uph:n})},_user:function(){var e=bouncex.utils.url.getParam(this._constants.params.uph);if(e){var t={"user:phone_sha256":e,source:"web","user:source":"sms_clickthrough",agent:"js",channel:this._constants.product};this.report("user",t)}},_getOptInSlug:function(e){var t=bouncex.cookie&&bouncex.cookie.did?bouncex.cookie.did:this._cache.deviceId,n="YES-"+bouncex.website.id+"-"+e+"-"+t,o=(0,u.getDeviceOrDocumentLanguage)();return o&&(n+="-"+o.toUpperCase()),n},_getOptInMessage:function(){var e,t=(null===(e=bouncex.website.sms)||void 0===e?void 0:e.optm)||this._constants.optInMessage.replace("<BrandName>",bouncex.website.brandName);if("samsung"===bouncex.browser.manufacturer&&t.includes("&")){var n,o={default:" and ",3606:"et"},i=null!==(n=o[bouncex.website.id])&&void 0!==n?n:o.default;t=t.replace(/ ?& ?/g,i)}return t=encodeURIComponent(t+"\n"),bouncex.browser.android&&bouncex.browser.android<10&&(t=t.replace(/%/g,"%25")),t},_getOptInShortCode:function(){var e=bouncex.website.smsShortCodes;return e&&e.length?e[0]:"29143"},_getOptInURI:function(e){return"sms://"+this._getOptInShortCode()+"?&body="+this._getOptInMessage()+this._getOptInSlug(e)},_triggerOptIn:function(e){bouncex.close_ad(e),window.location.href=this._getOptInURI(e)},optIn:function(e,t){if(!this.initialized)return this.log(e,"sms not initialized. check that sms is enabled and required website settings are valid.",!0),!1;this.report("prompt",{campaignid:e}),t&&(0,i.setTimeoutWrapper)(this._triggerOptIn.call(this,e),300)},report:function(e,t){var n={agent:"user",source:this._constants.product};for(var o in t)t.hasOwnProperty(o)&&(n[o]=t[o]);r.default.report(e,n)},log:function(e,t,n){var o={group:this._constants.product,campaignId:e,message:t};n?s.default.error(o):s.default.info(o)},_cacheDeviceId:function(){var e;bouncex.cookie?bouncex.cookie.did||(e="Device-Not-Found"):e="Cookie-Not-Found";var t=bouncex.cookie&&bouncex.cookie.did?bouncex.cookie.did:e;this._cache.deviceId=t}};t.default=c},5295:(e,t)=>{function n(){return i(navigator.language)}function o(){var e;return i(null===(e=document.documentElement)||void 0===e?void 0:e.lang)}function i(e){return e?e.length<=2?e:e.substring(0,2):""}Object.defineProperty(t,"__esModule",{value:!0}),t.getDeviceLanguage=n,t.getDeviceOrDocumentLanguage=function(){var e=n();return e||o()},t.getDocumentLanguage=o}},e=>{e.O(0,[179],(()=>{return t=9441,e(e.s=t);var t}));e.O()}]);