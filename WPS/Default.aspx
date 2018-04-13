<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WPS.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/StyleSheet_Default.css" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- Crousel Work Start --%>
    <div class="container-fluid">
        <div class="row">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <asp:Image runat="server" ImageUrl="~/Images/c1.jpg" CssClass="img-responsive" Width="100%" />
                        <%--<img class src="Images/c1.jpg" /> Delete--%>
                        <div class="carousel-caption">
                            <asp:Button runat="server" CssClass="metro font-master" Text="Get started" />
                            <h1 class="font-master">We will plan the wedding of your dreams</h1>
                            <%--<p>Save time and money for happy moments</p>--%>
                        </div>
                    </div>

                    <div class="item">
                        <asp:Image runat="server" ImageUrl="~/Images/c2.jpg" CssClass="img-responsive" Width="100%" />
                        <div class="carousel-caption">
                            <asp:Button runat="server" CssClass="metro font-master" Text="Get started" />
                            <h1 class="font-master">Success for Each and Every Event</h1>
                            <%--<p></p>--%>
                        </div>
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
    <%-- Crousel Work End --%>


    <%-- Services Work Start Newwwwwwwwwwwwwwwwwwwwwww --%>
    <div class="container bottom-margin" >

        <div class="row row-heading">
            <h1 class="my-4 text-center font-master">What we offer
                <small>Services</small>
            </h1>
        </div>

        <div class="row">
            <div class="col-lg-3 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#">
                        <img class="card-img-top img-responsive" src="Images/venue.jpg" alt="" /></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="#">Venues</a>
                        </h4>
                        <p class="card-text">A stylish event begins long before the guests arrive. It begins with masterful planning. Because it’s your wedding, it should be unique.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#">
                        <img class="card-img-top img-responsive" src="Images/outfit.jpg" alt="" /></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="#">Outfits</a>
                        </h4>
                        <p class="card-text">Style is a way to say who you are without having to speak. </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#">
                        <img class="card-img-top img-responsive" src="Images/makeup.jpg" alt="" /></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="#">Makeup & Hair</a>
                        </h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error quod sed cumque, odio distinctio velit nostrum temporibus necessitatibus et facere atque iure perspiciatis mollitia recusandae vero vel quam!</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#">
                        <img class="card-img-top img-responsive" src="Images/photography.jpg" alt="" /></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="#">Photography</a>
                        </h4>
                        <p class="card-text">
                            We are especially passionate about photographing people and the moments that are important in their life
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#">
                        <img class="card-img-top img-responsive" src="Images/jewellery.jpg" alt="" /></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="#">Jewellery</a>
                        </h4>
                        <p class="card-text">
                            Our reputation shines as brightly as our diamonds. Beautiful, masterful design never goes out of fashion. The ultimate in luxury and style. 
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#">
                        <img class="card-img-top img-responsive" src="Images/catering.jpg" alt="" /></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="#">Catering</a>
                        </h4>
                        <p class="card-text">
                            A delicious journey. Celebrate flavor. Celebrate life.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#">
                        <img class="card-img-top img-responsive" src="Images/dj.jpg" alt="" /></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="#">Live music</a>
                        </h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque earum nostrum suscipit ducimus nihil provident, perferendis rem illo, voluptate atque, sit eius in voluptates, nemo repellat fugiat excepturi! Nemo, esse.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="#">
                        <img class="card-img-top img-responsive" src="Images/decor.jpg" alt="" /></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="#">Decor</a>
                        </h4>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque earum nostrum suscipit ducimus nihil provident, perferendis rem illo, voluptate atque, sit eius in voluptates, nemo repellat fugiat excepturi! Nemo, esse.</p>
                    </div>
                </div>
            </div>

        </div>

        <div class="row">
            <asp:Button runat="server" Text="Browse all categories" CssClass="metro font-master" />
        </div>
    </div>
    <%-- Services Work End Newwwwwwwwwwwwwwwwwwwwwww --%>

    
    <%-- Section Start --%>
    <div class="container-fluid bg-c1">
        <div class="container">
            <div class="row text-c2 font-master">
                <h1>Are you a wedding vendor?</h1>
                <p>Join 10,000+ vendors who have successfully boosted their wedding service business with Wedlock</p>
                <asp:Button runat="server" Text="Join now" CssClass="metro-custom text-c1" />
            </div>
        </div>

    </div>
    <%-- Section End --%>

</asp:Content>
