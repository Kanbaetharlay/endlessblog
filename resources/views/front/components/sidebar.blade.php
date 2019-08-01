<!-- Sidebar
		============================================= -->
		<div class="sidebar nobottommargin col_last clearfix">
			<div class="sidebar-widgets-wrap">

				<!-- Categories -->
				<div class="widget clearfix">
					<!-- popular topic -->
					<div class="widget widget_links clearfix">
						<h4 class="mb-2 ls1 uppercase t700">Categories</h4>

						@if(count($sub_categories) > 0)
							<ul>
								@foreach($sub_categories as $sub_category)
									@if($sub_category->tutorials->count() > 0)
									<li><a href="/showAllTutorials/{{$sub_category->id}}">{{$sub_category->name}}</a></li>
									@endif
									
								@endforeach
							</ul>
                    	@endif
					
					</div>
				</div>
				<!-- Recent Posts -->
				<div class="widget clearfix">

					<h4>Recent Posts</h4>
					
					@if(count($sidebar_tutorials) > 0)
					<div id="post-list-footer">
						@foreach($sidebar_tutorials as $stutorial)
						<div class="spost clearfix">
							<div class="entry-image">
							
									@if(count(json_decode($stutorial->images)) > 0)
                                    <a href="#">
                                        <?php $tt = new App\Models\Tutorial; ?>
                                        <img src="{{$tt->uploadimage($tutorial->images)}}" alt="Image">
                                    </a>
                                    @elseif($stutorial->shared_link <> null && isset($stutorial->shared_link))
                                    <iframe width="420" height="315"
src="{{$stutorial->shared_link}}">
</iframe>
									@else
										<img src="{{asset('images/no_image.png')}}" alt="EndlessBlog">
                                    @endif
							</div>
							<div class="entry-c">
								<div class="entry-title">
									<h4><a href="#">{{strip_tags(str_limit($stutorial->content,200,'...'))}}</a></h4>
								</div>
								<ul class="entry-meta">
									<li>{{date('d M Y',strtotime($stutorial->post_date))}}</li>
								</ul>
							</div>
						</div>
						@endforeach
					</div>
					@endif
					<!-- <div id="post-list-footer">

						<div class="spost clearfix">
							<div class="entry-image">
								<a href="#" class="nobg"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1539110860/Screen_Shot_2018-10-09_at_1.47.23_PM.png" alt=""></a>
							</div>
							<div class="entry-c">
								<div class="entry-title">
									<h4><a href="#">Lorem ipsum dolor sit amet, consectetur</a></h4>
								</div>
								<ul class="entry-meta">
									<li>10th July 2014</li>
								</ul>
							</div>
						</div>

						<div class="spost clearfix">
							<div class="entry-image">
								<a href="#" class="nobg"><img src="https://getstream-blog.imgix.net/blog/wp-content/uploads/2016/07/laravel-php-stream.jpg?w=620" alt=""></a>
							</div>
							<div class="entry-c">
								<div class="entry-title">
									<h4><a href="#">Elit Assumenda vel amet dolorum quasi</a></h4>
								</div>
								<ul class="entry-meta">
									<li>10th July 2014</li>
								</ul>
							</div>
						</div>

						<div class="spost clearfix">
							<div class="entry-image">
								<a href="#" class="nobg"><img src="https://itsolutionstuff.com/upload/laravel56-crud.png" alt=""></a>
							</div>
							<div class="entry-c">
								<div class="entry-title">
									<h4><a href="#">Debitis nihil placeat, illum est nisi</a></h4>
								</div>
								<ul class="entry-meta">
									<li>10th July 2014</li>
								</ul>
							</div>
						</div>

						<div class="spost clearfix">
							<div class="entry-image">
								<a href="#" class="nobg"><img src="https://i.imgur.com/arZeVt9.png" alt=""></a>
							</div>
							<div class="entry-c">
								<div class="entry-title">
									<h4><a href="#">Debitis nihil placeat, illum est nisi</a></h4>
								</div>
								<ul class="entry-meta">
									<li>10th July 2014</li>
								</ul>
							</div>
						</div>

						<div class="spost clearfix">
							<div class="entry-image">
								<a href="#" class="nobg"><img src="https://itsolutionstuff.com/upload/laravel-5-5-crud.png" alt=""></a>
							</div>
							<div class="entry-c">
								<div class="entry-title">
									<h4><a href="#">Debitis nihil placeat, illum est nisi</a></h4>
								</div>
								<ul class="entry-meta">
									<li>10th July 2014</li>
								</ul>
							</div>
						</div>

					</div> -->

				</div>


				<div class="widget clearfix">
                    
					<h4>Tag Cloud</h4>
					<div class="tagcloud">
						<a href="#">PHP</a>
						<a href="#">OOPHP</a>
						<a href="#">Angular JS</a>
						<a href="#">Object Oriented Programming</a>
						<a href="#">Facebook API</a>
						<a href="#">MVC</a>
						<a href="#">Github</a>
						<a href="#">Node.js</a>
						<a href="#">Google API</a>
						<a href="#">jQuery</a>
						<a href="#">Apache</a>
						<a href="#">Laravel PHP Framework</a>
					</div>

				</div>

				<!-- popular posts -->
				<div class="widget clearfix">

					<h4>Popular Posts</h4>
					<div id="post-list-footer">

						<div class="spost clearfix">
							<div class="entry-image">
								<a href="#" class="nobg"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1539110860/Screen_Shot_2018-10-09_at_1.47.23_PM.png" alt=""></a>
							</div>
							<div class="entry-c">
								<div class="entry-title">
									<h4><a href="#">Lorem ipsum dolor sit amet, consectetur</a></h4>
								</div>
								<ul class="entry-meta">
									<li>10th July 2014</li>
								</ul>
							</div>
						</div>

						<div class="spost clearfix">
							<div class="entry-image">
								<a href="#" class="nobg"><img src="https://getstream-blog.imgix.net/blog/wp-content/uploads/2016/07/laravel-php-stream.jpg?w=620" alt=""></a>
							</div>
							<div class="entry-c">
								<div class="entry-title">
									<h4><a href="#">Elit Assumenda vel amet dolorum quasi</a></h4>
								</div>
								<ul class="entry-meta">
									<li>10th July 2014</li>
								</ul>
							</div>
						</div>

						<div class="spost clearfix">
							<div class="entry-image">
								<a href="#" class="nobg"><img src="https://itsolutionstuff.com/upload/laravel56-crud.png" alt=""></a>
							</div>
							<div class="entry-c">
								<div class="entry-title">
									<h4><a href="#">Debitis nihil placeat, illum est nisi</a></h4>
								</div>
								<ul class="entry-meta">
									<li>10th July 2014</li>
								</ul>
							</div>
						</div>

						<div class="spost clearfix">
							<div class="entry-image">
								<a href="#" class="nobg"><img src="https://i.imgur.com/arZeVt9.png" alt=""></a>
							</div>
							<div class="entry-c">
								<div class="entry-title">
									<h4><a href="#">Debitis nihil placeat, illum est nisi</a></h4>
								</div>
								<ul class="entry-meta">
									<li>10th July 2014</li>
								</ul>
							</div>
						</div>

						<div class="spost clearfix">
							<div class="entry-image">
								<a href="#" class="nobg"><img src="https://itsolutionstuff.com/upload/laravel-5-5-crud.png" alt=""></a>
							</div>
							<div class="entry-c">
								<div class="entry-title">
									<h4><a href="#">Debitis nihil placeat, illum est nisi</a></h4>
								</div>
								<ul class="entry-meta">
									<li>10th July 2014</li>
								</ul>
							</div>
						</div>

					</div>

				</div>

				<!-- quick contact -->
				<div class="widget quick-contact-widget form-widget clearfix">

					<h4>Quick Contact</h4>
					<div class="form-result"></div>
					<form id="quick-contact-form" name="quick-contact-form" action="include/form.php" method="post" class="quick-contact-form nobottommargin">
						<div class="form-process"></div>

						<input type="text" class="required sm-form-control input-block-level" id="quick-contact-form-name" name="quick-contact-form-name" value="" placeholder="Full Name" />
						<input type="text" class="required sm-form-control email input-block-level" id="quick-contact-form-email" name="quick-contact-form-email" value="" placeholder="Email Address" />
						<textarea class="required sm-form-control input-block-level short-textarea" id="quick-contact-form-message" name="quick-contact-form-message" rows="4" cols="30" placeholder="Message"></textarea>
						<input type="text" class="hidden" id="quick-contact-form-botcheck" name="quick-contact-form-botcheck" value="" />
						<input type="hidden" name="prefix" value="quick-contact-form-">
						<button type="submit" id="quick-contact-form-submit" name="quick-contact-form-submit" class="button button-small button-3d nomargin" value="submit">Send Email</button>
					</form>

				</div>

				<!-- map -->
				<div class="widget clearfix">
					<h4>Map</h4>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.8401081815946!2d144.9537363153534!3d-37.81721397975177!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad65d4c2b349649%3A0xb6899234e561db11!2sEnvato!5e0!3m2!1sen!2sin!4v1513601296579" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
				</div>

			</div>

		</div><!-- .sidebar end -->