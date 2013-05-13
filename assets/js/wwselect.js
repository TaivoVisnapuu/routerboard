/*!
 * HTML 5 Select
 *
 * Copyright 2011, http://webworld-develop.blogspot.com/
 * Artistic License 2.0
 * http://www.opensource.org/licenses/artistic-license-2.0
 *
 * Date: 11/11/2011
**/

(function($)
{
    var _defaults = { width:0, height:0 };

    var createHtml = function(s, opts)
    {
        var html = $(document.createElement("div")).addClass("ww-selectbox").insertBefore(s);

        html.append('<div class="ww-select-area"><a href="javascript:void(0);"><span class="center">' + s.find(":selected").text() + '</span><span class="arrow arrowdown"></span></a></div>');

        var optionsDiv = $('<div class="ww-select-options" style="display:none;"></div>').appendTo(html);
        var list = $("<ul />").appendTo(optionsDiv);
        var val = "";
        var last = "";
        var options = s.find("option");

        options.each(function(i, o)
        {
            o = $(o);
            val = (o.val()) ? o.val() : o.text();
            last = ((i + 1) == options.length) ? 'class="last"' : '';
            list.append('<li class="option">' 
                + '<a href="javascript:void(0);" value="' + val + '" ' + last + '>' + o.text() + '</a></li>');
        });

        if (opts.height > 0)
        {
            list.height(opts.height).css({ "overflow-x":"hidden", "overflow-y":"auto" });
        }

        s.hide();

        return html;
    };

    var addEvents = function(generated, main, opts)
    {
        var select = $(generated).find(".ww-select-area");
        var selectAnchor = select.find("a");
        var selecteAnchorText = selectAnchor.find(".center");
        var options = $(generated).find(".ww-select-options");
        var optionsLinks = options.find("a");

        var updateSizes = function(opts)
        {
            selectAnchor.width("").width(selectAnchor.width());

            if (opts.width > 0) 
            {
                if (selectAnchor.width() > opts.width)
                {
                    selectAnchor.width("");
                    var selectedText = selecteAnchorText.html().split("");
                    selecteAnchorText.html("");

                    var i = 0;

                    while ((selectAnchor.width() + 8) < opts.width && i < selectedText.length)
                    {
                        selecteAnchorText.html(selecteAnchorText.html() + selectedText[i]);
                        selectAnchor.width("").width(selectAnchor.width());
                        i++;
                    }

                    selecteAnchorText.html(selecteAnchorText.html() + "...");
                    selectAnchor.width(opts.width);
                }
            }

            var paddingDifference = (optionsLinks.first().outerWidth() - optionsLinks.first().width()) + (options.outerWidth() - options.width());
            optionsLinks.width(selectAnchor.outerWidth() - paddingDifference);
        }

        selectAnchor.click(function()
        {
            if (!select.hasClass("ww-select-areaactive"))
            {
                options.slideDown("fast", function() 
                { 
                    optionsLinks.removeClass("last");
                    optionsLinks.filter(":visible").last().addClass("last");
                    select.addClass("ww-select-areaactive"); 
                });
            }
            else
            {
                hideOptions(select, options);
            }
        });

        optionsLinks.click(function()
        {
            selecteAnchorText.html($(this).html());
            optionsLinks.show().removeClass("last");
            $(this).hide();            
            hideOptions(select, options);

            main.find("option[value='" + $(this).attr("value") + "']").attr("selected", "selected");
            main.change();

            updateSizes(opts);
        });

        $(generated).mouseenter(function() { $(this).addClass("ww-select-active"); })
                .mouseleave(function() { $(this).removeClass("ww-select-active"); });

        optionsLinks.filter(function() { return $(this).html() == main.find(":selected").text(); }).hide();
        updateSizes(opts);
    }

    var hideOptions = function(select, options)
    {
        options.slideUp("fast", function() { select.removeClass("ww-select-areaactive"); });
    };
    
	$.fn.wwselect = function(options)
    {
        $(this).each(function(i, t)
        {
            var opts = { width:_defaults.width, height: _defaults.height };
            var os = $(t);

            if (options) { $.extend(opts, options); }

            var generated = createHtml(os, opts);

            addEvents(generated, os, opts);
        });

        $("body").click(function()
        {
            $(".ww-selectbox").each(function(i, sb)
            {
                if (!$(sb).hasClass("ww-select-active"))
                {
                    hideOptions($(sb).find(".ww-select-area"), $(sb).find(".ww-select-options"));
                }
            });
        });
    }
})(jQuery);