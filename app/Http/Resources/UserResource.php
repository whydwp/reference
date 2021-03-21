<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    { 
        return [
            'username' => $this->username,
            'password' => $this->password,
            'full_name' => $this->full_name,
            'email' => $this->email,
            'avatar_file' => $this->avatar_file,
            'user_type_id' => $this->user_type_id,

        ]; 
    }
}
