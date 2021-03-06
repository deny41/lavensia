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
use Session;
class bookingController extends Controller
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
    public function booking(Request $req)
    {	
    	if (Auth::User()->status == 'AKTIF') {
	    	$dt = carbon::now();

	    	$user = DB::table('users')->get();

			if (Auth::user()->role_id == 1 or Auth::user()->role_id == 2 or Auth::user()->role_id == 3) {
				$detail_intinerary  = $this->detail_intinerary->cari('md_id',$req->id);
		    	$id 				= $req->id;

		    	if (Auth::User() != null) {
		            $cart   = DB::table('d_booking')
                        ->leftjoin('m_detail_intinerary','m_detail_intinerary.md_id','=','d_booking.db_intinerary_id')
                        ->leftjoin('m_intinerary','m_intinerary.mi_id','=','m_detail_intinerary.md_intinerary_id')
                        ->where('db_users',Auth::User()->role_id)
                        ->where('db_status','Waiting List')
                        ->get();


		            $jumlah = count(DB::table('d_booking')
		                        ->where('db_users',Auth::User()->role_id)
		                        ->where('db_status','Waiting List')
		                        ->get());
		        	return view('booking.booking',compact('detail_intinerary','detil','id','cart','jumlah','user'));
		        }else{
		        	return view('booking.booking',compact('detail_intinerary','detil','id','user'));
		        }
			}else{
		    	$detail_intinerary  = $this->detail_intinerary->cari('md_id',$req->id);

		    	$id 				= $req->id;

		    	if (Auth::User() != null) {
		            $cart   = DB::table('d_booking')
                    ->leftjoin('m_detail_intinerary','m_detail_intinerary.md_id','=','d_booking.db_intinerary_id')
                    ->leftjoin('m_intinerary','m_intinerary.mi_id','=','m_detail_intinerary.md_intinerary_id')
                    ->where('db_users',Auth::User()->role_id)
                    ->where('db_status','Waiting List')
                    ->get();


		            $jumlah = count(DB::table('d_booking')
		                        ->where('db_users',Auth::User()->role_id)
		                        ->where('db_status','Waiting List')
		                        ->get());
		        	return view('booking.booking',compact('detail_intinerary','detil','id','cart','jumlah','user'));
		        }else{
		        	return view('booking.booking',compact('detail_intinerary','detil','id','user'));
		        }
			}
		}else{
			Session::flash('message','USER ANDA BELUM AKTIF');
			return redirect()->back();
		}
    }
    public function save(Request $req)
    {
        return DB::transaction(function() use ($req) {  
    		DB::beginTransaction();
    		// dd($req->all());
    		$id = $this->d_booking->max('db_id');
    		$db_total_additional = filter_var($req->total_additional_input,FILTER_SANITIZE_NUMBER_INT);
    		$db_total_room 		 = filter_var($req->total_room_input,FILTER_SANITIZE_NUMBER_INT);
    		$db_total 		 	 = $req->total_harga_input;
    		$name 				 = array_values(array_filter($req->name));
    		$passport 			 = array_values(array_filter($req->passport));
    		$exp_date 			 = array_values(array_filter($req->exp_date));
    		$issue 			 	 = array_values(array_filter($req->issue));
    		$gender 		 	 = array_values(array_filter($req->gender));
    		$room_val 		 	 = array_values(array_filter($req->room_val));
    		$date_birth 		 = array_values(array_filter($req->date_birth));
    		$place_birth 		 = array_values(array_filter($req->place_birth));
    		$reference 		 	 = array_values(array_filter($req->reference));
    		$status 		 	 = array_values(array_filter($req->status));
    		try{
    			$gambar 		 	 = array_values(array_filter($req->file('image')));
    		}catch(Exception $err){
	            return Response::json(['status'=>0,'message'=>'Check Your Photo Passport...']);

    		}
    		// HEADER
    		$bulan = Carbon::now()->format('m');
    		$tahun = Carbon::now()->format('y');
   			$index = str_pad($id, 5, '0', STR_PAD_LEFT);
   			$index = $tahun.$bulan.$index;
   			if (isset($req->agent)) {
   				$user = $req->agent;
   			}else{
   				$user = Auth::user()->id;
   			}
    		$data = array(
    						'db_id'				    	=> $id,
    						'db_kode_transaksi'	    	=> $index,
						    'db_users'					=> $user,
						    'db_name'					=> strtoupper($req->party_name),
						    'db_intinerary_id'			=> $req->id,
						    'db_telp'					=> $req->party_telephone,
						    'db_remark'					=> $req->bk_remark,
						    'db_total_additional'		=> $db_total_additional,
						    'db_total_room'				=> $db_total_room,
						    'db_total'					=> $db_total,
						    'db_total_remain'			=> $db_total,
						    'db_total_adult'			=> $req->total_adult,
						    'db_total_child'			=> $req->total_child,
						    'db_total_infant'			=> $req->total_infant,
						    'db_tax'					=> $req->tax,
						   	'db_visa'					=> $req->visa,
						   	'db_agent_com'				=> $req->agent_com,
						   	'db_tips'					=> $req->tips,
						    'created_by'				=> Auth::user()->id,
						    'updated_by'				=> Auth::user()->id,
    					 );

    		$kurang = $this->detail_intinerary->cari('md_id',$req->id);
    		$hasil  = $kurang->md_seat_remain - $req->total_adult - $req->total_child;
    		if ($hasil < 0) {
    			$sisa = $kurang->md_seat_remain - $hasil;
    			return Response::json(['status'=>0,'message'=>'Exceed Remain Pax, Remaining Pax is '.$sisa]);
    		}
    		$updt = array(
    						'md_seat_remain'			=> $hasil,
    					 );
    		$this->detail_intinerary->update($updt,'md_id',$req->id);
    		$this->d_booking->create($data);

    		// PARTY 
			for ($b=0; $b < count($name); $b++) { 
				if ($req->name != null) {
					$dt = $this->d_party_name->max_detail('dp_booking_id',$id,'dp_detail');
					try{
						$file = $gambar[$b];
					}catch(Exception $err){
						$file = null;
					}
		            if ($file != null) {

		                $tour_code = str_replace('/', '-', $req->tour_code);
		                $filename = 'booking/'.$index.'_'.$req->r_passport[$b].'_'.$id.'_'.$dt.'.'.$file->getClientOriginalExtension();

		                Storage::put($filename,file_get_contents($file));
		            }else{
	                    return Response::json(['status'=>0,'message'=>'Check Your Photo Passport...']);
	                    DB::rollBack();
		            }

		            $birth  = str_replace('/', '-', $date_birth[$b]);
		            $exp  	= str_replace('/', '-', $exp_date[$b]);
		            $birth  = explode('-', $birth);
		            $exp  	= explode('-', $exp);

		            $birth  = Carbon::createFromDate($birth[2], $birth[1], $birth[0],'00');
		            $exp	= Carbon::createFromDate($exp[2], $exp[1], $exp[0],'00');
					$data = array(	
						'dp_booking_id'		=> $id,
						'dp_detail'			=> $b+1,
						'dp_bed'			=> $req->r_bed[$b],
						'dp_name'			=> strtoupper($name[$b]),
						'dp_passport'		=> strtoupper($passport[$b]),
						'dp_exp_date'		=> $exp,
						'dp_issuing'		=> strtoupper($issue[$b]),
						'dp_gender'			=> $gender[$b],
						'dp_birth_date'		=> $birth,
						'dp_birth_place'	=> strtoupper($place_birth[$b]),
						'dp_reference'		=> strtoupper($reference[$b]),
						'dp_image'			=> $filename,
						'dp_room'			=> $room_val[$b],
						'dp_status_person'	=> $status[$b],
						'created_by'		=> Auth::user()->id,
						'updated_by'		=> Auth::user()->id,
					);

	    			$this->d_party_name->create($data);
				}
				
			}

			if ($req->a_id != null) {
				for ($b=0; $b < count($req->a_id); $b++) { 
					$dt = $this->d_additional_booking->max_detail('da_booking_id',$id,'da_detail');
					$data = array(	
						'da_booking_id'    => $id,
						'da_detail'		   => $dt,
						'da_name'		   => strtoupper($req->a_name[$b]),
						'da_additional_id' => $req->a_id[$b],
						'da_price'		   => filter_var($req->a_price[$b],FILTER_SANITIZE_NUMBER_INT),
						'created_by'	   => Auth::user()->id,
						'updated_by'	   => Auth::user()->id,
					);
	    			$this->d_additional_booking->create($data);
				}
			}
			DB::commit();
			return Response::json(['status'=>1,'id'=>$id]);
    	});
    }

    public function booking_additional(Request $req)
    {
    	$detail_intinerary = $this->detail_intinerary->cari('md_id',$req->id);
    	$data = $req->name;
    	return view('booking.additional_booking',compact('detail_intinerary','data'));
    }
    
}
