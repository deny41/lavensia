<?php

namespace App\Http\Controllers\booking;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\TestRepo;
use App\intinerary;
use App\category;
use App\schedule;
use App\detail_intinerary;
use App\User;
use App\additional;
use App\m_additional_intinerary;
use DB;
use carbon\Carbon;
use Auth;
use Response;
use File;
use Storage;
use Yajra\Datatables\Datatables;
use App\d_additional_booking;
use App\d_booking;
use App\d_party_name;
use Exception;
class booking_allController extends Controller
{
	protected $intinerary;
	protected $detail_intinerary;
	protected $d_booking;
	protected $d_party_name;
	protected $d_additional_booking;
	protected $additional;

	public function __construct(detail_intinerary $detail_intinerary,
								intinerary $intinerary,
								d_booking $d_booking,
								d_party_name $d_party_name,
								d_additional_booking $d_additional_booking,
								additional $additional)
	{
		$this->detail_intinerary 	= new TestRepo($detail_intinerary);
        $this->intinerary 		 	= new TestRepo($intinerary);
        $this->d_booking 		 	= new TestRepo($d_booking);
        $this->d_party_name 	 	= new TestRepo($d_party_name);
        $this->d_additional_booking = new TestRepo($d_additional_booking);
        $this->additional 			= new TestRepo($additional);
        
	}
    public function booking_all(Request $req)
    {


		return view('booking_all.booking_all');
    	
    }
    public function datatable_booking_all(Request $req)
    {
           
    	$data = $this->d_booking->all();

        $data = collect($data);
        return Datatables::of($data)
			        ->addColumn('aksi', function ($data) {
		        	$a = '';
		        	$b = '';
		        	$c = '';
		        	$d = '';


		        			$a = '<div class="btn-group">
					                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
					                    <i class="material-icons">settings</i>
					                    Manage <span class="caret"></span>
					                </button>
					                <ul class="dropdown-menu" style="padding:0px">';
		        			if ($data->db_handle_by == null) {
		                    	
			                	$b = '<li>
				                        <a onclick="handle(\''.$data->db_id.'\')" class="waves-effect waves-block bg-teal" style="color:#607D8B;">
				                            <i class="material-icons">touch_app</i>
				                            Handle
				                        </a>
				                     </li>';
		                    }

		                    if ($data->db_handle_by != null) {
		                    	if ($data->db_handle_by == Auth::User()->id) {
		                    		$c = 	'<li>
						                        <a href="'.url('/booking/edit').'/'.$data->db_id.'" class=" waves-effect waves-block" style="color:#607D8B">
						                            <i class="material-icons">edit</i>
						                            Edit
						                        </a>
						                    </li>
						                    <li>
						                        <a onclick="deleting(\''.$data->db_id.'\')" class="waves-effect waves-block" style="color:#607D8B">
						                            <i class="material-icons">delete</i>
						                            Delete
						                        </a>
						                    </li>';
		                    	}
		                    }
			                    
			                $d = '</ul>
			           			 </div>';

			            return $a.$b.$c.$d;
			        })->addColumn('handle_name', function ($data) {
			        	if ($data->db_handle_by != null) {
			        		return $data->handle->name;
			        	}else{
			        		return '-';
			        	}
			        })->addColumn('book_by', function ($data) {
			        	if ($data->user != null) {
			        		return $data->user->name;
			        	}else{
			        		return '-';
			        	}
			        })
			        ->rawColumns(['aksi','handle_name'])
			        ->addIndexColumn()
			        ->make(true);
    }

    public function booking_handling($id)
    {
    	$booking = $this->d_booking->cari('db_id',$id);


    	$detail_intinerary  = $this->detail_intinerary->cari('md_id',$booking->db_intinerary_id);
    	$count = [];

    	$count = $booking->party_name->groupBy('dp_room')->toArray();
    	$count = array_values($count);
    	$id    = $booking->db_intinerary_id;
		$add_name = [];
		$additional_book = $booking->additional_book->groupBy('da_additional_id');

		for ($z=0; $z < count($detail_intinerary->intinerary->add); $z++) { 
			$data = $detail_intinerary->intinerary->add[$z]->ma_id;

			for ($i=0; $i < count($additional_book[$data]); $i++) { 
				$add_name[$data][$i] = $additional_book[$data][$i]['da_name'];
			}    	
		}
		return view('booking_all.booking_approve',compact('detail_intinerary','booking','id','count','add_name'));

    }


    public function update_book(request $req)
    {
    	return DB::transaction(function() use ($req) {  
    		DB::beginTransaction();
    		$db_total_additional = filter_var($req->total_additional_input,FILTER_SANITIZE_NUMBER_INT);
    		$db_total_room 		 = filter_var($req->total_room_input,FILTER_SANITIZE_NUMBER_INT);
    		$db_total 		 	 = $db_total_additional+$db_total_room;
    		$book 		   = $this->d_booking->cari('db_id',$req->booking_id);
    		$total_pax 	   = $req->total_adult + $req->total_child;
    		$total_pax_old = $book->db_total_adult + $book->db_total_child;
    		// HEADER

    		if ($req->payment == 'dp') {
    			$status = 'Hold';
    		}else{
    			$status = 'Holding Confirm';
    		}

    		$file = $req->file('pdf');
    		if ($file == null) {
		        return Response::json(['status'=>0,'message'=>'Please Upload PDF']);
			}

			$filename = 'booking/'.$book->db_kode_transaksi.'_'.'DETAIL_TOUR'.'_'.$req->booking_id.'.'.$file->getClientOriginalExtension();
			
        	Storage::put($filename,file_get_contents($file));

    		$data = array(
						    'db_name'					=> strtoupper($req->party_name),
						    'db_intinerary_id'			=> $req->id,
						    'db_pdf'					=> $filename,
						    'db_telp'					=> $req->party_telephone,
						    'db_remark'					=> $req->bk_remark,
						    'db_total_additional'		=> $db_total_additional,
						    'db_total_room'				=> $db_total_room,
						    'db_total'					=> $db_total,
						    'db_handle_by'				=> Auth::user()->id,
						    'db_status'					=> $status,
						    'db_total_remain'			=> $db_total,
						    'db_total_adult'			=> $req->total_adult,
						    'db_total_child'			=> $req->total_child,
						    'db_total_infant'			=> $req->total_infant,
						    'updated_by'				=> Auth::user()->id,
    					 );

    		$itinerary = $this->detail_intinerary->cari('md_id',$req->id);
    		$hasil  = $itinerary->md_seat_remain + $total_pax_old - $total_pax;
    		$updt   = array(
    						'md_seat_remain'			=> $hasil,
    					   );
    		$this->detail_intinerary->update($updt,'md_id',$req->id);

    		$this->d_booking->update($data,'db_id',$book->db_id);

    		// PARTY 
			for ($b=0; $b < count($req->name); $b++) { 
				if ($req->name[$b] != null) {
					$dt = $this->d_party_name->max_detail('dp_booking_id',$req->booking_id,'dp_detail');
					if ($req->dp_detail[$b] != null) {

						if (isset($req->file('image')[$b])) {
							$file = $req->file('image')[$b];
							$filename = 'booking/'.$book->db_kode_transaksi.'_'.$req->name[$b].'_'.$req->booking_id.'_'.$dt.'.'.$file->getClientOriginalExtension();
		                	Storage::put($filename,file_get_contents($file));
						}else{
							$filename =  $this->d_party_name->show_detail_one('dp_booking_id',$req->booking_id,'dp_detail',$req->dp_detail[$b])->dp_image;
						}
							
					

						
						$data = array(	
							'dp_bed'		=> $req->dp_bed[$b],
							'dp_name'		=> strtoupper($req->name[$b]),
							'dp_passport'	=> $req->passport[$b],
							'dp_exp_date'	=> carbon::parse(str_replace('/','-',$req->exp_date[$b]))->format('Y-m-d'),
							'dp_issuing'	=> strtoupper($req->issue[$b]),
							'dp_gender'		=> $req->gender[$b],
							'dp_birth_date'	=> carbon::parse(str_replace('/','-',$req->date_birth[$b]))->format('Y-m-d'),
							'dp_birth_place'=> strtoupper($req->place_birth[$b]),
							'dp_reference'	=> strtoupper($req->reference[$b]),
							'dp_image'		=> $filename,
							'dp_room'		=> $req->room_val[$b],
							'updated_by'	=> Auth::user()->id,
						);

		    			$this->d_party_name->update_detail($data,'dp_booking_id',$req->booking_id,'dp_detail',$req->dp_detail[$b]);
					}else{
						try{
							$file = $req->file('image')[$b];
						}catch(Exception $err){
							$file = null;
						}

						if ($file != null) {
			                $filename = 'booking/'.$book->db_kode_transaksi.'_'.$req->name[$b].'_'.$req->booking_id.'_'.$dt.'.'.$file->getClientOriginalExtension();

			                Storage::put($filename,file_get_contents($file));
			            }else{
		                    return Response::json(['status'=>0,'message'=>'Check Your Photo Passport...']);
		                    DB::rollBack();
			            }


						$data = array(	
							'dp_booking_id'	=> $req->booking_id,
							'dp_detail'		=> $dt,
							'dp_bed'		=> $req->dp_bed[$b],
							'dp_name'		=> strtoupper($req->name[$b]),
							'dp_passport'	=> $req->passport[$b],
							'dp_exp_date'	=> carbon::parse(str_replace('/','-',$req->exp_date[$b]))->format('Y-m-d'),
							'dp_issuing'	=> strtoupper($req->issue[$b]),
							'dp_gender'		=> $req->gender[$b],
							'dp_birth_date'	=> carbon::parse(str_replace('/','-',$req->date_birth[$b]))->format('Y-m-d'),
							'dp_birth_place'=> strtoupper($req->place_birth[$b]),
							'dp_reference'	=> strtoupper($req->reference[$b]),
							'dp_image'		=> $filename,
							'dp_room'		=> $req->room_val[$b],
							'created_by'	=> Auth::user()->id,
							'updated_by'	=> Auth::user()->id,
						);

		    			$this->d_party_name->create($data);
					}          
				}
			}

			if ($req->a_id != null) {
				$dt = $this->d_additional_booking->delete('da_booking_id',$req->booking_id);
				for ($b=0; $b < count($req->a_id); $b++) { 
					$dt = $this->d_additional_booking->max_detail('da_booking_id',$req->booking_id,'da_detail');
					$data = array(	
						'da_booking_id'    => $req->booking_id,
						'da_detail'		   => $dt,
						'da_name'		   => strtoupper($req->a_name[$b]),
						'da_additional_id' => $req->a_id[$b],
						'da_price'		   => filter_var($req->a_price[$b],FILTER_SANITIZE_NUMBER_INT),
						'updated_by'	   => Auth::user()->id,
					);
	    			$this->d_additional_booking->create($data);
				}
			}

			DB::commit();
			return Response::json(['status'=>1,'id'=>$req->booking_id]);
    	});
    }

    public function edit_booking($id)
    {
    	$booking = $this->d_booking->cari('db_id',$id);


    	$detail_intinerary  = $this->detail_intinerary->cari('md_id',$booking->db_intinerary_id);
    	$count = [];

    	$count = $booking->party_name->groupBy('dp_room')->toArray();
    	$count = array_values($count);
    	$id    = $booking->db_intinerary_id;
		$add_name = [];
		$additional_book = $booking->additional_book->groupBy('da_additional_id');

		for ($z=0; $z < count($detail_intinerary->intinerary->add); $z++) { 
			$data = $detail_intinerary->intinerary->add[$z]->ma_id;

			for ($i=0; $i < count($additional_book[$data]); $i++) { 
				$add_name[$data][$i] = $additional_book[$data][$i]['da_name'];
			}    	
		}
		return view('booking_all.booking_edit',compact('detail_intinerary','booking','id','count','add_name'));
    }

    public function update_book_edit(request $req)
    {
    	return DB::transaction(function() use ($req) {  
    		DB::beginTransaction();
    		$db_total_additional = filter_var($req->total_additional_input,FILTER_SANITIZE_NUMBER_INT);
    		$db_total_room 		 = filter_var($req->total_room_input,FILTER_SANITIZE_NUMBER_INT);
    		$db_total 		 	 = $db_total_additional+$db_total_room;
    		$book 		   = $this->d_booking->cari('db_id',$req->booking_id);
    		$total_pax 	   = $req->total_adult + $req->total_child;
    		$total_pax_old = $book->db_total_adult + $book->db_total_child;
    		// HEADER


    		$file = $req->file('pdf');
    		if ($file != null) {
		        $filename = 'booking/'.$book->db_kode_transaksi.'_'.'DETAIL_TOUR'.'_'.$req->booking_id.'.'.$file->getClientOriginalExtension();
			
        		Storage::put($filename,file_get_contents($file));
			}else{
				$filename = $book->db_pdf;
			}

			

    		$data = array(
						    'db_name'					=> strtoupper($req->party_name),
						    'db_intinerary_id'			=> $req->id,
						    'db_pdf'					=> $filename,
						    'db_telp'					=> $req->party_telephone,
						    'db_remark'					=> $req->bk_remark,
						    'db_total_additional'		=> $db_total_additional,
						    'db_total_room'				=> $db_total_room,
						    'db_total'					=> $db_total,
						    'db_total_remain'			=> $db_total,
						    'db_total_adult'			=> $req->total_adult,
						    'db_total_child'			=> $req->total_child,
						    'db_total_infant'			=> $req->total_infant,
						    'updated_by'				=> Auth::user()->id,
    					 );

    		$itinerary = $this->detail_intinerary->cari('md_id',$req->id);
    		$hasil  = $itinerary->md_seat_remain + $total_pax_old - $total_pax;
    		$updt   = array(
    						'md_seat_remain'			=> $hasil,
    					   );
    		$this->detail_intinerary->update($updt,'md_id',$req->id);

    		$this->d_booking->update($data,'db_id',$book->db_id);

    		// PARTY 
			for ($b=0; $b < count($req->name); $b++) { 
				if ($req->name[$b] != null) {
					$dt = $this->d_party_name->max_detail('dp_booking_id',$req->booking_id,'dp_detail');
					if ($req->dp_detail[$b] != null) {

						if (isset($req->file('image')[$b])) {
							$file = $req->file('image')[$b];
							$filename = 'booking/'.$book->db_kode_transaksi.'_'.$req->name[$b].'_'.$req->booking_id.'_'.$dt.'.'.$file->getClientOriginalExtension();
		                	Storage::put($filename,file_get_contents($file));
						}else{
							$filename =  $this->d_party_name->show_detail_one('dp_booking_id',$req->booking_id,'dp_detail',$req->dp_detail[$b])->dp_image;
						}
							
					

						
						$data = array(	
							'dp_bed'		=> $req->dp_bed[$b],
							'dp_name'		=> strtoupper($req->name[$b]),
							'dp_passport'	=> $req->passport[$b],
							'dp_exp_date'	=> carbon::parse(str_replace('/','-',$req->exp_date[$b]))->format('Y-m-d'),
							'dp_issuing'	=> strtoupper($req->issue[$b]),
							'dp_gender'		=> $req->gender[$b],
							'dp_birth_date'	=> carbon::parse(str_replace('/','-',$req->date_birth[$b]))->format('Y-m-d'),
							'dp_birth_place'=> strtoupper($req->place_birth[$b]),
							'dp_reference'	=> strtoupper($req->reference[$b]),
							'dp_image'		=> $filename,
							'dp_room'		=> $req->room_val[$b],
							'updated_by'	=> Auth::user()->id,
						);

		    			$this->d_party_name->update_detail($data,'dp_booking_id',$req->booking_id,'dp_detail',$req->dp_detail[$b]);
					}else{
						try{
							$file = $req->file('image')[$b];
						}catch(Exception $err){
							$file = null;
						}

						if ($file != null) {
			                $filename = 'booking/'.$book->db_kode_transaksi.'_'.$req->name[$b].'_'.$req->booking_id.'_'.$dt.'.'.$file->getClientOriginalExtension();

			                Storage::put($filename,file_get_contents($file));
			            }else{
		                    return Response::json(['status'=>0,'message'=>'Check Your Photo Passport...']);
		                    DB::rollBack();
			            }


						$data = array(	
							'dp_booking_id'	=> $req->booking_id,
							'dp_detail'		=> $dt,
							'dp_bed'		=> $req->dp_bed[$b],
							'dp_name'		=> strtoupper($req->name[$b]),
							'dp_passport'	=> $req->passport[$b],
							'dp_exp_date'	=> carbon::parse(str_replace('/','-',$req->exp_date[$b]))->format('Y-m-d'),
							'dp_issuing'	=> strtoupper($req->issue[$b]),
							'dp_gender'		=> $req->gender[$b],
							'dp_birth_date'	=> carbon::parse(str_replace('/','-',$req->date_birth[$b]))->format('Y-m-d'),
							'dp_birth_place'=> strtoupper($req->place_birth[$b]),
							'dp_reference'	=> strtoupper($req->reference[$b]),
							'dp_image'		=> $filename,
							'dp_room'		=> $req->room_val[$b],
							'created_by'	=> Auth::user()->id,
							'updated_by'	=> Auth::user()->id,
						);

		    			$this->d_party_name->create($data);
					}          
				}
			}

			if ($req->a_id != null) {
				$dt = $this->d_additional_booking->delete('da_booking_id',$req->booking_id);
				for ($b=0; $b < count($req->a_id); $b++) { 
					$dt = $this->d_additional_booking->max_detail('da_booking_id',$req->booking_id,'da_detail');
					$data = array(	
						'da_booking_id'    => $req->booking_id,
						'da_detail'		   => $dt,
						'da_name'		   => strtoupper($req->a_name[$b]),
						'da_additional_id' => $req->a_id[$b],
						'da_price'		   => filter_var($req->a_price[$b],FILTER_SANITIZE_NUMBER_INT),
						'updated_by'	   => Auth::user()->id,
					);
	    			$this->d_additional_booking->create($data);
				}
			}

			DB::commit();
			return Response::json(['status'=>1,'id'=>$req->booking_id]);
    	});
    }
    
}

