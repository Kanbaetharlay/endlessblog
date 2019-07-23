<?php
/**
 * Model generated using LaraAdmin
 * Help: http://laraadmin.com
 * LaraAdmin is open-sourced software licensed under the MIT license.
 * Developed by: Dwij IT Solutions
 * Developer Website: http://dwijitsolutions.com
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Tutorial;
use App\Models\Upload;

class Tutorial extends Model
{
    use SoftDeletes;
    
    protected $table = 'tutorials';
    
    protected $hidden = [
    
    ];
    
    protected $guarded = [];
    
    protected $dates = ['deleted_at'];
    

    public function image()
    {
        return $this->belongsTo('App\Models\Upload');
    }

    public function subcategory()
    {
        return $this->belongsTo('App\Models\Subcategory','sub_category');
    }

    public function uploadimage($image)
    {
        $image_decode = json_decode($image);
        $img1 = null;
        if(count($image_decode) > 0){
            foreach ($image_decode as $key => $value) {
                $img_upload = Upload::find($value);
                $img1 = 'files/'.$img_upload->hash.'/'.$img_upload->name;
            }
        }
        return $img1;
    }
}
