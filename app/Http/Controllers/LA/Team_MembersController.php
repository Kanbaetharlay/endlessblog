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

use App\Models\Team_Member;

class Team_MembersController extends Controller
{
    public $show_action = true;
    
    /**
     * Display a listing of the Team_Members.
     *
     * @return mixed
     */
    public function index()
    {
        $module = Module::get('Team_Members');
        
        if(Module::hasAccess($module->id)) {
            return View('la.team_members.index', [
                'show_actions' => $this->show_action,
                'listing_cols' => Module::getListingColumns('Team_Members'),
                'module' => $module
            ]);
        } else {
            return redirect(config('laraadmin.adminRoute') . "/");
        }
    }
    
    /**
     * Show the form for creating a new team_member.
     *
     * @return mixed
     */
    public function create()
    {
        //
    }
    
    /**
     * Store a newly created team_member in database.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        if(Module::hasAccess("Team_Members", "create")) {
            
            $rules = Module::validateRules("Team_Members", $request);
            
            $validator = Validator::make($request->all(), $rules);
            
            if($validator->fails()) {
                return redirect()->back()->withErrors($validator)->withInput();
            }
            
            $insert_id = Module::insert("Team_Members", $request);
            
            return redirect()->route(config('laraadmin.adminRoute') . '.team_members.index');
            
        } else {
            return redirect(config('laraadmin.adminRoute') . "/");
        }
    }
    
    /**
     * Display the specified team_member.
     *
     * @param int $id team_member ID
     * @return mixed
     */
    public function show($id)
    {
        if(Module::hasAccess("Team_Members", "view")) {
            
            $team_member = Team_Member::find($id);
            if(isset($team_member->id)) {
                $module = Module::get('Team_Members');
                $module->row = $team_member;
                
                return view('la.team_members.show', [
                    'module' => $module,
                    'view_col' => $module->view_col,
                    'no_header' => true,
                    'no_padding' => "no-padding"
                ])->with('team_member', $team_member);
            } else {
                return view('errors.404', [
                    'record_id' => $id,
                    'record_name' => ucfirst("team_member"),
                ]);
            }
        } else {
            return redirect(config('laraadmin.adminRoute') . "/");
        }
    }
    
    /**
     * Show the form for editing the specified team_member.
     *
     * @param int $id team_member ID
     * @return \Illuminate\Http\RedirectResponse
     */
    public function edit($id)
    {
        if(Module::hasAccess("Team_Members", "edit")) {
            $team_member = Team_Member::find($id);
            if(isset($team_member->id)) {
                $module = Module::get('Team_Members');
                
                $module->row = $team_member;
                
                return view('la.team_members.edit', [
                    'module' => $module,
                    'view_col' => $module->view_col,
                ])->with('team_member', $team_member);
            } else {
                return view('errors.404', [
                    'record_id' => $id,
                    'record_name' => ucfirst("team_member"),
                ]);
            }
        } else {
            return redirect(config('laraadmin.adminRoute') . "/");
        }
    }
    
    /**
     * Update the specified team_member in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id team_member ID
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request, $id)
    {
        if(Module::hasAccess("Team_Members", "edit")) {
            
            $rules = Module::validateRules("Team_Members", $request, true);
            
            $validator = Validator::make($request->all(), $rules);
            
            if($validator->fails()) {
                return redirect()->back()->withErrors($validator)->withInput();;
            }
            
            $insert_id = Module::updateRow("Team_Members", $request, $id);
            
            return redirect()->route(config('laraadmin.adminRoute') . '.team_members.index');
            
        } else {
            return redirect(config('laraadmin.adminRoute') . "/");
        }
    }
    
    /**
     * Remove the specified team_member from storage.
     *
     * @param int $id team_member ID
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        if(Module::hasAccess("Team_Members", "delete")) {
            Team_Member::find($id)->delete();
            
            // Redirecting to index() method
            return redirect()->route(config('laraadmin.adminRoute') . '.team_members.index');
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
        $module = Module::get('Team_Members');
        $listing_cols = Module::getListingColumns('Team_Members');
        
        $values = DB::table('team_members')->select($listing_cols)->whereNull('deleted_at');
        $out = Datatables::of($values)->make();
        $data = $out->getData();
        
        $fields_popup = ModuleFields::getModuleFields('Team_Members');
        
        for($i = 0; $i < count($data->data); $i++) {
            for($j = 0; $j < count($listing_cols); $j++) {
                $col = $listing_cols[$j];
                if($fields_popup[$col] != null && starts_with($fields_popup[$col]->popup_vals, "@")) {
                    $data->data[$i][$j] = ModuleFields::getFieldValue($fields_popup[$col], $data->data[$i][$j]);
                }
                if($col == $module->view_col) {
                    $data->data[$i][$j] = '<a href="' . url(config('laraadmin.adminRoute') . '/team_members/' . $data->data[$i][0]) . '">' . $data->data[$i][$j] . '</a>';
                }
                // else if($col == "author") {
                //    $data->data[$i][$j];
                // }
            }
            
            if($this->show_action) {
                $output = '';
                if(Module::hasAccess("Team_Members", "edit")) {
                    $output .= '<a href="' . url(config('laraadmin.adminRoute') . '/team_members/' . $data->data[$i][0] . '/edit') . '" class="btn btn-warning btn-xs" style="display:inline;padding:2px 5px 3px 5px;"><i class="fa fa-edit"></i></a>';
                }
                
                if(Module::hasAccess("Team_Members", "delete")) {
                    $output .= Form::open(['route' => [config('laraadmin.adminRoute') . '.team_members.destroy', $data->data[$i][0]], 'method' => 'delete', 'style' => 'display:inline']);
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
