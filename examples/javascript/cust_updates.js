

$('#cust_updates_IRR').on('click', 'href', function() {
    $href = $(this);
  
    // Walk the DOM to get the product name
    productName = $img.parent('td').next('td').children('a').text();
  
    // Change the breadcrumb to include the product name of the image clicked
    $('.t-Breadcrumb-label').text('You clicked the ' + productName);
  });