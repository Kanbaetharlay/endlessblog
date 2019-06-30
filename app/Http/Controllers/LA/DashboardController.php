<?php
/**
 * Controller generated using LaraAdmin
 * Help: http://laraadmin.com
 * LaraAdmin is open-sourced software licensed under the MIT license.
 * Developed by: Dwij IT Solutions
 * Developer Website: http://dwijitsolutions.com
 */

namespace App\Http\Controllers\LA;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Http\Request;
use Analytics;
use Spatie\Analytics\Period;
/**
 * Class DashboardController
 * @package App\Http\Controllers
 */
class DashboardController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return Response
     */
    public function index()
    {
        //retrieve visitors and pageview data for the current day and the last seven days
        $analyticsData = Analytics::fetchVisitorsAndPageViews(Period::days(7));
        //dd($analyticsData);
        foreach($analyticsData as $key=>$value)
        {
            $arr[$key]['date'] = $value['date']->toDateString();
            $arr[$key]['visitors'] = $value['visitors'];
            $arr[$key]['pageViews'] = $value['pageViews'];
        }
        //dd(json_encode($arr));
        //retrieve visitors and pageviews since the 6 months ago
       // $analyticsData = Analytics::fetchVisitorsAndPageViews(Period::months(1));
        //dd($analyticsData);
        //retrieve sessions and pageviews with yearMonth dimension since 1 year ago 
        // $analyticsData = Analytics::performQuery(
        //     Period::years(1),
        //     'ga:sessions',
        //     [
        //         'metrics' => 'ga:sessions, ga:pageviews',
        //         'dimensions' => 'ga:yearMonth'
        //     ]
        // );
      //  dd($analyticsData);
        return view('la.dashboard')->with('ga',json_encode($arr));
    }

    
}