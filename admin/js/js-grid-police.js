(function($) {
  'use strict';
  $(function() {

    //basic config
    if ($("#js-grid").length) {
      $("#js-grid").jsGrid({
        height: "500px",
        width: "100%",
        filtering:false,
        editing: true,
        inserting: true,
        sorting: true,
        paging: true,
        autoload: true,
        pageSize: 15,
        pageButtonCount: 5,
        deleteConfirm: "Do you really want to delete the client?",
        controller: {
      loadData: function(filter){
       return $.ajax({
        type: "GET",
        url: "fetch_data_police.php",
        data: filter
       });
      },
   
     },

        fields: [
       {
       name: "Id",
    type: "hidden",
    css:'hide',
    width:10
      },

       
         
          {
            name: "Place",
            
            type: "text",
            width: 60
          },

          
         
          {
            name: "Name",
            
            type: "textarea",
            width:100
          },
          

         


         
          {
            name: "Address",
           
            type: "text",
            width:60
          },
          {
            name: "Contact",
           
            type: "text",
            width:60
          },





          
          
          {
            type: "control"
          }
        ]
      });
    }




       
  


    //Static
  
    

  });
})(jQuery);