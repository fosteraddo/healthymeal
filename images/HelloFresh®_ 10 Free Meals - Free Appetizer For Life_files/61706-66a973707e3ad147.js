"use strict";(self.webpackChunk_N_E=self.webpackChunk_N_E||[]).push([[61706],{661706:function(e,t,n){let r;n.d(t,{Eh:function(){return eE},VY:function(){return ey},zt:function(){return em},fC:function(){return eg},xz:function(){return ew}});var o=n(925773),i=n(827378),l=n(546718),a=n(909111),s=n(158560),u=n(331542),d=n(170409);let c=["a","button","div","h2","h3","img","label","li","nav","ol","p","span","svg","ul"].reduce((e,t)=>{let n=(0,i.forwardRef)((e,n)=>{let{asChild:r,...l}=e,a=r?d.g7:t;return(0,i.useEffect)(()=>{window[Symbol.for("radix-ui")]=!0},[]),(0,i.createElement)(a,(0,o.Z)({},l,{ref:n}))});return n.displayName=`Primitive.${t}`,{...e,[t]:n}},{});var p=n(729064),f=n(76242);let v="dismissableLayer.update",h=(0,i.createContext)({layers:new Set,layersWithOutsidePointerEventsDisabled:new Set,branches:new Set}),m=(0,i.forwardRef)((e,t)=>{var n;let{disableOutsidePointerEvents:s=!1,onEscapeKeyDown:u,onPointerDownOutside:d,onFocusOutside:m,onInteractOutside:y,onDismiss:E,...b}=e,x=(0,i.useContext)(h),[C,P]=(0,i.useState)(null),T=null!==(n=null==C?void 0:C.ownerDocument)&&void 0!==n?n:null==globalThis?void 0:globalThis.document,[,D]=(0,i.useState)({}),O=(0,a.e)(t,e=>P(e)),R=Array.from(x.layers),[_]=[...x.layersWithOutsidePointerEventsDisabled].slice(-1),L=R.indexOf(_),k=C?R.indexOf(C):-1,M=x.layersWithOutsidePointerEventsDisabled.size>0,A=k>=L,S=function(e,t=null==globalThis?void 0:globalThis.document){let n=(0,p.W)(e),r=(0,i.useRef)(!1),o=(0,i.useRef)(()=>{});return(0,i.useEffect)(()=>{let e=e=>{if(e.target&&!r.current){let r={originalEvent:e};function i(){w("dismissableLayer.pointerDownOutside",n,r,{discrete:!0})}"touch"===e.pointerType?(t.removeEventListener("click",o.current),o.current=i,t.addEventListener("click",o.current,{once:!0})):i()}r.current=!1},i=window.setTimeout(()=>{t.addEventListener("pointerdown",e)},0);return()=>{window.clearTimeout(i),t.removeEventListener("pointerdown",e),t.removeEventListener("click",o.current)}},[t,n]),{onPointerDownCapture:()=>r.current=!0}}(e=>{let t=e.target,n=[...x.branches].some(e=>e.contains(t));!A||n||(null==d||d(e),null==y||y(e),e.defaultPrevented||null==E||E())},T),W=function(e,t=null==globalThis?void 0:globalThis.document){let n=(0,p.W)(e),r=(0,i.useRef)(!1);return(0,i.useEffect)(()=>{let e=e=>{e.target&&!r.current&&w("dismissableLayer.focusOutside",n,{originalEvent:e},{discrete:!1})};return t.addEventListener("focusin",e),()=>t.removeEventListener("focusin",e)},[t,n]),{onFocusCapture:()=>r.current=!0,onBlurCapture:()=>r.current=!1}}(e=>{let t=e.target,n=[...x.branches].some(e=>e.contains(t));n||(null==m||m(e),null==y||y(e),e.defaultPrevented||null==E||E())},T);return(0,f.e)(e=>{let t=k===x.layers.size-1;t&&(null==u||u(e),!e.defaultPrevented&&E&&(e.preventDefault(),E()))},T),(0,i.useEffect)(()=>{if(C)return s&&(0===x.layersWithOutsidePointerEventsDisabled.size&&(r=T.body.style.pointerEvents,T.body.style.pointerEvents="none"),x.layersWithOutsidePointerEventsDisabled.add(C)),x.layers.add(C),g(),()=>{s&&1===x.layersWithOutsidePointerEventsDisabled.size&&(T.body.style.pointerEvents=r)}},[C,T,s,x]),(0,i.useEffect)(()=>()=>{C&&(x.layers.delete(C),x.layersWithOutsidePointerEventsDisabled.delete(C),g())},[C,x]),(0,i.useEffect)(()=>{let e=()=>D({});return document.addEventListener(v,e),()=>document.removeEventListener(v,e)},[]),(0,i.createElement)(c.div,(0,o.Z)({},b,{ref:O,style:{pointerEvents:M?A?"auto":"none":void 0,...e.style},onFocusCapture:(0,l.M)(e.onFocusCapture,W.onFocusCapture),onBlurCapture:(0,l.M)(e.onBlurCapture,W.onBlurCapture),onPointerDownCapture:(0,l.M)(e.onPointerDownCapture,S.onPointerDownCapture)}))});function g(){let e=new CustomEvent(v);document.dispatchEvent(e)}function w(e,t,n,{discrete:r}){let o=n.originalEvent.target,i=new CustomEvent(e,{bubbles:!1,cancelable:!0,detail:n});(t&&o.addEventListener(e,t,{once:!0}),r)?o&&(0,u.flushSync)(()=>o.dispatchEvent(i)):o.dispatchEvent(i)}var y=n(132420),E=n(395954),b=n(825772),x=n(563349);let C=(0,i.forwardRef)((e,t)=>{let{children:n,width:r=10,height:l=5,...a}=e;return(0,i.createElement)(c.svg,(0,o.Z)({},a,{ref:t,width:r,height:l,viewBox:"0 0 30 10",preserveAspectRatio:"none"}),e.asChild?n:(0,i.createElement)("polygon",{points:"0,0 30,0 15,10"}))});var P=n(881307),T=n(116937);let D="Popper",[O,R]=(0,s.b)(D),[_,L]=O(D),k=(0,i.forwardRef)((e,t)=>{let{__scopePopper:n,virtualRef:r,...l}=e,s=L("PopperAnchor",n),u=(0,i.useRef)(null),d=(0,a.e)(t,u);return(0,i.useEffect)(()=>{s.onAnchorChange((null==r?void 0:r.current)||u.current)}),r?null:(0,i.createElement)(c.div,(0,o.Z)({},l,{ref:d}))}),M="PopperContent",[A,S]=O(M),[W,$]=O(M,{hasParent:!1,positionUpdateFns:new Set}),Z=(0,i.forwardRef)((e,t)=>{var n,r,o,l,s,u,d,f;let{__scopePopper:v,side:h="bottom",sideOffset:m=0,align:g="center",alignOffset:w=0,arrowPadding:y=0,collisionBoundary:C=[],collisionPadding:D=0,sticky:O="partial",hideWhenDetached:R=!1,avoidCollisions:_=!0,onPlaced:k,...S}=e,Z=L(M,v),[F,H]=(0,i.useState)(null),N=(0,a.e)(t,e=>H(e)),[K,U]=(0,i.useState)(null),j=(0,T.t)(K),q=null!==(n=null==j?void 0:j.width)&&void 0!==n?n:0,V=null!==(r=null==j?void 0:j.height)&&void 0!==r?r:0,G="number"==typeof D?D:{top:0,right:0,bottom:0,left:0,...D},J=Array.isArray(C)?C:[C],Q=J.length>0,ee={padding:G,boundary:J.filter(Y),altBoundary:Q},{reference:et,floating:en,strategy:er,x:eo,y:ei,placement:el,middlewareData:ea,update:es}=(0,E.YF)({strategy:"fixed",placement:h+("center"!==g?"-"+g:""),whileElementsMounted:b.Me,middleware:[B(),(0,x.cv)({mainAxis:m+V,alignmentAxis:w}),_?(0,x.uY)({mainAxis:!0,crossAxis:!1,limiter:"partial"===O?(0,x.dr)():void 0,...ee}):void 0,K?(0,E.x7)({element:K,padding:y}):void 0,_?(0,x.RR)({...ee}):void 0,(0,x.dp)({...ee,apply:({elements:e,availableWidth:t,availableHeight:n})=>{e.floating.style.setProperty("--radix-popper-available-width",`${t}px`),e.floating.style.setProperty("--radix-popper-available-height",`${n}px`)}}),z({arrowWidth:q,arrowHeight:V}),R?(0,x.Cp)({strategy:"referenceHidden"}):void 0].filter(I)});(0,P.b)(()=>{et(Z.anchor)},[et,Z.anchor]);let eu=null!==eo&&null!==ei,[ed,ec]=X(el),ep=(0,p.W)(k);(0,P.b)(()=>{eu&&(null==ep||ep())},[eu,ep]);let ef=null===(o=ea.arrow)||void 0===o?void 0:o.x,ev=null===(l=ea.arrow)||void 0===l?void 0:l.y,eh=(null===(s=ea.arrow)||void 0===s?void 0:s.centerOffset)!==0,[em,eg]=(0,i.useState)();(0,P.b)(()=>{F&&eg(window.getComputedStyle(F).zIndex)},[F]);let{hasParent:ew,positionUpdateFns:ey}=$(M,v),eE=!ew;(0,i.useLayoutEffect)(()=>{if(!eE)return ey.add(es),()=>{ey.delete(es)}},[eE,ey,es]),(0,P.b)(()=>{eE&&eu&&Array.from(ey).reverse().forEach(e=>requestAnimationFrame(e))},[eE,eu,ey]);let eb={"data-side":ed,"data-align":ec,...S,ref:N,style:{...S.style,animation:eu?void 0:"none",opacity:null!==(u=ea.hide)&&void 0!==u&&u.referenceHidden?0:void 0}};return(0,i.createElement)("div",{ref:en,"data-radix-popper-content-wrapper":"",style:{position:er,left:0,top:0,transform:eu?`translate3d(${Math.round(eo)}px, ${Math.round(ei)}px, 0)`:"translate3d(0, -200%, 0)",minWidth:"max-content",zIndex:em,"--radix-popper-transform-origin":[null===(d=ea.transformOrigin)||void 0===d?void 0:d.x,null===(f=ea.transformOrigin)||void 0===f?void 0:f.y].join(" ")},dir:e.dir},(0,i.createElement)(A,{scope:v,placedSide:ed,onArrowChange:U,arrowX:ef,arrowY:ev,shouldHideArrow:eh},eE?(0,i.createElement)(W,{scope:v,hasParent:!0,positionUpdateFns:ey},(0,i.createElement)(c.div,eb)):(0,i.createElement)(c.div,eb)))}),F={top:"bottom",right:"left",bottom:"top",left:"right"},H=(0,i.forwardRef)(function(e,t){let{__scopePopper:n,...r}=e,l=S("PopperArrow",n),a=F[l.placedSide];return(0,i.createElement)("span",{ref:l.onArrowChange,style:{position:"absolute",left:l.arrowX,top:l.arrowY,[a]:0,transformOrigin:{top:"",right:"0 0",bottom:"center 0",left:"100% 0"}[l.placedSide],transform:{top:"translateY(100%)",right:"translateY(50%) rotate(90deg) translateX(-50%)",bottom:"rotate(180deg)",left:"translateY(50%) rotate(-90deg) translateX(50%)"}[l.placedSide],visibility:l.shouldHideArrow?"hidden":void 0}},(0,i.createElement)(C,(0,o.Z)({},r,{ref:t,style:{...r.style,display:"block"}})))});function I(e){return void 0!==e}function Y(e){return null!==e}let B=()=>({name:"anchorCssProperties",fn(e){let{rects:t,elements:n}=e,{width:r,height:o}=t.reference;return n.floating.style.setProperty("--radix-popper-anchor-width",`${r}px`),n.floating.style.setProperty("--radix-popper-anchor-height",`${o}px`),{}}}),z=e=>({name:"transformOrigin",options:e,fn(t){var n,r,o,i,l;let{placement:a,rects:s,middlewareData:u}=t,d=(null===(n=u.arrow)||void 0===n?void 0:n.centerOffset)!==0,c=d?0:e.arrowWidth,p=d?0:e.arrowHeight,[f,v]=X(a),h={start:"0%",center:"50%",end:"100%"}[v],m=(null!==(r=null===(o=u.arrow)||void 0===o?void 0:o.x)&&void 0!==r?r:0)+c/2,g=(null!==(i=null===(l=u.arrow)||void 0===l?void 0:l.y)&&void 0!==i?i:0)+p/2,w="",y="";return"bottom"===f?(w=d?h:`${m}px`,y=`${-p}px`):"top"===f?(w=d?h:`${m}px`,y=`${s.floating.height+p}px`):"right"===f?(w=`${-p}px`,y=d?h:`${g}px`):"left"===f&&(w=`${s.floating.width+p}px`,y=d?h:`${g}px`),{data:{x:w,y:y}}}});function X(e){let[t,n="center"]=e.split("-");return[t,n]}let N=e=>{let{__scopePopper:t,children:n}=e,[r,o]=(0,i.useState)(null);return(0,i.createElement)(_,{scope:t,anchor:r,onAnchorChange:o},n)};var K=n(525574),U=n(125425);let j=["a","button","div","h2","h3","img","label","li","nav","ol","p","span","svg","ul"].reduce((e,t)=>{let n=(0,i.forwardRef)((e,n)=>{let{asChild:r,...l}=e,a=r?d.g7:t;return(0,i.useEffect)(()=>{window[Symbol.for("radix-ui")]=!0},[]),(0,i.createElement)(a,(0,o.Z)({},l,{ref:n}))});return n.displayName=`Primitive.${t}`,{...e,[t]:n}},{}),q=(0,i.forwardRef)((e,t)=>(0,i.createElement)(j.span,(0,o.Z)({},e,{ref:t,style:{position:"absolute",border:0,width:1,height:1,padding:0,margin:-1,overflow:"hidden",clip:"rect(0, 0, 0, 0)",whiteSpace:"nowrap",wordWrap:"normal",...e.style}}))),[V,G]=(0,s.b)("Tooltip",[R]),J=R(),Q="tooltip.open",[ee,et]=V("TooltipProvider"),en="Tooltip",[er,eo]=V(en),ei="TooltipTrigger",el=(0,i.forwardRef)((e,t)=>{let{__scopeTooltip:n,...r}=e,s=eo(ei,n),u=et(ei,n),d=J(n),p=(0,i.useRef)(null),f=(0,a.e)(t,p,s.onTriggerChange),v=(0,i.useRef)(!1),h=(0,i.useRef)(!1),m=(0,i.useCallback)(()=>v.current=!1,[]);return(0,i.useEffect)(()=>()=>document.removeEventListener("pointerup",m),[m]),(0,i.createElement)(k,(0,o.Z)({asChild:!0},d),(0,i.createElement)(c.button,(0,o.Z)({"aria-describedby":s.open?s.contentId:void 0,"data-state":s.stateAttribute},r,{ref:f,onPointerMove:(0,l.M)(e.onPointerMove,e=>{"touch"===e.pointerType||h.current||u.isPointerInTransitRef.current||(s.onTriggerEnter(),h.current=!0)}),onPointerLeave:(0,l.M)(e.onPointerLeave,()=>{s.onTriggerLeave(),h.current=!1}),onPointerDown:(0,l.M)(e.onPointerDown,()=>{v.current=!0,document.addEventListener("pointerup",m,{once:!0})}),onFocus:(0,l.M)(e.onFocus,()=>{v.current||s.onOpen()}),onBlur:(0,l.M)(e.onBlur,s.onClose),onClick:(0,l.M)(e.onClick,s.onClose)})))}),[ea,es]=V("TooltipPortal",{forceMount:void 0}),eu="TooltipContent",ed=(0,i.forwardRef)((e,t)=>{let n=es(eu,e.__scopeTooltip),{forceMount:r=n.forceMount,side:l="top",...a}=e,s=eo(eu,e.__scopeTooltip);return(0,i.createElement)(K.z,{present:r||s.open},s.disableHoverableContent?(0,i.createElement)(ev,(0,o.Z)({side:l},a,{ref:t})):(0,i.createElement)(ec,(0,o.Z)({side:l},a,{ref:t})))}),ec=(0,i.forwardRef)((e,t)=>{let n=eo(eu,e.__scopeTooltip),r=et(eu,e.__scopeTooltip),l=(0,i.useRef)(null),s=(0,a.e)(t,l),[u,d]=(0,i.useState)(null),{trigger:c,onClose:p}=n,f=l.current,{onPointerInTransitChange:v}=r,h=(0,i.useCallback)(()=>{d(null),v(!1)},[v]),m=(0,i.useCallback)((e,t)=>{let n=e.currentTarget,r={x:e.clientX,y:e.clientY},o=function(e,t){let n=Math.abs(t.top-e.y),r=Math.abs(t.bottom-e.y),o=Math.abs(t.right-e.x),i=Math.abs(t.left-e.x);switch(Math.min(n,r,o,i)){case i:return"left";case o:return"right";case n:return"top";case r:return"bottom";default:return null}}(r,n.getBoundingClientRect()),i="right"===o||"bottom"===o?-5:5,l="right"===o||"left"===o?{x:e.clientX+i,y:e.clientY}:{x:e.clientX,y:e.clientY+i},a=function(e){let{top:t,right:n,bottom:r,left:o}=e;return[{x:o,y:t},{x:n,y:t},{x:n,y:r},{x:o,y:r}]}(t.getBoundingClientRect()),s=function(e){let t=e.slice();return t.sort((e,t)=>e.x<t.x?-1:e.x>t.x?1:e.y<t.y?-1:e.y>t.y?1:0),function(e){if(e.length<=1)return e.slice();let t=[];for(let n=0;n<e.length;n++){let r=e[n];for(;t.length>=2;){let e=t[t.length-1],n=t[t.length-2];if((e.x-n.x)*(r.y-n.y)>=(e.y-n.y)*(r.x-n.x))t.pop();else break}t.push(r)}t.pop();let n=[];for(let t=e.length-1;t>=0;t--){let r=e[t];for(;n.length>=2;){let e=n[n.length-1],t=n[n.length-2];if((e.x-t.x)*(r.y-t.y)>=(e.y-t.y)*(r.x-t.x))n.pop();else break}n.push(r)}return(n.pop(),1===t.length&&1===n.length&&t[0].x===n[0].x&&t[0].y===n[0].y)?t:t.concat(n)}(t)}([l,...a]);d(s),v(!0)},[v]);return(0,i.useEffect)(()=>()=>h(),[h]),(0,i.useEffect)(()=>{if(c&&f){let e=e=>m(e,f),t=e=>m(e,c);return c.addEventListener("pointerleave",e),f.addEventListener("pointerleave",t),()=>{c.removeEventListener("pointerleave",e),f.removeEventListener("pointerleave",t)}}},[c,f,m,h]),(0,i.useEffect)(()=>{if(u){let e=e=>{let t=e.target,n={x:e.clientX,y:e.clientY},r=(null==c?void 0:c.contains(t))||(null==f?void 0:f.contains(t)),o=!function(e,t){let{x:n,y:r}=e,o=!1;for(let e=0,i=t.length-1;e<t.length;i=e++){let l=t[e].x,a=t[e].y,s=t[i].x,u=t[i].y,d=a>r!=u>r&&n<(s-l)*(r-a)/(u-a)+l;d&&(o=!o)}return o}(n,u);r?h():o&&(h(),p())};return document.addEventListener("pointermove",e),()=>document.removeEventListener("pointermove",e)}},[c,f,u,p,h]),(0,i.createElement)(ev,(0,o.Z)({},e,{ref:s}))}),[ep,ef]=V(en,{isInside:!1}),ev=(0,i.forwardRef)((e,t)=>{let{__scopeTooltip:n,children:r,"aria-label":l,onEscapeKeyDown:a,onPointerDownOutside:s,...u}=e,c=eo(eu,n),p=J(n),{onClose:f}=c;return(0,i.useEffect)(()=>(document.addEventListener(Q,f),()=>document.removeEventListener(Q,f)),[f]),(0,i.useEffect)(()=>{if(c.trigger){let e=e=>{let t=e.target;null!=t&&t.contains(c.trigger)&&f()};return window.addEventListener("scroll",e,{capture:!0}),()=>window.removeEventListener("scroll",e,{capture:!0})}},[c.trigger,f]),(0,i.createElement)(m,{asChild:!0,disableOutsidePointerEvents:!1,onEscapeKeyDown:a,onPointerDownOutside:s,onFocusOutside:e=>e.preventDefault(),onDismiss:f},(0,i.createElement)(Z,(0,o.Z)({"data-state":c.stateAttribute},p,u,{ref:t,style:{...u.style,"--radix-tooltip-content-transform-origin":"var(--radix-popper-transform-origin)"}}),(0,i.createElement)(d.A4,null,r),(0,i.createElement)(ep,{scope:n,isInside:!0},(0,i.createElement)(q,{id:c.contentId,role:"tooltip"},l||r))))}),eh=(0,i.forwardRef)((e,t)=>{let{__scopeTooltip:n,...r}=e,l=J(n),a=ef("TooltipArrow",n);return a.isInside?null:(0,i.createElement)(H,(0,o.Z)({},l,r,{ref:t}))}),em=e=>{let{__scopeTooltip:t,delayDuration:n=700,skipDelayDuration:r=300,disableHoverableContent:o=!1,children:l}=e,[a,s]=(0,i.useState)(!0),u=(0,i.useRef)(!1),d=(0,i.useRef)(0);return(0,i.useEffect)(()=>{let e=d.current;return()=>window.clearTimeout(e)},[]),(0,i.createElement)(ee,{scope:t,isOpenDelayed:a,delayDuration:n,onOpen:(0,i.useCallback)(()=>{window.clearTimeout(d.current),s(!1)},[]),onClose:(0,i.useCallback)(()=>{window.clearTimeout(d.current),d.current=window.setTimeout(()=>s(!0),r)},[r]),isPointerInTransitRef:u,onPointerInTransitChange:(0,i.useCallback)(e=>{u.current=e},[]),disableHoverableContent:o},l)},eg=e=>{let{__scopeTooltip:t,children:n,open:r,defaultOpen:o=!1,onOpenChange:l,disableHoverableContent:a,delayDuration:s}=e,u=et(en,e.__scopeTooltip),d=J(t),[c,p]=(0,i.useState)(null),f=(0,y.M)(),v=(0,i.useRef)(0),h=null!=a?a:u.disableHoverableContent,m=null!=s?s:u.delayDuration,g=(0,i.useRef)(!1),[w=!1,E]=(0,U.T)({prop:r,defaultProp:o,onChange:e=>{e?(u.onOpen(),document.dispatchEvent(new CustomEvent(Q))):u.onClose(),null==l||l(e)}}),b=(0,i.useMemo)(()=>w?g.current?"delayed-open":"instant-open":"closed",[w]),x=(0,i.useCallback)(()=>{window.clearTimeout(v.current),g.current=!1,E(!0)},[E]),C=(0,i.useCallback)(()=>{window.clearTimeout(v.current),E(!1)},[E]),P=(0,i.useCallback)(()=>{window.clearTimeout(v.current),v.current=window.setTimeout(()=>{g.current=!0,E(!0)},m)},[m,E]);return(0,i.useEffect)(()=>()=>window.clearTimeout(v.current),[]),(0,i.createElement)(N,d,(0,i.createElement)(er,{scope:t,contentId:f,open:w,stateAttribute:b,trigger:c,onTriggerChange:p,onTriggerEnter:(0,i.useCallback)(()=>{u.isOpenDelayed?P():x()},[u.isOpenDelayed,P,x]),onTriggerLeave:(0,i.useCallback)(()=>{h?C():window.clearTimeout(v.current)},[C,h]),onOpen:x,onClose:C,disableHoverableContent:h},n))},ew=el,ey=ed,eE=eh}}]);