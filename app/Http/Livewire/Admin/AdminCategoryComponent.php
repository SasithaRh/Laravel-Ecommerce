<?php

namespace App\Http\Livewire\Admin;
use App\Models\Category;
use App\Models\Product;
use Livewire\Component;
use Livewire\WithPagination;
use Cart;

class AdminCategoryComponent extends Component
{
    public function deleteCategory($id)
    {
        $category= Category::find($id);
        $category->delete();

        session()->flash('message','Category has been deleted successfully');
    }
    public function render()
    {
        $categories=Category::paginate(2);
        return view('livewire.admin.admin-category-component',['categories'=>$categories])->layout('layouts.base');
    }
}
