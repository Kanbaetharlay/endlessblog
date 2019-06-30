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
use Illuminate\Http\Request;
use App\Http\Requests;
use Auth;
use DB;
use Validator;
use Datatables;
use Collective\Html\FormFacade as Form;
use Dwij\Laraadmin\Models\Module;
use Dwij\Laraadmin\Models\ModuleFields;

use App\Models\Home_Banner;

class Home_BannersController extends Controller
{
    public $show_action = true;
    
    /**
     * Display a listing of the Home_Banners.
     *
     * @return mixed
     */
    public function index()
    {
        $module = Module::get('Home_Banners');
        
        if(Module::hasAccess($module->id)) {
            return View('la.home_banners.index', [
                'show_actions' => $this->show_action,
                'listing_cols' => Module::getListingColumns('Home_Banners'),
                'module' => $module
            ]);
        } else {
            return redirect(config('laraadmin.adminRoute') . "/");
        }
    }
    
    /**
     * Show the form for creating a new home_banner.
     *
     * @return mixed
     */
    public function create()
    {
        //
    }
    
    /**
     * Store a newly created home_banner in database.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        if(Module::hasAccess("Home_Banners", "create")) {
            
            $rules = Module::validateRules("Home_Banners", $request);
            
            $validator = Validator::make($request->all(), $rules);
            
            if($validator->fails()) {
                return redirect()->back()->withErrors($validator)->withInput();
            }
            
            $insert_id = Module::insert("Home_Banners", $request);
            
            return redirect()->route(config('laraadmin.adminRoute') . '.home_banners.index');
            
        } else {
            return redirect(config('laraadmin.adminRoute') . "/");
        }
    }
    
    /**
     * Display the specified home_banner.
     *
     * @param int $id home_banner ID
     * @return mixed
     */
    public function show($id)
    {
        if(Module::hasAccess("Home_Banners", "view")) {
            
            $home_banner = Home_Banner::find($id);
            if(isset($home_banner->id)) {
                $module = Module::get('Home_Banners');
                $module->row = $home_banner;
                
                return view('la.home_banners.show', [
                    'module' => $module,
                    'view_col' => $module->view_col,
                    'no_header' => true,
                    'no_padding' => "no-padding"
                ])->with('home_banner', $home_banner);
            } else {
                return view('errors.404', [
                    'record_id' => $id,
                    'record_name' => ucfirst("home_banner"),
                ]);
            }
        } else {
            return redirect(config('laraadmin.adminRoute') . "/");
        }
    }
    
    /**
     * Show the form for editing the specified home_banner.
     *
     * @param int $id home_banner ID
     * @return \Illuminate\Http\RedirectResponse
     */
    public function edit($id)
    {
        if(Module::hasAccess("Home_Banners", "edit")) {
            $home_banner = Home_Banner::find($id);
            if(isset($home_banner->id)) {
                $module = Module::get('Home_Banners');
                
                $module->row = $home_banner;
                
                return view('la.home_banners.edit', [
                    'module' => $module,
                    'view_col' => $module->view_col,
                ])->with('home_banner', $home_banner);
            } else {
                return view('errors.404', [
                    'record_id' => $id,
                    'record_name' => ucfirst("home_banner"),
                ]);
            }
        } else {
            return redirect(config('laraadmin.adminRoute') . "/");
        }
    }
    
    /**
     * Update the specified home_banner in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id home_banner ID
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request, $id)
    {
        if(Module::hasAccess("Home_Banners", "edit")) {
            
            $rules = Module::validateRules("Home_Banners", $request, true);
            
            $validator = Validator::make($request->all(), $rules);
            
            if($validator->fails()) {
                return redirect()->back()->withErrors($validator)->withInput();;
            }
            
            $insert_id = Module::updateRow("Home_Banners", $request, $id);
            
            return redirect()->route(config('laraadmin.adminRoute') . '.home_banners.index');
            
        } else {
            return redirect(config('laraadmin.adminRoute') . "/");
        }
    }
    
    /**
     * Remove the specified home_banner from storage.
     *
     * @param int $id home_banner ID
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        if(Module::hasAccess("Home_Banners", "delete")) {
            Home_Banner::find($id)->delete();
            
            // Redirecting to index() method
            return redirect()->route(config('laraadmin.adminRoute') . '.home_banners.index');
        } else {
            return redirect(config('laraadmin.adminRoute') . "/");
        }
    }
    
    /**
     * Server side Datatable fetch via Ajax
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function dtajax(Request $request)
    {
        $module = Module::get('Home_Banners');
        $listing_cols = Module::getListingColumns('Home_Banners');
        
        $values = DB::table('home_banners')->select($listing_cols)->whereNull('deleted_at');
        $out = Datatables::of($values)->make();
        $data = $out->getData();
        
        $fields_popup = ModuleFields::getModuleFields('Home_Banners');
        
        for($i = 0; $i < count($data->data); $i++) {
            for($j = 0; $j < count($listing_cols); $j++) {
                $col = $listing_cols[$j];
                if($fields_popup[$col] != null && starts_with($fields_popup[$col]->popup_vals, "@")) {
                    $data->data[$i][$j] = ModuleFields::getFieldValue($fields_popup[$col], $data->data[$i][$j]);
                }
                if($col == $module->view_col) {
                    $data->data[$i][$j] = '<a href="' . url(config('laraadmin.adminRoute') . '/home_banners/' . $data->data[$i][0]) . '">' . $data->data[$i][$j] . '</a>';
                }
                // else if($col == "author") {
                //    $data->data[$i][$j];
                // }
            }
            
            if($this->show_action) {
                $output = '';
                if(Module::hasAccess("Home_Banners", "edit")) {
                    $output .= '<a href="' . url(config('laraadmin.adminRoute') . '/home_banners/' . $data->data[$i][0] . '/edit') . '" class="btn btn-warning btn-xs" style="display:inline;padding:2px 5px 3px 5px;"><i class="fa fa-edit"></i></a>';
                }
                
                if(Module::hasAccess("Home_Banners", "delete")) {
                    $output .= Form::open(['route' => [config('laraadmin.adminRoute') . '.home_banners.destroy', $data->data[$i][0]], 'method' => 'delete', 'style' => 'display:inline']);
                    $output .= ' <button class="btn btn-danger btn-xs" type="submit"><i class="fa fa-times"></i></button>';
                    $output .= Form::close();
                }
                $data->data[$i][] = (string)$output;
            }
        }
        $out->setData($data);
        return $out;
    }
}
