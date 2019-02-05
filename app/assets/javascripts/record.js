$(document).ready(function(){  
  $('#form-valid').validate({
    rules: {      
      'record[image]': {
        required: true
      },
      'record[name]': {
        required: true ,
        minlength: 2
      },
      'record[phone]': {
       	required: true ,
       	minlength: 10,
        maxlength: 10,
       	digits: true 
      },
      'record[email]': {
       	required: true ,
       	email: true
      },
      'record[course]': {
        required: true
      },  
      'record[link]': {
       	required: true
      }
    },
    messages: {
      'record[image]': {
        required: "Please Select an image"
      },
      'record[name]': {
        required: "Name can't be blank",
        minlength: "Name must be greater"
       	},
      'record[phone]': {
        required: "Please enter phone number",
        minlength: "Length must be 10",
        maxlength: "Length must be 10" ,
        digits: "Enter a valid Phone Number"
      },
      'record[email]': {
        required: "Email is required",
        email: "Email must be valid"
      },
      'record[course]': {
        required: "Select Course"
      },
      'record[link]': { 
      	required: "Please provide a link" 
      }
    }
  });
});
