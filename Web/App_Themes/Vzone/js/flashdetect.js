//http://www.featureblend.com/license.txt
var FlashDetect=new function(){var self=this;self.installed=false;self.raw="";self.major=-1;self.minor=-1;self.revision=-1;self.revisionStr="";var activeXDetectRules=[{"name":"ShockwaveFlash.ShockwaveFlash.7","version":function(obj){return getActiveXVersion(obj);}},{"name":"ShockwaveFlash.ShockwaveFlash.6","version":function(obj){var version="6,0,21";try{obj.AllowScriptAccess="always";version=getActiveXVersion(obj);}catch(err){}
return version;}},{"name":"ShockwaveFlash.ShockwaveFlash","version":function(obj){return getActiveXVersion(obj);}}];var getActiveXVersion=function(activeXObj){var version=-1;try{version=activeXObj.GetVariable("$version");}catch(err){}
return version;};var getActiveXObject=function(name){var obj=-1;try{obj=new ActiveXObject(name);}catch(err){obj={activeXError:true};}
return obj;};var parseActiveXVersion=function(str){var versionArray=str.split(",");return{"raw":str,"major":parseInt(versionArray[0].split(" ")[1],10),"minor":parseInt(versionArray[1],10),"revision":parseInt(versionArray[2],10),"revisionStr":versionArray[2]};};var parseStandardVersion=function(str){var descParts=str.split(/ +/);var majorMinor=descParts[2].split(/\./);var revisionStr=descParts[3];return{"raw":str,"major":parseInt(majorMinor[0],10),"minor":parseInt(majorMinor[1],10),"revisionStr":revisionStr,"revision":parseRevisionStrToInt(revisionStr)};};var parseRevisionStrToInt=function(str){return parseInt(str.replace(/[a-zA-Z]/g,""),10)||self.revision;};self.majorAtLeast=function(version){return self.major>=version;};self.minorAtLeast=function(version){return self.minor>=version;};self.revisionAtLeast=function(version){return self.revision>=version;};self.versionAtLeast=function(major){var properties=[self.major,self.minor,self.revision];var len=Math.min(properties.length,arguments.length);for(i=0;i<len;i++){if(properties[i]>=arguments[i]){if(i+1<len&&properties[i]==arguments[i]){continue;}else{return true;}}else{return false;}}};self.FlashDetect=function(){if(navigator.plugins&&navigator.plugins.length>0){var type='application/x-shockwave-flash';var mimeTypes=navigator.mimeTypes;if(mimeTypes&&mimeTypes[type]&&mimeTypes[type].enabledPlugin&&mimeTypes[type].enabledPlugin.description){var version=mimeTypes[type].enabledPlugin.description;var versionObj=parseStandardVersion(version);self.raw=versionObj.raw;self.major=versionObj.major;self.minor=versionObj.minor;self.revisionStr=versionObj.revisionStr;self.revision=versionObj.revision;self.installed=true;}}else if(navigator.appVersion.indexOf("Mac")==-1&&window.execScript){var version=-1;for(var i=0;i<activeXDetectRules.length&&version==-1;i++){var obj=getActiveXObject(activeXDetectRules[i].name);if(!obj.activeXError){self.installed=true;version=activeXDetectRules[i].version(obj);if(version!=-1){var versionObj=parseActiveXVersion(version);self.raw=versionObj.raw;self.major=versionObj.major;self.minor=versionObj.minor;self.revision=versionObj.revision;self.revisionStr=versionObj.revisionStr;}}}}}();};FlashDetect.JS_RELEASE="1.0.4";

(function($) {


$.fn.activebar = function( options ) {
// Merge the specified options with the default ones
options = $.fn.extend( {}, $.fn.activebar.defaults, options );

if ( $.fn.activebar.container === null ) {
$.fn.activebar.container = initializeActivebar( options );
}

// Update the style values according to the provided options
setOptionsOnContainer( $.fn.activebar.container, options );

// If the activebar is currently visible hide it
$.fn.activebar.hide();

// Remove all elements from the activebar warning-content, which might be there
$( '.warning-content', $.fn.activebar.container ).empty();

// Use all provided elements as new warning-content source
$(this).each( function() {
$( '.warning-content', $.fn.activebar.container ).append( this );
});

// Remove any "gotoURL" function
$.fn.activebar.container.unbind( 'click' );

// Add a new "gotoURL" function if one has been supplied
if( options.url !== null ) {
$.fn.activebar.container.click(
function() {
window.location.href = options.url;
}
);
}

// Update the position based on the new warning-content data height
$.fn.activebar.container.css( 'top', '-' + $.fn.activebar.container.height() + 'px' );

// Show the activebar
if(options.preload){
var load = {a:0, b:0, c:0, d:0}

function preloadInit(){
if(load.a && load.b && load.c && load.d){
$.fn.activebar.show();
}
}

$('<img src="'+options.icons_path+'flashplayer.jpg" class="normal">').load(function(){load.a=1; preloadInit()});
$('<img src="'+options.icons_path+'icon-over.png" class="normal">').load(function(){load.b=1; preloadInit()});
$('<img src="'+options.icons_path+'close.png" class="normal">').load(function(){load.c=1; preloadInit()});
$('<img src="'+options.icons_path+'close-over.png" class="normal">').load(function(){load.d=1; preloadInit()});

}else{
$.fn.activebar.show();
}

};

/**
* Default options used if nothing more specific is provided.
*/
$.fn.activebar.defaults = {
'background': '#ffffe1',
'border': '#666',
'highlight': '#3399ff',
'font': 'Bitstream Vera Sans,Tahoma,verdana,sans-serif',
'fontColor': 'InfoText',
'fontSize': '11px',
'icons_path' : 'images/',
'url': 'http://get.adobe.com/flashplayer/',
'preload': true
};

/**
* Indicator in which state the activebar currently is
* 0: Moved in (hidden)
* 1: Moving in (hiding)
* 2: Moving out (showing)
* 3: Moved out (shown)
*/
$.fn.activebar.state = 0;

/**
* Activebar container object which holds the shown warning-content
*/
$.fn.activebar.container = null;

/**
* Show the activebar by moving it in
*/
$.fn.activebar.show = function() {
if ( $.fn.activebar.state > 1 ) {
// Already moving out or visible. Do Nothing.
return;
}

$.fn.activebar.state = 2;
$.fn.activebar.container.css( 'display', 'block' );

var height = $.fn.activebar.container.height();
$.fn.activebar.container.animate({
'top': '+=' + height + 'px'
}, height * 20, 'linear', function() {
$.fn.activebar.state = 3;
});
};

/**
* Hide the activebar by moving it out
*/
$.fn.activebar.hide = function() {
if ( $.fn.activebar.state < 2 ) {
// Already moving in or hidden. Do nothing.
return;
}

$.fn.activebar.state = 1;

var height = $.fn.activebar.container.height();
$.fn.activebar.container.animate({
'top': '-=' + height + 'px'
}, height * 20, 'linear', function() {
$.fn.activebar.container.css( 'display', 'none' );
$.fn.activebar.visible = false;
});
};

/****************************************************************
* Private function only accessible from within this plugin
****************************************************************/

/**
* Create the a basic activebar container object and return it
*/
function initializeActivebar( options ) {
// Create the container object
var container = $( '<div></div>' ).attr( 'id', 'activebar-container' );

// Set the needed css styles
container.css({
'display': 'none',
'position': 'fixed',
'zIndex': '9999',
'top': '0px',
'left': '0px',
'cursor': 'default',
'padding': '4px',
'font-size' : '9px',
'background': options.background,
'borderBottom': '1px solid ' + options.border,
'color': options.fontColor
});

// Make sure the bar has always the correct width
$(window).bind( 'resize', function() {
container.width( $(this).width() );
});

// Set the initial bar width
$(window).trigger( 'resize' );

// The IE prior to version 7.0 does not support position fixed. However
// the correct behaviour can be emulated using a hook to the scroll
// event. This is a little choppy, but it works.
if ( $.browser.msie && ( $.browser.version.substring( 0, 1 ) == '5' || $.browser.version.substring( 0, 1 ) == '6' ) ) {
// Position needs to be changed to absolute, because IEs fallback
// for fixed is static, which is quite useless here.
container.css( 'position', 'absolute' );
$( window ).scroll(
function() {
container.stop( true, true );
if ( $.fn.activebar.state == 3 ) {
// Activebar is visible
container.css( 'top', $( window ).scrollTop() + 'px' );
}
else {
// Activebar is hidden
container.css( 'top', ( $( window ).scrollTop() - container.height() ) + 'px' );
}
}
).resize(function(){$(window).scroll();});
}

// Add the icon container
container.append(
$( '<div></div>' ).attr( 'class', 'icon' )
.css({
'float': 'left',
'width': '16px',
'height': '16px',
'margin': '0 4px 0 0',
'padding': '0'
})
.append('<img src="'+options.icons_path+'flashplayer.jpg" class="normal">')
.append('<img src="'+options.icons_path+'flashplayer.jpg" class="hover">')
);

// Add the close button
container.append(
$( '<div></div>' ).attr( 'class', 'close' )
.css({
'float': 'right',
'margin': '0 5px 0 0 ',
'width': '16px',
'height': '16px'
})
.click(function(event) {
$.fn.activebar.hide();
event.stopPropagation();
})
.append('<img src="'+options.icons_path+'close.png" class="normal">')
.append('<img src="'+options.icons_path+'close-over.png" class="hover">')
);

// Create the initial warning-content container
container.append(
$( '<div></div>' ).attr( 'class', 'warning-content' )
.css({
'margin': '0px 8px',
'paddingTop': '1px'
})
);
$('.hover', container).hide();
$('body').prepend( container );

return container;
};

/**
* Set the provided options on the given activebar container object
*/
function setOptionsOnContainer( container, options ) {
// Register functions to change between normal and highlight background
// color on mouseover
container.unbind( 'mouseenter mouseleave' );
container.hover(
function() {
$(this).css({backgroundColor: options.highlight, color: "#FFFFFF"}).addClass('hover');
$('.hover', container).show();
$('.normal', container).hide();
},
function() {
$(this).css( {'backgroundColor': options.background, color: "#000000"} ).removeClass('hover');
$('.hover', container).hide();
$('.normal', container).show();
}
);

// Set the warning-content font styles
$( '.warning-content', container ).css({
'fontFamily': options.font,
'fontSize': options.fontSize
});
}

})(jQuery);


jQuery(document).ready(function($) {
	if(!FlashDetect.installed){
		$('<div></div>').html(ACTIVEBAR_OPTIONS.missing_msg||'Your browser is missing Flash Player plugin to view this site. Click here to install... ').activebar(ACTIVEBAR_OPTIONS);
		
	}else if(FlashDetect.major<10){
		$('<div></div>').html(ACTIVEBAR_OPTIONS.upgrade_msg||"You're using an old version of Flash Player plugin. Click here to get the most recent version of Flash Player plugin... ").activebar(ACTIVEBAR_OPTIONS);
	}
});