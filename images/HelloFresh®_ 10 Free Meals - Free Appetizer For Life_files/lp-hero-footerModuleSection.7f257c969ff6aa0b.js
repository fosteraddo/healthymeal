(self.webpackChunk_N_E=self.webpackChunk_N_E||[]).push([[28668],{727650:function(e,t,n){e.exports=window.DOMPurify||(window.DOMPurify=n(231699).default||n(231699))},509957:function(e,t,n){"use strict";n.d(t,{YD:function(){return f}});var r=n(827378);function i(){return(i=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}function o(e,t){return(o=Object.setPrototypeOf||function(e,t){return e.__proto__=t,e})(e,t)}var s=new Map,a=new WeakMap,u=0,c=void 0;function l(e,t,n,r){if(void 0===n&&(n={}),void 0===r&&(r=c),void 0===window.IntersectionObserver&&void 0!==r){var i=e.getBoundingClientRect();return t(r,{isIntersecting:r,target:e,intersectionRatio:"number"==typeof n.threshold?n.threshold:0,time:0,boundingClientRect:i,intersectionRect:i,rootBounds:i}),function(){}}var o=function(e){var t=Object.keys(e).sort().filter(function(t){return void 0!==e[t]}).map(function(t){var n;return t+"_"+("root"===t?(n=e.root)?(a.has(n)||(u+=1,a.set(n,u.toString())),a.get(n)):"0":e[t])}).toString(),n=s.get(t);if(!n){var r,i=new Map,o=new IntersectionObserver(function(t){t.forEach(function(t){var n,o=t.isIntersecting&&r.some(function(e){return t.intersectionRatio>=e});e.trackVisibility&&void 0===t.isVisible&&(t.isVisible=o),null==(n=i.get(t.target))||n.forEach(function(e){e(o,t)})})},e);r=o.thresholds||(Array.isArray(e.threshold)?e.threshold:[e.threshold||0]),n={id:t,observer:o,elements:i},s.set(t,n)}return n}(n),l=o.id,h=o.observer,d=o.elements,p=d.get(e)||[];return d.has(e)||d.set(e,p),p.push(t),h.observe(e),function(){p.splice(p.indexOf(t),1),0===p.length&&(d.delete(e),h.unobserve(e)),0===d.size&&(h.disconnect(),s.delete(l))}}var h=["children","as","triggerOnce","threshold","root","rootMargin","onChange","skip","trackVisibility","delay","initialInView","fallbackInView"];function d(e){return"function"!=typeof e.children}var p=function(e){function t(t){var n;return(n=e.call(this,t)||this).node=null,n._unobserveCb=null,n.handleNode=function(e){!n.node||(n.unobserve(),e||n.props.triggerOnce||n.props.skip||n.setState({inView:!!n.props.initialInView,entry:void 0})),n.node=e||null,n.observeNode()},n.handleChange=function(e,t){e&&n.props.triggerOnce&&n.unobserve(),d(n.props)||n.setState({inView:e,entry:t}),n.props.onChange&&n.props.onChange(e,t)},n.state={inView:!!t.initialInView,entry:void 0},n}t.prototype=Object.create(e.prototype),t.prototype.constructor=t,o(t,e);var n=t.prototype;return n.componentDidUpdate=function(e){(e.rootMargin!==this.props.rootMargin||e.root!==this.props.root||e.threshold!==this.props.threshold||e.skip!==this.props.skip||e.trackVisibility!==this.props.trackVisibility||e.delay!==this.props.delay)&&(this.unobserve(),this.observeNode())},n.componentWillUnmount=function(){this.unobserve(),this.node=null},n.observeNode=function(){if(this.node&&!this.props.skip){var e=this.props,t=e.threshold,n=e.root,r=e.rootMargin,i=e.trackVisibility,o=e.delay,s=e.fallbackInView;this._unobserveCb=l(this.node,this.handleChange,{threshold:t,root:n,rootMargin:r,trackVisibility:i,delay:o},s)}},n.unobserve=function(){this._unobserveCb&&(this._unobserveCb(),this._unobserveCb=null)},n.render=function(){if(!d(this.props)){var e=this.state,t=e.inView,n=e.entry;return this.props.children({inView:t,entry:n,ref:this.handleNode})}var o=this.props,s=o.children,a=o.as,u=function(e,t){if(null==e)return{};var n,r,i={},o=Object.keys(e);for(r=0;r<o.length;r++)n=o[r],t.indexOf(n)>=0||(i[n]=e[n]);return i}(o,h);return r.createElement(a||"div",i({ref:this.handleNode},u),s)},t}(r.Component);function f(e){var t=void 0===e?{}:e,n=t.threshold,i=t.delay,o=t.trackVisibility,s=t.rootMargin,a=t.root,u=t.triggerOnce,c=t.skip,h=t.initialInView,d=t.fallbackInView,p=r.useRef(),f=r.useState({inView:!!h}),v=f[0],b=f[1],y=r.useCallback(function(e){void 0!==p.current&&(p.current(),p.current=void 0),!c&&e&&(p.current=l(e,function(e,t){b({inView:e,entry:t}),t.isIntersecting&&u&&p.current&&(p.current(),p.current=void 0)},{root:a,rootMargin:s,threshold:n,trackVisibility:o,delay:i},d))},[Array.isArray(n)?n.toString():n,a,s,u,c,o,d,i]);(0,r.useEffect)(function(){p.current||!v.entry||u||c||b({inView:!!h})});var g=[y,v.inView,v.entry];return g.ref=g[0],g.inView=g[1],g.entry=g[2],g}p.displayName="InView",p.defaultProps={threshold:0,triggerOnce:!1,initialInView:!1}}}]);