<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="PepperCrownKitchen.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <!--
    <div class="form-group col-md-4"><br>
        <div class="col-md-offset-3 col-md-6">
          <div class="card" style="width: 18rem;">
            <div class="card-header">
              <p class="text-center"><b><u>Contact Info</u></b></p>
            </div>
            <div class="text-center">
              <ul class="list-group list-group-flush">
                <li class="list-group-item">
                  <p class="font-weight-bold">Name:</p> Siddharth Pandya
                </li>
                <li class="list-group-item">
                  <p class="font-weight-bold">Email ID:</p> spandy12@gmail.com
                </li>
                <li class="list-group-item">
                  <p class="font-weight-bold">Mobile:</p>+1 (523) 697-6133
                </li>
               
                <li class="list-group-item">
                  <i class="fa fa-linkedin"></i>
                <a href="https://www.linkedin.com/in/sid07/" target="_blank" class="card-link">  LinkedIn Profile Link</a>
                </li>

                <li class="list-group-item">
                  <i class="fa fa-lg fa-github"></i>
                <a href="https://github.com/SiddharthPandya/COMP308-W2019-Assignment1.git" target="_blank" class="card-link">  GitHub Link</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

    -->

    <div class="jumbotron">
    <div class="accordion" id="accordionExample">
        <div class="card">
          <div class="card-header" id="headingOne">
            <h2 class="mb-0">
            <!-- Classes for each heading item is changed -->
              <button class="btn btn-success" type="button" data-toggle="collapse" data-target="#collapseOne"
                aria-expanded="true" aria-controls="collapseOne">
                Our Story
              </button>
            </h2>
          </div>
  
          <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
            <div class="card-body" style="background-color:khaki;">
              <p style="color:black;">We take authentic flavours of India and push them beyond expectations 
                  in unique and intimate settings inspired by Indian art and architecture. We have
                  set the standard for quality, flavour and culinary innovation with extreme attention to
                  the most important part of our company: the food. We are dedicated to sourcing and working 
                  with the best ingredients to create our recipes, whether it is at one of our restaurants or 
                  retail products to take home. Everything we do is done with 
                  pride, passion and love.</p>  
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" id="headingTwo">
            <h2 class="mb-0">
              <button class="btn btn-danger collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo"
                aria-expanded="false" aria-controls="collapseTwo">
                Contact Us
              </button>
            </h2>
          </div>
          <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
            <div class="card-body" style="background-color:burlywood;">
              <div class="card" style="width: 550px;">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item" style="color:black;"><b>Address:</b> 931 Progress Ave, Toronto, ON - M1K 0H4</li>
                    <li class="list-group-item" style="color:black;"><b>Phone:</b> (454) 546-2316</li>
                    <li class="list-group-item" style="color:black;"><b>Email:</b> peppercrownkitchen@gmail.com</li>
                </ul>
            </div>
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" id="headingThree">
            <h2 class="mb-0">
              <button class="btn btn-info collapsed" type="button" data-toggle="collapse" data-target="#collapseThree"
                aria-expanded="false" aria-controls="collapseThree">
                Connect With Us
              </button>
            </h2>
          </div>
          <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
           
                
                  <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">
                            <div class="card-body">
                                <div class="card">
                                  <div class="card-body">
                                      <a href="https://twitter.com" target="_blank">
                                      <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/twitter.JPG" Width="40px" Height="40px" />
                                      </a>
                                      <a href="https://twitter.com" target="_blank" class="btn btn-sad">Twitter</a>
                                  </div>
                                    </div>
                                </div>
                        </th>
                        <th scope="col">

                            <div class="card-body">
                                <div class="card">
                                  <div class="card-body">
                                      <a href="https://www.instagram.com/?hl=en" target="_blank">
                                      <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Instagram.png" Width="40px" Height="40px" />
                                      </a>
                                      <a href="https://www.instagram.com/?hl=en" target="_blank" class="btn btn-alert">Instagram</a>
                                  </div>
                                    </div>
                                </div>

                        </th>
                        <th scope="col">

                            <div class="card-body">
                                <div class="card">
                                  <div class="card-body">
                                      <a href="https://www.facebook.com/" target="_blank">
                                      <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/facebook.png" Width="40px" Height="40px" />
                                      </a>
                                      <a href="https://www.facebook.com/" target="_blank" class="btn btn-orange">Facebook</a>
                                  </div>
                                    </div>
                                </div>
                        </th>
                      </tr>
                    </thead>
                   </table>
            </div>
          </div>
        </div>
      </div>
       


    <iframe src="https://www.youtube.com/embed/kSuck-qu0yE" style="height: 400px; width: 900px" allowfullscreen></iframe>
</asp:Content>
