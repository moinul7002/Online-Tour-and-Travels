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
        url: "fetch_data.php",
        data: filter
       });
      },
      insertItem: function(item){
         var formData = new FormData();
           formData.append("Id", item.Id);
            formData.append("District", item.District);
           formData.append("Category", item.Category);
             formData.append("Name", item.Name);
             formData.append("Path", item.Path);

             formData.append("Description", item.Description);
             formData.append("Description", item.Description);



        formData.append("Image[]", item.Image, item.Image.name);

       return $.ajax({
        type: "POST",
        url: "fetch_data.php",
        data:formData,
        contentType: false,
            processData: false
       });
      },
      updateItem: function(item){
       return $.ajax({
        type: "PUT",
        url: "fetch_data.php",
        data: item
       });
      },
      deleteItem: function(item){
       return $.ajax({
        type: "DELETE",
        url: "fetch_data.php",
        data: item
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
            name: "District",
            type: "select",
           
           
    items: [
     { Name: "", Id: '' },
     { Name: "Chittagong", Id: 'Chittagong' },
     { Name: "Sylhet", Id: 'Sylhet' },
     { Name: "Khulna", Id: 'Khulna' },
     { Name: "Dhaka", Id: 'Dhaka' },
     { Name: "Rajshahi", Id: 'Sylhet' },
     { Name: "Rangpur", Id: 'Sylhet' }
  
    ], 
    valueField: "Id", 
    textField: "Name", 
      width: 60
          },
          {
            name: "Category",
            type: "select",
           
            items: [
     { Name: "", Id: '' },
     { Name: "Sea", Id: 'Sea' },
     { Name: "Hill", Id: 'Hill' },
     { Name: "Waterfall", Id: 'Waterfall' },
     { Name: "Nature", Id: 'Nature' },
     { Name: "Museum", Id: 'Museum' },
     { Name: "Lake", Id: 'Lake' },
     { Name: "Park", Id: 'Park' },
     { Name: "Historical", Id: 'Historical' },
  
    ], 
    valueField: "Id", 
    textField: "Name", 
            width: 60
          },
          {
            name: "Name",
            
            type: "text",
            width: 70
          },

          
         
          {
            name: "Path",
            
            type: "textarea",
            width:150
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
            name: "Description",
           
            type: "text",
            width:150
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