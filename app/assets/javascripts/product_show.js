// alert("lolol");
console.log("hello")
//product's ratign
var pRating = raterJs( {
    element:document.querySelector("#productRating"),
    rateCallback:function rateCallback(rating, done) {
        pRating.setRating(rating);
        done();
    },
    showToolTip: false,
    readOnly: true
});
pRating.setRating(<%=@product.rating %>)
//user's rating
var myRating = raterJs( {
        element:document.querySelector("#rater"),
        rateCallback:function rateCallback(rating, done) {
            myRating.setRating(rating);
            document.getElementById('comment_rating').value = rating;
            done();
        },
        showToolTip: false
            <% if user_signed_in? %>
    <% if !@comments.where(product_id: @product.id, user_id: current_user.id).first.nil? %>
,readOnly: true
<% end %>
<% end %>
});

//disable comments if user commented
<% if user_signed_in? %>
console.log("user signed in ")
<% if !@comments.where(product_id: @product.id, user_id: current_user.id).first.nil? %>

//user has commented on this product, set value and disable the form
<% cc = @comments.where(product_id: @product.id, user_id: current_user.id).first %>
myRating.setRating(<%= cc.rating %>)
document.getElementById('comment_text').value = '<%= cc.text %>';
document.getElementById('comment_text').disabled = true;
document.getElementById('btnSubmit').style.visibility = 'hidden';
<% end %>
<% end %>