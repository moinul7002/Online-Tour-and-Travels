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
        url: "fetch_data_hotel.php",
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
            name:"Image",
          
            edittype:'file',
            align: "center",
           editoptions: {
        enctype: "multipart/form-data"
    },

            width: 100,
             itemTemplate: function(val, item) {
                return $("<img>").attr("src", val).css({ height: 80, width: 80 }).on("click", function() {
                    $("#imagePreview").attr("src", item.Img);
                    $("#dialog").dialog("open");
                });
            },
            insertTemplate: function() {
                var insertControl = this.insertControl = $("<input>").prop("type", "file");
                return insertControl;
            },
            insertValue: function() {
                return this.insertControl[0].files[0]; 
            }

          },

          {
            name: "Lattitude",
           
            type: "text",
            width:60
          },


            {
            name: "Longitude",
           
            type: "text",
            width:70
          },

           {
            name: "Price",
           
            type: "text",
            width:50
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