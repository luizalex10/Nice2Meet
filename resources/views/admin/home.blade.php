@extends('admin.partials.master')

@section('content')
    <!-- MAIN HOME -->
      <main class="main flex-grid col">
        <!-- ASIDE -->
        @include("admin.includes.aside")
        <section class="main__content home flex-grid--wrap col calign-top">
          <div class="flex-grid--row-rev--wrap col-12 calign-top">
            <!-- BREADCRUMB -->
            @include('admin.includes.breadcrumb')
            
            <!-- TITLE PAGE -->
            <h1 class="col light font-30 main-title is-sm">Dashboard</h1>
            <p class="col-12 main-message">Todas as funcionalidades administrativas em um só lugar</p>
          </div>
          <div class="flex-grid--wrap col-12">
            <!-- BOX WITH 2 -->
            <div class="flex-grid--wrap col is-lg">
              <!-- BOX INFO -->
              <div class="box-infos--first mg-20--top flex-grid col is-md">
                <div class="box-infos__icon flex-grid valign-middle col-0">
                  <i class="fa fa-user-secret"></i>
                </div>
                <div class="box-infos__content col">
                  <h3 class="box-infos__title color-default light">Administradores</h3>
                  <span class="box-infos__number strong font-20 bold">5</span>
                  
                </div>
              </div>
              <!-- /BOX INFO -->
              <!-- BOX INFO -->
              <div class="box-infos--second mg-20--top flex-grid col mg-10--left is-md">
                <div class="box-infos__icon flex-grid valign-middle col-0">
                  <i class="fa fa-black-tie"></i>
                </div>
                <div class="box-infos__content col">
                  <h3 class="box-infos__title color-default light">Empresas</h3>
                  <span class="box-infos__number strong font-20 bold">200</span>
                  
                </div>
              </div>
              <!-- /BOX INFO -->
            </div>
            <!-- /BOX WITH 2 -->
            <!-- BOX WITH 2 -->
            <div class="flex-grid--wrap col mg-10--left is-lg">
              <!-- BOX INFO -->
              <div class="box-infos--info mg-20--top flex-grid col is-md">
                <div class="box-infos__icon flex-grid valign-middle col-0">
                  <i class="fa fa-briefcase"></i>
                </div>
                <div class="box-infos__content col">
                  <h3 class="box-infos__title color-default light">Vagas</h3>
                  <span class="box-infos__number strong font-20 bold">5000000000000</span>
                  
                </div>
              </div>
              <!-- /BOX INFO -->
              <!-- BOX INFO -->
              <div class="box-infos--success mg-20--top flex-grid col mg-10--left is-md">
                <div class="box-infos__icon flex-grid valign-middle col-0">
                  <i class="fa fa-users"></i>
                </div>
                <div class="box-infos__content col">
                  <h3 class="box-infos__title color-default light">Candidatos</h3>
                  <span class="box-infos__number strong font-20 bold">500</span>
                  
                </div>
              </div>
              <!-- /BOX INFO -->
            </div>
            <!-- /BOX WITH 2 -->
          </div>
        </section>
      </main>
    <!-- /MAIN HOME -->
@endsection