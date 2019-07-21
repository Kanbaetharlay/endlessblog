<!-- Top Bar
============================================= -->
<div id="top-bar">

    <div class="container clearfix">

        <div class="col_half nobottommargin">

            <!-- Top Links
            ============================================= -->
            <div class="top-links">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="faqs.html">FAQs</a></li>
                    <li><a href="contact.html">Contact</a></li>
                    <li><a href="login-register.html">Login</a>
                        <div class="top-link-section">
                            <form id="top-login">
                                <div class="input-group" id="top-login-username">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="icon-user"></i></div>
                                    </div>
                                    <input type="email" class="form-control" placeholder="Email address" required="">
                                </div>
                                <div class="input-group" id="top-login-password">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="icon-key"></i></div>
                                    </div>
                                    <input type="password" class="form-control" placeholder="Password" required="">
                                </div>
                                <label class="checkbox">
                                    <input type="checkbox" value="remember-me"> Remember me
                                </label>
                                <button class="btn btn-danger btn-block" type="submit">Sign in</button>
                            </form>
                        </div>
                    </li>
                    
                </ul>
            </div><!-- .top-links end -->

        </div>

        <div class="col_half fright col_last nobottommargin">

            <!-- Top Social
            ============================================= -->
            <div id="top-social">
                <ul>
                    <li><a href="#" class="si-facebook"><span class="ts-icon"><i class="icon-facebook"></i></span><span class="ts-text">Facebook</span></a></li>
                    <li><a href="#" class="si-twitter"><span class="ts-icon"><i class="icon-twitter"></i></span><span class="ts-text">Twitter</span></a></li>
                    
                    <li><a href="#" class="si-github"><span class="ts-icon"><i class="icon-github-circled"></i></span><span class="ts-text">Github</span></a></li>

                    <li><a href="#" class="si-linkedin"><span class="ts-icon"><i class="icon-linkedin"></i></span><span class="ts-text">LinkIn</span></a></li>
                    
                    
                    <li><a href="tel:+91.11.85412542" class="si-call"><span class="ts-icon"><i class="icon-call"></i></span><span class="ts-text">+959 970217345</span></a></li>
                    <li><a href="mailto:info@canvas.com" class="si-email3"><span class="ts-icon"><i class="icon-email3"></i></span><span class="ts-text">info@endless-tech.com</span></a></li>
                </ul>
            </div><!-- #top-social end -->

        </div>

    </div>

</div><!-- #top-bar end -->

<!-- Header
============================================= -->
<header id="header">

    <div id="header-wrap">

        <div class="container clearfix">

            <div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

            <!-- Logo
            ============================================= -->
            <div id="logo">
                <a href="{{ url('/') }}" class="standard-logo" data-dark-logo="{{ asset('images/logo/logo-dark.png') }}"><img src="{{ asset('images/logo/logo.png') }}" alt="Endless Logo"></a>
                <a href="{{ url('/') }}" class="retina-logo" data-dark-logo="{{ asset('images/logo/logo-dark@2x.png') }}"><img src="{{ asset('images/logo/logo@2x.png') }}" alt="Endless Logo"></a>
            </div><!-- #logo end -->

            <!-- Primary Navigation
            ============================================= -->
            <nav id="primary-menu" class="sub-title">

                <ul>
                    <li class="current"><a href="index.html"><div>Home</div><span>Lets Start</span></a></li>
                    
                    <li><a href="#"><div>Services</div><span>Our Services</span></a>
                        <ul>
                            <li><a href="#"><div><i class="icon-stack"></i>Mobile</div></a>
                                <ul>
                                    <li><a href="mobile-app-dev.html"><div>Android Apps</div></a></li>
                                    <li><a href="#"><div>IOS Apps</div></a></li></li>
                                </ul>
                            </li>
                            <li><a href="#"><div><i class="icon-gift"></i>Web</div></a>
                                <ul>
                                    <li><a href="cms-web-dev.html"><div>Content Management Syste(CMS)</div></a></li>
                                    <li><a href="#"><div>UI/UX Design</div></a></li>
                                    <li><a href="responsive-web-design.html"><div>Responsive Web Design</div></a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="mega-menu"><a href="#"><div>Topics</div><span>Start Learning</span></a>
                        <div class="mega-menu-content style-2 clearfix">
                            @if(count($categories) > 0)
                                @foreach($categories as $category)
                                <ul class="mega-menu-column col-lg-3">
                                    <li class="mega-menu-title"><a href="#"><div>{{$category->name}}</div></a>
                                   
                                    @if($category->subcategory <> null )
                                       <ul>
                                            @foreach($category->subcategory as $subcat)
                                                <li><a href="/topic/{{$subcat->id}}">{{$subcat->name}}</a></li>
                                            @endforeach
                                       </ul>
                                    @endif
                                        <!-- <ul>
                                            <li><a href="topic.html"><div>HTML</div></a></li>
                                            <li><a href="topic.html"><div>CSS</div></a></li>
                                            <li><a href="topic.html"><div>JavaScript</div></a></li>
                                            <li><a href="topic.html"><div>PHP</div></a></li>
                                            <li><a href="topic.html"><div>Wordpress</div></a></li>
                                            <li><a href="topic.html"><div>Anjular JS</div></a></li>
                                            <li><a href="topic.html"><div>MYSQL</div></a></li>
                                            <li><a href="topic.html"><div>Node JS</div></a></li>
                                        </ul> -->
                                    </li>
                                </ul>
                                @endforeach
                            @endif
                            <!-- <ul class="mega-menu-column col-lg-3">
                                <li class="mega-menu-title"><a href="#"><div>Web Development</div></a>
                                    <ul>
                                        <li><a href="topic.html"><div>HTML</div></a></li>
                                        <li><a href="topic.html"><div>CSS</div></a></li>
                                        <li><a href="topic.html"><div>JavaScript</div></a></li>
                                        <li><a href="topic.html"><div>PHP</div></a></li>
                                        <li><a href="topic.html"><div>Wordpress</div></a></li>
                                        <li><a href="topic.html"><div>Anjular JS</div></a></li>
                                        <li><a href="topic.html"><div>MYSQL</div></a></li>
                                        <li><a href="topic.html"><div>Node JS</div></a></li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="mega-menu-column col-lg-3">
                                <li class="mega-menu-title"><a href="#"><div>Mobile App Development</div></a>
                                    <ul>
                                        <li><a href="topic.html"><div>Android</div></a></li>
                                        <li><a href="topic.html"><div>Swift</div></a></li>
                                        <li><a href="topic.html"><div>IOS</div></a></li>
                                        <li><a href="topic.html"><div>Kotlin</div></a></li>
                                        <li><a href="topic.html"><div>React Native</div></a></li>
                                        <li><a href="topic.html"><div>React and Redux</div></a></li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="mega-menu-column col-lg-3">
                                <li class="mega-menu-title"><a href="#"><div>Database Topic</div></a>
                                    <ul>
                                        <li><a href="topic.html"><div>Mongo DB</div></a></li>
                                        <li><a href="topic.html"><div>MYSQL</div></a></li>
                                        <li><a href="topic.html"><div>Room DB</div></a></li>
                                        <li><a href="topic.html"><div>SQLite Database</div></a></li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="mega-menu-column col-lg-3">
                                <li class="mega-menu-title"><a href="#"><div>UI/UX Topic</div></a>
                                    <ul>
                                        <li><a href="topic.html"><div>UI/UX</div></a></li>
                                        <li><a href="topic.html"><div>Design</div></a></li>
                                        <li><a href="topic.html"><div>Desing Pattern</div></a></li>
                                        <li><a href="topic.html"><div>Design Foundation</div></a></li>
                                        <li><a href="topic.html"><div>UX Design Pattern</div></a></li>
                                        <li><a href="topic.html"><div>Web Typography</div></a></li>
                                        <li><a href="topic.html"><div>Responsive Web Design</div></a></li>
                                        <li><a href="topic.html"><div>Prototype in browser</div></a></li>
                                        <li><a href="topic.html"><div>Usability</div></a></li>
                                    </ul>
                                </li>
                            </ul> -->
                        </div>
                    </li>

                    <li><a href="#"><div>Tutorials</div><span>Sharing Tutorials</span></a>
                        <!-- <ul> -->
                    @if(count($sub_categories) > 0)
                        <ul>
                            @foreach($sub_categories as $sub_category)
                                @if($sub_category->tutorials->count() > 0)
                                <li><a href="/showAllTutorials/{{$sub_category->id}}">{{$sub_category->name}}</a></li>
                                @endif
                                
                            @endforeach
                        </ul>
                    @endif
                            <!-- <li><a href="tutorial.html"><div>PHP</div></a>
                                <ul>
                                    <li><a href="tutorial.html"><div>Framework</div></a>
                                        <ul>
                                            <li><a href="tutorial.html">Laravel</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="tutorial.html"><div>OOP</div></a></li>
                                    <li><a href="tutorial.html"><div>PHP Basic</div></a></li>
                                </ul>
                            </li>
                            <li><a href="tutorial.html"><div>MySQL</div></a>
                                <ul>
                                    <li><a href="tutorial.html"><div>Basic</div></a></li>
                                    <li><a href="tutorial.html"><div>Advanced</div></a></li>
                                </ul>
                            </li>
                            <li><a href="tutorial.html"><div>HTML</div></a>
                                <ul>
                                    <li><a href="tutorial.html"><div>HTML Intro</div></a></li>
                                    <li><a href="tutorial.html"><div>Basic Tags</div></a></li>
                                    <li><a href="tutorial.html"><div>HTML Editor</div></a></li>
                                    <li><a href="tutorial.html"><div>Local Storage</div></a></li>
                                </ul>
                            </li>
                            
                            <li><a href="tutorial.html"><div>CSS</div></a>
                                <ul>
                                    <li><a href="tutorial.html"><div>Basic</div></a></li>
                                    <li><a href="tutorial.html"><div>Advanced</div></a>
                                        <ul>
                                            <li><a href="tutorial.html">Flexbox Layout</a></li>
                                            <li><a href="tutorial.html">CSS Transition</a></li>
                                            <li><a href="tutorial.html">CSS Selector</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="tutorial.html"><div>JavaScript</div></a>
                                <ul>
                                    <li><a href="tutorial.html"><div>Angular JS</div></a></li>
                                    <li><a href="tutorial.html"><div>jQuery</div></a></li>
                                    <li><a href="tutorial.html"><div>Node JS</div></a></li>
                                </ul>
                            </li>
                            <li><a href="tutorial.html"><div>API</div></a></li>
                            <li><a href="tutorial.html"><div>Android</div></a></li>
                            <li><a href="tutorial.html"><div>React Native</div></a></li> -->
                        <!-- </ul> -->
                    </li>

                    <li class="mega-menu"><a href="#"><div>IT News</div><span>Latest News</span></a></li>

                    <li class="mega-menu"><a href="contact.html" target="blank"><div>Contact Us</div><span>Connect with us</span></a></li>
                </ul>

            </nav><!-- #primary-menu end -->

        </div>

    </div>

</header><!-- #header end -->