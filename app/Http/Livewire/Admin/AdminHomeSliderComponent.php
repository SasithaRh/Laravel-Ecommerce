<?php

namespace App\Http\Livewire\Admin;
use App\Models\HomeSlider;
use Livewire\Component;

class AdminHomeSliderComponent extends Component
{
    public function render()
    {
        $silders=HomeSlider::all();
        return view('livewire.admin.admin-home-slider-component',['sliders'=>$silders])->layout('layouts.base');
    }
}
