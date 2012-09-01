// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function check_class(form)
{
    var i=1;
    var new_i=1;

    for (i=1;i<=7;i++)
    {
            if(form.className == 'prev')
            {
                if($('link' + i).className == 'current')
                    new_i = i - 1;
            }
            else if(form.className == 'next')
            {
                if($('link' + i).className == 'current')
                    new_i = i + 1;
            }
            $('link' + i).className = '';
    }

    if(form.className == 'prev')
    {
            if(new_i < 1)
            {
                    new_i = 7
            }
    }
    else if(form.className == 'next')
    {
            if(new_i > 7)
            {
                    new_i = 1
            }
    }
    else
    {
            new_i = form.id.substr(-1,1)
    }
    $('link' + new_i).className = 'current';
    switch(parseInt(new_i))
    {
            case 1:
                $('prod_title').innerHTML = "Say Your Price"
                $('text').innerHTML = "Empower your customers, let them Say Their Price. They get great deals and it's good for you. You manage margins with targeted discounts, and save over mass price cuts."
                $('vis_image').src = "/images/samples/screen-" + new_i + ".jpg"
                break;
            case 2:
                $('prod_title').innerHTML = "Negotiations"
                $('text').innerHTML = "Entertain your customers as they buy from you. They play the game of offers, counteroffers and the fun of bargaining + getting a good deal. You get incremental sales."
                $('vis_image').src = "/images/samples/screen-" + new_i + ".jpg"
                break;
            case 3:
                $('prod_title').innerHTML = "Time-limited discounts"
                $('text').innerHTML = "Offer time-limited discounts to acquire new customers or liquidate products or perishable inventory. Hold sales for any length of time. Turn on & off & scale up automatically."
                $('vis_image').src = "/images/samples/screen-" + new_i + ".jpg"
                break;
            case 4:
                $('prod_title').innerHTML = "Your Dashboard"
                $('text').innerHTML = "Manage your campaigns and inventory sold over social media channels. Get real-time analytics including purchase intent."
                $('vis_image').src = "/images/samples/screen-" + new_i + ".jpg"
                break;
            case 5:
                $('prod_title').innerHTML = "Packages"
                $('text').innerHTML = "Our software crunches millions of combinations to create packages to maximize your margins while deliighting your customers; or the butler feature makes packages for consumers on the fly."
                $('vis_image').src = "/images/samples/screen-" + new_i + ".png"
                break;
            case 6:
                $('prod_title').innerHTML = "Price Slide"
                $('text').innerHTML = "As your offers feel the social media love, consumers feel the sliding prices. Encourage Facebook & Twitter users to like and retweet your offers, and everybody benefits."
                $('vis_image').src = "/images/samples/screen-" + new_i + ".png"
                break;
            case 7:
                $('prod_title').innerHTML = "Purchase Intent"
                $('text').innerHTML = "We score twitter with the Purchase Intent of different segments. Message your followers on Twitter and we automatically iterate to get you better campaign results + refine your score."
                $('vis_image').src = "/images/samples/screen-" + new_i + ".png"
                break;
            default:
                $('prod_title').innerHTML = "Say Your Price"
                $('text').innerHTML = "Empower your customers, let them Say Their Price. They get great deals and it's good for you. You manage margins with targeted discounts, and save over mass price cuts."
                break;
    }
}

Ajax.Base.prototype.initialize = Ajax.Base.prototype.initialize.wrap(
   function(p, options){
     p(options);
     this.options.parameters = this.options.parameters || {};
     this.options.parameters.authenticity_token = window._token || '';
   }
);