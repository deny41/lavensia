
@extends('layouts_frontend_2._main')  


@section('extra_style')

<style type="text/css">
.about-content h2 {
      color: #555555 !important;
      font-weight: 700 !important;
}
.about-content h3 {
      color: #555555 !important;
      font-weight: 700 !important;
}
#tour{
    color: 
}
.left{
    float: left;
}
hr{
    margin-top: 0.2rem !important;
    margin-bottom: -1.1rem !important;
    border: 0 !important;
    border-top: 1px solid rgba(36, 36, 36, 0.36) !important;
}
table{
  color: #848484 !important;
}
.location-map table {
  font-size: 11.5px;
}
.book-a-table-widget{
  background-color: transparent !important;
}
.opening-hours-widget {
  padding: 20px;
}
</style>
@endsection

@section('content')

 <div class="breadcumb-area height-700 bg-img bg-overlay" style="background-image: url({{  asset('storage/app/'.$data[0]->mi_image)  }} )">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <div class="map-ratings-review-area d-flex">
                            <a href="#">Detail Booking</a>
                            <a href="#">{{ $data[0]->db_kode_transaksi }}</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Breadcumb Area End ***** -->
    <!-- ***** Single Listing Area Start ***** -->
    <section class="dorne-single-listing-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <!-- Single Listing Content -->
                <div class="about-content text-center">
                        <h2>{{ $data[0]->mi_name }}</h2>
                </div>

                <div class="col-12 col-lg-8">
                    <div class="single-listing-content">
                        <div class="single-listing-nav">
                            <nav>
                                <ul id="listingNav">
                                    <li class="active"><a href="#overview">Itinerrary info</a></li>
                                    <li><a href="#menu">Detail Book</a></li>
                                    {{-- <li><a href="#review">Reviews</a></li> --}}
                                    <li><a href="#lomap">Passenger</a></li>
                                </ul>
                            </nav>
                        </div>

                        <div class="overview-content mt-50" id="overview">
                            <div class="responsive">
                              <table width="100%" class="table table-striped"> 
                                  <tr>
                                      <td width="20px" align="left">Itinerary </td>
                                      <td width="70px">: </td>
                                      <td align="left">{{ $data[0]->md_nota }}</td>
                                  </tr>
                                  <tr>
                                      <td align="left">Flight</td>
                                      <td>: </td>
                                      <td align="left">{{ $data[0]->mi_by }}</td>
                                  </tr>
                                  <tr>
                                      <td align="left">Highlight</td>
                                      <td>: </td>
                                      <td align="left">{{ $data[0]->mi_highlight }}</td>
                                  </tr>
                                  <tr>
                                      <td align="left">Periode</td>
                                      <td>: </td>
                                      <td align="left">{{ date('d F y',strtotime($data[0]->md_start)) }}  -  {{ date('d F y',strtotime($data[0]->md_end)) }}</td>
                                  </tr>
                              </table>

                              
                            </div>
                        </div>

                        <div class="listing-menu-area mt-100" id="menu">
                            <div class="about-content text-center">
                                    <h3>DETAIL BOOK</h3>
                            </div>
                            <br>
                            <div class="table-responsive">
                            <h5>Book info</h5>
                            <table width="100%" class="table table-striped"> 
                                <tr>
                                    <td align="left">Transaksi</td>
                                    <td>: </td>
                                    <td align="left" >{{ $data[0]->db_kode_transaksi }}</td>
                                    
                                    <td align="left">Name</td>
                                    <td>: </td>
                                    <td align="left">{{ $data[0]->db_name }}</td>
                                </tr>
                                <tr>
                                  <td align="left">Status</td>
                                    <td>: </td>
                                  <td align="left" >

                                        @if ($data[0]->db_status == 'Waiting List')
                                            <span class="label label-warning"> {{ $data[0]->db_status }}</span>
                                        @elseif ($data[0]->db_status == 'Holding Confirm')
                                            <span class="label label-success"> {{ $data[0]->db_status }}</span>
                                        @elseif ($data[0]->db_status == 'Canceled')
                                            <span class="label label-danger"> {{ $data[0]->db_status }}</span>
                                        @else
                                            <span class="label label-info"> {{ $data[0]->db_status }}</span>
                                        @endif
                                    </td>
                                    <td align="left">Book By</td>
                                    <td>: </td>
                                    <td align="left">{{ $data[0]->bookby }}</td>

                                    
                                </tr>
                                <tr>
                                  <td align="left">Tlp</td>
                                    <td >: </td>
                                    <td  align="left">{{ $data[0]->db_telp }}</td>
                                    
                                    <td align="left">Handle By</td>
                                    <td>: </td>
                                    <td align="left">{{ $data[0]->handle }}</td>
                                </tr>
                                <tr>
                                    <td valign="top" align="left">Remark</td>
                                    <td valign="top" >: </td>
                                    <td colspan="4" valign="top"  align="left" >{{ $data[0]->db_remark }}</td>
                                </tr>
                              </table>
                              <table width="100%" class="table table-striped">
                                <tr>
                                    <td align="left">Adult</td>
                                    <td>: </td>
                                    <td align="right"><b>{{ number_format($data[0]->db_total_adult,'0','.','')}}</b></td>
                                    <td align="left">Child</td>
                                    <td>: </td>
                                    <td align="right"><b>{{ number_format($data[0]->db_total_child,0,'','.')}}</b></td>
                                    <td align="left">Infant</td>
                                    <td>: </td>
                                    <td align="right"><b>{{ number_format($data[0]->db_total_infant,0,'','.')}}</b></td>
                                </tr>
                              </table>

                              <h5>Price</h5>

                              <table width="100%" class="table table-striped"> 
                                <tr>
                                    @php
                                        $adult = 0;
                                        $child = 0;
                                        $infant = 0;
                                        $cwb = 0;
                                        foreach ($data as $i => $d) {
                                            if($d->dp_status_person == 'adult'){
                                                $adult += $d->md_adult_price;
                                            }elseif($d->dp_status_person == 'child' and $d->dp_bed == 'doubletwin&cwb'){
                                                $child += $d->md_child_price;
                                            }elseif($d->dp_status_person == 'infant'){
                                                $infant += $d->md_infant_price;
                                            }elseif($d->dp_status_person == 'child' and $d->dp_bed == 'doubletwin&cnb'){
                                                $cwb += $d->md_child_w_price;
                                            }
                                        }
                                    @endphp
                                    <td align="left">Adult</td>
                                    <td>: </td>
                                    <td align="right" colspan="2">{{ number_format($adult,0,'','.')}}</td>
                                    <td align="left">Child</td>
                                    <td>: </td>
                                    <td align="right" colspan="3">{{ number_format($child,0,'','.')}}</td>
                                </tr>
                                <tr>
                                    <td align="left">Infant</td>
                                    <td>: </td>
                                    <td align="right" colspan="2">{{ number_format($infant,0,'','.')}}</td>
                                    <td align="left">CwB</td>
                                    <td>: </td>
                                    <td align="right" colspan="3">{{ number_format($cwb,0,'','.')}}</td>
                                </tr>
                                <tr>
                                    <td align="left">Add Price</td>
                                    <td>: </td>
                                    <td align="right" colspan="2">{{ number_format($data[0]->db_total_additional,0,'','.') }}</td>
                                    
                                    <td align="left">Tips</td>
                                    <td>: </td>
                                    <td align="right" colspan="3">{{ number_format($data[0]->db_tips,0,'','.')}}</td>
                                </tr>
                                <tr>
                                    <td align="left">Visa</td>
                                    <td>: </td>
                                    <td align="right" colspan="2">{{ number_format($data[0]->db_visa,0,'','.')}}</td>
                                    <td align="left">Tax</td>
                                    <td>: </td>
                                    <td align="right" colspan="3">{{ number_format($data[0]->db_tax,0,'','.')}}</td>
                                </tr>
                                <tr>
                                    <td align="left">Total Price</td>
                                    <td>: </td>
                                    <td align="right" colspan="7">Rp. {{ number_format($data[0]->db_total+$data[0]->db_agent_com,0,'','.') }}</td>
                                </tr>
                                <tr>
                                    <td align="left">Agent Com</td>
                                    <td>: </td>
                                    <td align="right" colspan="7">Rp. {{ number_format($data[0]->db_agent_com,0,'','.')}}</td>
                                </tr>
                                <tr>
                                    <td align="left">Total Price</td>
                                    <td>: </td>
                                    <td align="right" colspan="7"><b>Rp. {{ number_format($data[0]->db_total,0,'','.') }}</b></td>
                                </tr>
                                <tr>
                                    <td align="left">Remain Price</td>
                                    <td>: </td>
                                    <td align="right" colspan="7"><b>Rp. {{ number_format($data[0]->db_total_remain,0,'','.') }}</b></td>
                                </tr>
                                
                            </table>
                            </div>
                        </div>
                        <div class="location-on-map mt-50">
                            <h4>PAYMENT HISTORY</h4>
                            <table class="table table-bordered table-striped">
                                <thead>
                                    <th>No</th>
                                    <th>Account Name</th>
                                    <th>Bank Name</th>
                                    <th>Date</th>
                                    <th>Nominal</th>
                                    <th>Proofment</th>
                                </thead>
                                <tbody>
                                    @php
                                        $index = 0;
                                    @endphp
                                    @foreach ($payment->payment as $i => $p)
                                        @foreach ($p->detail_history->sortByDesc('dhd_tanggal') as $i1 => $p1)
                                            <tr>
                                                <td>{{ $index+1 }}</td>
                                                <td>{{ $p1->dhd_nama_rekening }}</td>
                                                <td>{{ $p1->dhd_bank }}</td>
                                                <td>{{ number_format($p1->dhd_nominal,0,'','.') }}</td>
                                                <td>{{ carbon\carbon::parse($p1->dhd_tanggal)->format('d/m/Y') }}</td>
                                                <td><img src="{{ asset('storage/app') }}/{{ $p1->dhd_image }}"></td>
                                            </tr>
                                            @php
                                                $index++;
                                            @endphp
                                        @endforeach
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        <div class="location-on-map mt-50" id="lomap">
                            <h4>Detail Passenger</h4>
                            <div class="location-map">
                               @foreach ($fam as $i1 => $f)
                                    @if ($f->dp_bed == 'single')
                                        <p>SINGLE</p>
                                    @elseif($f->dp_bed == 'twin')
                                        <p>TWIN</p>
                                    @elseif($f->dp_bed == 'double')
                                        <p>DOUBLE</p>
                                    @elseif($f->dp_bed == 'triple')
                                        <p>TRIPLE</p>
                                    @elseif($f->dp_bed == 'doubletwin&cnb')
                                        <p>DOUBLE/TWIN CHILD NO BED</p>
                                    @elseif($f->dp_bed == 'doubletwin&cwb')
                                        <p>DOUBLE/TWIN CHILD WITH BED</p>
                                    @endif
                                    @foreach ($simple_table->party_name as $i => $e)
                                        @if ($e->dp_room == $f->dp_room)
                                            <div class="col-sm-12">
                                                <div class="col-sm-4">
                                                    <img src="{{ asset('storage/app/'.$e->dp_image) }}" width="250px" height="170px">
                                                </div>
                                                <div class="col-sm-8">
                                                  <div class="table-responsive">
                                                    <table class="table table-striped table-bordered" width="100%">
                                                        <tr>
                                                            <th align="left" width="10%">Nama</th>
                                                            <td width="25%">: <b>{{ $e->dp_name }}</b></td>
                                                            <td width="10%">Gender</td>
                                                            <td width="25%">: {{ $e->dp_gender }}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Passport </th>
                                                            <td>: {{ $e->dp_passport }}</td>
                                                            <td>Date of Birth</td>
                                                            <td>: {{ $e->dp_birth_date }}</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Expired Date </th>
                                                            <td>: {{ $e->dp_exp_date }}</td>
                                                            <td>Place of Birth</td>
                                                            <td>: {{ $e->dp_birth_place }}</td>
                                                        </tr>
                                                        <tr>
                                                            <th {{-- style="border-bottom: 1px solid #ddd;"--}}>Issuing </th> 
                                                            <td {{-- style="border-bottom: 1px solid #ddd;" --}}>: {{ $e->dp_issuing }}</td>
                                                            <td {{-- style="border-bottom: 1px solid #ddd;" --}}>Remark</td>
                                                            <td {{-- style="border-bottom: 1px solid #ddd;" --}}>: {{ $e->dp_reference }}</td>
                                                        </tr>
                                                    </table>
                                                    </div>
                                                </div>
                                            </div>
                                        @endif
                                    @endforeach
                                @endforeach
                            </div>
                        </div>

                    </div>
                </div>

                <!-- Listing Sidebar -->
                <div class="col-12 col-md-8 col-lg-4">
                    <div class="listing-sidebar">

                        <!-- Listing Verify -->
                        @if ($data[0]->db_status == 'Waiting List')
                            
                        @elseif ($data[0]->db_status == 'Holding Confirm')
                            <div class="listing-verify">
                                <a href="#" class="btn dorne-btn w-100"><i class="fa fa-check pr-3"></i> Verified Listing</a>
                            </div>
                        @elseif ($data[0]->db_status == 'Canceled')
                            
                        @else
                            <div class="listing-verify">
                                <a href="#" class="btn dorne-btn w-100"><i class="fa fa-check pr-3"></i> Verified Listing</a>
                            </div>
                        @endif
                        

                        <!-- Book A Table Widget -->
                        <div class=" mt-50">
                                <img class="img-responsive" src="{{  asset('storage/app/'.$data[0]->mi_image)  }}" width="300px" height="400px" alt="">
                        </div>

                        <!-- Opening Hours Widget -->
                        <div class="opening-hours-widget mt-50">
                            <h6>More Information</h6>
                            <ul class="opening-hours">
                                {{-- <li> --}}
                                    {{-- <p>ITINERARY</p> --}}
                                    {{-- <p><button class="btn btn-small btn-book download_itin" id="pdf" data-id="{{ $data[0]->mi_id }}" ><b><i class="fa fa-cloud-download"></i> Download</b></button></p> --}}
                                {{-- </li> --}}
                                <li>
                                    <p>PROFILE CUSTOMER</p>
                                    <p><button class="btn btn-small btn-danger download_pdf" id="pdf" data-id="{{ $data[0]->db_intinerary_id }}" ><b><i class="fa fa-cloud-download"></i> Download</b></button></p>
                                </li>
                                <li>
                                    <p>HAL PER</p>
                                    <p><button class="btn btn-small btn-primary download_md_tata_tertib" id="pdf" data-id="{{ $data[0]->mi_id }}" ><b><i class="fa fa-cloud-download"></i> Download</b></button></p>
                                </li>
                                <li>
                                    <p>FINAL CONFIRMATION</p>
                                    <p><button class="btn btn-small btn-info download_final" id="pdf" data-id="{{ $data[0]->mi_id }}" ><b><i class="fa fa-cloud-download"></i> Download</b></button></p>
                                </li>
                                <li>
                                    <p>INVOICE</p>
                                    {{-- @if ($data[0]->db_total_remain == 0) --}}
                                       <p><button class="btn btn-small btn-success download_invoice" id="pdf" data-id="{{ $data[0]->db_id }}" ><b><i class="fa fa-cloud-download"></i> Download</b></button></p>
                                    {{-- @else --}}
                                       {{-- <p><button class="btn btn-small btn-default" id="pdf" ><b><i class="fa fa-cloud-download"></i> Download</b></button></p> --}}
                                    {{-- @endif                                         --}}
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection


@section('extra_scripts')
<script type="text/javascript">
    
$('.download_itin').click(function(){
        var ini = $(this).data('id');
        window.open(baseUrl+'/booking/bookingdetail_download_itin/'+ini);
    })

    $('.download_pdf').click(function(){
        var ini = $(this).data('id');
        window.open(baseUrl+'/booking/bookingdetail_download_pdf/'+ini);
    })

    $('.download_md_tata_tertib').click(function(){
        var ini = $(this).data('id');
        window.open(baseUrl+'/booking/bookingdetail_download_md_tata_tertib/'+ini);
    })

    $('.download_final').click(function(){
        var ini = $(this).data('id');
        window.open(baseUrl+'/booking/bookingdetail_download_final/'+ini);
    })

    $('.download_invoice').click(function(){
        var ini = $(this).data('id');
        window.open(baseUrl+'/booking/bookingdetail_download_invoice/'+ini);
    })
   
            
    
    
</script>
@endsection
