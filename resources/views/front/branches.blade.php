@include('front.theme.headers')
<div class="parallax-main" id="parallax-world-of-ugg">
    <section class="parallax">
        <div class="parallax-two">
          <div class="title-alltenant">
            
            <h2> Semua Tenant</h2>
          </div>
        </div>
    </section>
</div>

<section>
  <div class="containertenant">
    <div class="row">
      <div class="col">
        <form action="" method="post">
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="Search" aria-label="Search" aria-describedby="basic-addon2">
          <div class="input-group-append">
            <button class="btn btn-outline-secondary" type="submit">Search</button>
          </div>
        </div>
        </form>
      </div>
    </div>
  </div>
</section>

<section>
  <div class="container">
    <div class="row">
    @foreach ($branch as $branchlist)
      <div class="col">
        <div class="card">
          <img src="{!! asset($branchlist->profile_image) !!}" class="Card-image-cap" alt="...">
          <div class="card-body">
            <h5 class="card-title">{{ $branchlist->name }}</h5>
            <p class="card-text">Tenant {{ $branchlist->id }}</p>
            <a href="{{URL::to('/')}}" class="btnsectenant">Choose</a>
          </div>
        </div>
      </div>
      @endforeach
    </div>
  </div>
</section>

@include('front.theme.footers')