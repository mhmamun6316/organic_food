@extends('layouts.admin_dashboard')

@section('admin_content')

<section id="responsive-datatable">
    <div class="row">


      <div class="col-4"></div>

      <div class="col-4">
        <div class="card">
          <div class="card-header">
            <h4 class="card-title">Category Edit</h4>
          </div>
          <div class="card-body">
            <form  method="POST" action="{{ route('update.category') }}" class="form form-vertical">
                @csrf

              <input type="hidden" name="category_id" value="{{ $category->id }}">
              <div class="row">
                <div class="col-12">
                  <div class="mb-1">
                    <label class="form-label" for="first-name-icon">Category Name English</label>
                    <div class="input-group input-group-merge">
                      <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></span>
                      <input type="text" id="first-name-icon" class="form-control" name="cat_name_en" value="{{ $category->category_name_en }}">
                    </div>
                  </div>
                </div>
                <div class="col-12">
                    <div class="mb-1">
                      <label class="form-label" for="first-name-icon">Category Name Bangla</label>
                      <div class="input-group input-group-merge">
                        <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg></span>
                        <input type="text" id="first-name-icon" class="form-control" name="cat_name_bn"
                        value="{{ $category->category_name_bn }}">
                      </div>
                    </div>
                  </div>

                <div class="col-12">
                  <button type="submit" class="btn btn-primary me-1 waves-effect waves-float waves-light">Update</button>
                  <button type="reset" class="btn btn-outline-secondary waves-effect">Reset</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>

      <div class="col-4"></div>

    </div>
  </section>

@endsection