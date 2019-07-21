@extends('front.master')
@section('header')
    @include('front.components.header')
@endsection


@section('content')
<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">
					<!-- Left Sidebar -->
					<div class="sidebar sticky-sidebar-wrap clearfix">

						<div class="sidebar-widgets-wrap">
							
							<div class="sticky-sidebar">

									<div class="widget widget_links clearfix">
										<h4 class="mb-2 ls1 uppercase t700">Android Topic Titles</h4>
										<div class="line line-xs line-home"></div>
										<ul>
											<li><a href="#" class="d-flex justify-content-between align-items-center">What is Android?</a></li>
											<li><a href="#" class="d-flex justify-content-between align-items-center">Android Intent</a></li>
											<li><a href="#" class="d-flex justify-content-between align-items-center"> Application Fundamentals</a></li>
											<li><a href="#" class="d-flex justify-content-between align-items-center">Android Studio</a></li>
											<li><a href="#" class="d-flex justify-content-between align-items-center">Android Layouts</a></li>
											<li><a href="#" class="d-flex justify-content-between align-items-center">Build a Navigation Drawer</a></li>
											<li><a href="#" class="d-flex justify-content-between align-items-center"> Android Menus</a></li>
											<li><a href="#" class="d-flex justify-content-between align-items-center">Android Styles and Themes</a></li>
											<li><a href="#" class="d-flex justify-content-between align-items-center"> Android Activities</a></li>
											<li><a href="#" class="d-flex justify-content-between align-items-center">Andriod Resources</a></li>
											<li><a href="#" class="d-flex justify-content-between align-items-center">Android Services</a></li>

										</ul>

									</div>
									<!-- popular topic -->
									<div class="widget widget_links clearfix">
										<h4 class="mb-2 ls1 uppercase t700">Popular Topics</h4>

										<ul>
											<li><a href="http://codex.wordpress.org/">IOS</a></li>
											<li><a href="http://wordpress.org/support/forum/requests-and-feedback">React Native</a></li>
											<li><a href="http://wordpress.org/extend/plugins/">Node JS</a></li>
											<li><a href="http://wordpress.org/support/">HTML</a></li>
											<li><a href="http://wordpress.org/extend/themes/">CSS</a></li>
											<li><a href="http://wordpress.org/news/">JavaScript</a></li>
											<li><a href="http://planet.wordpress.org/">MySQL</a></li>
										</ul>
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

							</div>

						</div>


					</div>
					<!-- End Left Sidebar -->

					<!-- Post Content -->
					<div class="postcontent bothsidebar nobottommargin clearfix">

						<div id="posts">
							<div class="entry-title">

								<!-- Post Single - Share
								============================================= -->
								<div class="si-share noborder clearfix">
									
									<div>
										<a href="#" class="social-icon si-borderless si-text-color si-facebook">
											<i class="icon-facebook"></i>
											<i class="icon-facebook"></i>
										</a>
										<a href="#" class="social-icon si-borderless si-text-color si-twitter">
											<i class="icon-twitter"></i>
											<i class="icon-twitter"></i>
										</a>
										<a href="#" class="social-icon si-borderless si-text-color si-linkedin">
											<i class="icon-linkedin"></i>
											<i class="icon-linkedin"></i>
										</a>
										<a href="#" class="social-icon si-borderless si-text-color si-gplus">
											<i class="icon-gplus"></i>
											<i class="icon-gplus"></i>
										</a>
										<a href="#" class="social-icon si-borderless si-text-color si-github">
											<i class="icon-github"></i>
											<i class="icon-github"></i>
										</a>
										<a href="#" class="social-icon si-borderless si-text-color si-email3">
											<i class="icon-email3"></i>
											<i class="icon-email3"></i>
										</a>
									</div>
								</div><!-- Post Single - Share End -->

								<h2>Android Intent</h2>

								<div class="entry-content notopmargin">

									<p>
										Intent ဆိုတာကတော့ Android System မယ် Data တွေ passed လုပ်တာဖြစ်ပါတယ်။ ဥပမာ Activity တစ်ခုကနေ တခြားသော Activity ကို Data ပေးတာကို ဆိုလိုတာပါ။ ပြီးတော့ Activity တစ်ခုကနေ နောက်Activity တစ်ခုကိုသွားချင်ရင်လည်း Intent နဲ့သွားရတာဖြစ်ပါတယ်။ ကျွန်တော်တို့ရဲ့ Application မယ်ဆိုရင် Activity တွေကအများကြီးရှိမှာဖြစ်ပါတယ်။ အောက် မယ်data passed တာလေးကို ဥပမာကြည့်ရအောင်။
									</p>
									<pre>
										//Origin Activity 
public class OriginActivity extends AppCompatActivity { 
@Override protected void onCreate(Bundle savedInstanceState) { 
super.onCreate(savedInstanceState); setContentView(R.layout.activity_origin); 
 // Create a new Intent object, containing DestinationActivity as target Activity.
final Intent intent = new Intent(this, DestinationActivity.class); // Add data in the form of key/value pairs to the intent object by using putExtra() 
        intent.putExtra(“yourname”, “your value");
        // Start the target Activity with the intent object
        startActivity(intent);
    }
} 
/*==========DestinationActivity =======*/
public class DestinationActivity extends AppCompatActivity {
@Override protected void onCreate(Bundle savedInstanceState) { 
super.onCreate(savedInstanceState); setContentView(R.layout.activity_destination); 
        // getIntent() returns the Intent object which was used to start this Activity
final Intent intent = getIntent(); 
final String data = intent.getStringExtra(“name that specified by sender activity”); 
} 
}
									</pre>

									<h2>Get result from Other Activity</h2>
									<p>
										နောက်တစ်ခုကတော့ တခြားသော Activity ရဲ့ result တစ်ခုကိုလည်းယူလို့ရပါတယ်။ ဥပမာ Second Activity ရဲ့ Result တစ်ခုကို ပထမ Activity ကနေလက်ခံလို့ရတယ်။ onActivityResult(int requestCode, int resultCode, Intent data) ဆိုတဲ့ Method လေးနဲ့လက်ခံပေးလို့ရပါတယ်။ First Activity ကတော့ Second Activity ရဲ့ Result တစ်ခုခုကို စောင့်မယ်လို့တော့ပြောရတယ်။ ဘယ်လိုပြောမလဲဆိုရင် startActivityForResult(Intent intent, int requestcode); ဆိုတဲ့ Method လေးနဲ့ဖြစ်ပါတယ်။ ဒါဆိုရင် Second Activity က Result ထည့်ပေးရတော့မှာပေါ့။ setResult() ဆိုတဲ့ Method လေးနဲ့ဖြစ်ပါတယ်။ အောက်မယ် ဥပမာလေးကြည့်လိုက်ရအောင်။
									</p>

									<pre>
										public class MainActivity extends Activity {
    private static final int REQUEST_CODE_EXAMPLE = 100; 
    @Override
    protected void onCreate(Bundle savedInstanceState) { 
        super.onCreate(savedInstanceState); setContentView(R.layout.activity_main); 
        final Intent intent = new Intent(this, DetailActivity.class); 
        startActivityForResult(intent, REQUEST_CODE_EXAMPLE);
    }
    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) { 
            super.onActivityResult(requestCode, resultCode, data); 
            // First we need to check if the requestCode matches the one we used.
            if(requestCode == REQUEST_CODE_EXAMPLE) {
            if(resultCode == Activity.RESULT_OK) { 
                final String result = data.getStringExtra(DetailActivity.EXTRA_DATA); 
                Toast.makeText(this, "Result: " + result, Toast.LENGTH_LONG).show();
            } else { 
                    // setResult wasn't successfully executed by DetailActivity
                    // Due to some error or flow of control. No data to retrieve.
            }
        } 
    } 
}
/*============DetailActivity.java=======*/
public class DetailActivity extends Activity {
   public static final String EXTRA_DATA = "EXTRA_DATA"; 
    @Override
    protected void onCreate(Bundle savedInstanceState) { 
            super.onCreate(savedInstanceState); 
            setContentView(R.layout.activity_detail); 
            final Button button = (Button) findViewById(R.id.button); 
            // When this button is clicked we want to return a result 
            button.setOnClickListener(new View.OnClickListener() { 
                @Override
                public void onClick(View view) { 
                    final Intent data = new Intent();
                    data.putExtra(EXTRA_DATA, "Your Result Data");
                    setResult(Activity.RESULT_OK, data); 
                    // return back to MainActivity
                    finish(); 
                } 
            }); 
        }
}
									</pre>

									<h2>How to communicate between Activities</h2>
									<p>
										ဒါကတော့ Activity တွေကြား Intent နဲ့ဘယ်လိုလုပ်သလဲဆိုတာ ဖြစ်ပါတယ်။ နောက်တစ်ခု Intent ကိုတခြားသော နေရာတွေမယ်လည်း အများကြီး အသုံးပြုပါသေးတယ်။ ဥပမာ Appကနေ URL တစ်ခုခုကို ဖွင့်ချင်တယ်ဆိုရင်လည်း အသုံးပြုပါတယ်။ အောက်မယ် Google ကို Intent သုံးပြီးဖွင့်ကြည့်ရအောင်။
									</p>
									<p>
										နောက်တစ်ခုကတော့ တခါတရံ ကျွန်တော်တို့ Activity တွေကို Clear လုပ်ချင်တဲ့အချိန်တွေ ကြုံရတက်ပါတယ်။ ဥပမာ သင့်ရဲ့ Application မယ်Login System ပါတယ်ဆိုပါစို့။ Userက Loginဝင်ပြီးတော့ MainActivity ကိုရောက်သွားတယ်။ ပြီးတော့ User က Logout လုပ်လိုက်ရင် Login Activity ကိုပြန်သွားချင်တယ်။ အဲ့ချိန်မယ် ဖွင့်ခဲ့တဲ့ Activity တွေကို clear လုပ်ဖို့လိုတယ်။ ဘာလို့လဲဆိုရင် သူက Recent List ထဲမယ်ကျန်နေခဲ့မှာဖြစ်ပါတယ်။ ဒါ့ကြောင့် User က Login ကိုပြန်ရောက်သွားပေမဲ့ MainActivity ကို Recent ကနေပြန်ဝင်လို့ရနေတာတွေ ဖြစ်တက်ပါတယ်။ ဒါ့ကြောင့် Activity တွေကို clear လုပ်ချင်ရင်တော့ အောက်မယ်ကြည့်လိုက်ရအောင်။
									</p>

									<div class="entry-image">
									<a href="#"><img src="http://tutorial.aungpyaephyo.com/images/1547707196989ZnJvbT1jbmJsb2dzJnVybD1nWnBkbUxNVlVaT0pqTTBNVE53SXpNekV6WHc4Q094OHlNd0lUTXdJekx6UldZdnhHYzE5Q2RsNW1MdVIyY2o1U2V0NXladGwyTHZvRGMwUkhh.jpg" alt="Blog Single"></a>
								</div>

								</div>
							</div><!-- .entry-title end -->
						</div>

						<div class="divider divider-center"><i class="icon-cloud"></i></div>


						<!-- Post Single - Share
						============================================= -->
						<div class="si-share noborder clearfix">
							<span>Share this Post:</span>
							<div>
								<a href="#" class="social-icon si-borderless si-text-color si-facebook">
									<i class="icon-facebook"></i>
									<i class="icon-facebook"></i>
								</a>
								<a href="#" class="social-icon si-borderless si-text-color si-twitter">
									<i class="icon-twitter"></i>
									<i class="icon-twitter"></i>
								</a>
								<a href="#" class="social-icon si-borderless si-text-color si-linkedin">
									<i class="icon-linkedin"></i>
									<i class="icon-linkedin"></i>
								</a>
								<a href="#" class="social-icon si-borderless si-text-color si-gplus">
									<i class="icon-gplus"></i>
									<i class="icon-gplus"></i>
								</a>
								<a href="#" class="social-icon si-borderless si-text-color si-github">
									<i class="icon-github"></i>
									<i class="icon-github"></i>
								</a>
								<a href="#" class="social-icon si-borderless si-text-color si-email3">
									<i class="icon-email3"></i>
									<i class="icon-email3"></i>
								</a>
							</div>
						</div><!-- Post Single - Share End -->



					</div>
					<!-- End Post COnent -->

					<!-- Right Sidebar -->
					<div class="sidebar sticky-sidebar-wrap col_last clearfix">

						<div class="sidebar-widgets-wrap">

							<div class="sticky-sidebar">

								<div class="widget widget_links clearfix ">
									<h4 class="mb-2 ls1 uppercase t700">Contents</h4>
									<div class="line line-xs line-travel"></div>
									<ul>
										<li><a href="#" class="d-flex justify-content-between align-items-center">What is Intent?</a></li>
										<li><a href="#" class="d-flex justify-content-between align-items-center">Inplicit Intent</a></li>
										<li><a href="#" class="d-flex justify-content-between align-items-center"> Explicit Intent</a></li>
										<li><a href="#" class="d-flex justify-content-between align-items-center">Get Result From Other Activity</a></li>
										<li><a href="#" class="d-flex justify-content-between align-items-center">How to communicate between Activities?</a></li>
										<li><a href="#" class="d-flex justify-content-between align-items-center">Send mail using Intent</a></li>
										<li><a href="#" class="d-flex justify-content-between align-items-center"> Share file using Intent</a></li>
										<li><a href="#" class="d-flex justify-content-between align-items-center">Call phone using Intent</a></li>
										<li><a href="#" class="d-flex justify-content-between align-items-center"> Go phone default message using Intent</a></li>
										

									</ul>
								</div>

								<div class="widget widget_links clearfix">
									<h4 class="mb-2 ls1 uppercase t700">Tag Cloud</h4>
									<div class="tagcloud">
										<a href="#">Swift</a>
										<a href="#">IOS</a>
										<a href="#">Kotlin</a>
										<a href="#">React</a>
										<a href="#">Redux</a>
										<a href="#">React Native</a>
										
									</div>
								</div>
								<!-- map -->
								<div class="widget clearfix">
									<h4>Map</h4>
									<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.8401081815946!2d144.9537363153534!3d-37.81721397975177!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad65d4c2b349649%3A0xb6899234e561db11!2sEnvato!5e0!3m2!1sen!2sin!4v1513601296579" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
								</div>


							</div>

						</div>

					</div>
					<!-- End Right Sidebar -->
				</div>

			</div>

		</section>
@endsection
@section('footer')
    @include('front.components.footer')
@endsection