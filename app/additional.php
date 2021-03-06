<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class additional extends Model
{
	protected $table = 'm_additional';
	protected $primaryKey = 'ma_id';
	const CREATED_AT = 'ma_created_at';
	const UPDATED_AT = 'ma_updated_at';

	protected $fillable = ['ma_id','ma_name','ma_image','ma_desc','ma_price','ma_created_at','ma_updated_at'];

	public function intinerarys()
	{
	    return $this->belongsToMany('App\intinerary','m_additional_intinerary','intinerary_mi_id','additional_ma_id');
	}
}


