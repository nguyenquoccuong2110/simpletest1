<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Session;
use Hash;
use Auth;
use App\ProductType;
use App\Product;
use App\ChiTiet;
use App\Customer;
use App\Bill;
use App\BillDetail;
use App\Cart;

class PageController extends Controller
{
    public function getIndex(){
    	return view('page.trangchu');
    }

    public function getChebien(){
    	return view('page.chebienthucpham');
    }

     public function getChitiet(Request $req){
     	$sanpham = Product::where('id_sp',$req->id_sp)->first();
        $chitiet = ChiTiet::where('id_sp',$req->id_sp)->first();             
    	return view('page.chitietlovisong',compact('sanpham','chitiet'));
    }
    

     public function getNganhhang($type){
     	$sp_theoloai = Product::where('id_type',$type)->get();
        $sp_khac = Product::where('id_type','<>',$type)->paginate(3);
        $loai = Product::where('id_type',$type)->get();
        $loai_sp = ProductType::where('id_type',$type)->first();
    	return view('page.nganhhangcon',compact('sp_theoloai','sp_khac','loai','loai_sp'));
    }

     public function getNganhhangdien(){
    	return view('page.nganhhangdiengiadung');
    }

     public function getTintuc(){
    	return view('page.tintuc');
    }

     public function getChitiettintuc(){
    	return view('page.chitiettintuc');
    }

     public function getGioithieu(){
    	return view('page.gioithieu');
    }

     public function getDangnhap(){
    	return view('page.dangnhap');
    }

    public function postDangnhap(Request $req){
        $this->validate($req, [
            'email' => 'required|email',
            'password' => 'required|min:6|max:20'

        ],[
            'email.required' => 'Vui lòng nhập email',
            'email.email' => 'Email không đúng định dạng',
            'password.required' => 'Vui lòng nhập mật khẩu',
            'password.min' => 'Mật khẩu ít nhất 6 kí tự',
            'password.max' => 'Mật khẩu không quá 20 kí tự'

        ]);
        $credentials = array('email' => $req->email, 'password' => $req->password );
        if(Auth::attempt($credentials)){
            return redirect()->back()->with(['flag'=>'success','message'=>'Đăng nhập thành công']);
        }
        else
        {
            return redirect()->back()->with(['flag'=>'danger','message'=>'Đăng nhập thành công']);
            
        }        

    }

    public function getDangky(){
    	return view('page.dangky');
    }

    public function postDangky(Request $request){
        $this->validate($request,
            [
                'name'=>'required|max:225',
                'email'=>'required|email|max:225|unique:users,email',                
                'username'=>'required|max:225|unique:users,username',
                'password' => 'required|min:6|max:20',
                're_password' => 'required|same:password'
                            
            ],[
                'name.required'=>'Vui lòng nhập tên',
                'name.max'=>'Vượt quá ký tự giới hạn',
                'email.required'=>' Vui lòng nhập Email',
                'email.email'=>'Vui lòng nhập đúng định dạng Email',
                'email.unique'=>'Email đã tồn tại',
                'phone.required'=>'Vui lòng số điện thoại',
                'username.require'=>'Vui lòng nhập tên đăng nhập',
                'username.unique'=>'Tên đăng nhập đã tồn tại ',
                'password.required' => 'Vui lòng nhập mật khẩu',
                're_password' => 'Mật khẩu không giống nhau',
                'password.min' => 'Mật khẩu ít nhất 6 ký tự'
            ]);
        $user = new User();
        $user->username = $request->username; 
        $user->password = Hash::make($request->password);
        $user->name = $request->name; 
        $user->email = $request->email;
        $user->phone = $request->phone;           
        $user->datebirth = $request->datebirth;
        $user->monthbirth = $request->monthbirth;
        $user->yearbirth = $request->yearbirth;
        $user->city = $request->city;       
        $user->address = $request->address;                
        $user-> save();
        return redirect()->back()->with('thanhcong','Tạo tài khoản thành công');

    }

    public function getSosanh(){
    	return view('page.sosanh');
    }

    public function getAddtoCart(Request $req,$id)
    {
        $product = Product::find($id);
        $oldCart = Session('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->add($product,$id);
        $req->session()->put('cart',$cart);
        return redirect()->back();

    }
    public function getDelItemCart($id){
        $oldCart = Session::has('cart')? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->removeItem($id);
        if(count($cart->items) >0){
            Session::put('cart',$cart);
        }
        else
        {
            Session::forget('cart');
        }
        
        return redirect()->back();
    }

     public function getThongtingiohang(){
        
    	return view('page.thongtingiohang');
    }
    
      public function postThongtingiohang(Request $req){ 

        $cart = Session::get('cart');       
        $customer = new Customer;
        $customer->name = $req->name;
        $customer->gender = $req->gender;
        $customer->email = $req->email;
        $customer->address = $req->address;
        $customer->phone_number = $req->phone;
        $customer->note = $req->notes;
        $customer-> save();

        $bill = new Bill;
        $bill->id_customer = $customer->id_bill;
        $bill->date_order = date('Y-m-d');
        $bill->total = $cart->totalPrice;
        $bill->payment = $req->payment_method;
        $bill->note = $req->notes;
        $bill-> save();

        foreach ($cart->items as $key => $value) {
            $bill_detail = new BillDetail;
            $bill_detail->id_bill = $bill->id_ctbill;
            $bill_detail->id_sp = $key;
            $bill_detail->quantity =$value['qty'];
            $bill_detail->unit_price = $value['price']/$value['qty'];
            $bill_detail-> save();
        }

        Session::forget('cart');
        return redirect()->back()->with('thongbao','Đặt hàng thành công');

    }
    

     public function getHoantatgiohangtaisieuthi(){
    	return view('page.hoantatgiohangtaisieuthi');
    }

     public function getHoantatgiohangtainha(){
    	return view('page.hoantatgiohangtainha');
    }
}
