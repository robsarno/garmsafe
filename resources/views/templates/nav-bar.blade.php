<nav class="navbar navbar-expand-sm bg-dark navbar-dark" id="navbar">
	<div class="container">
		<!-- Brand/logo -->
		<a class="navbar-brand" href="/">
			<img src="{{ asset('img/logo/Logo_Azienda.png') }}" alt="logo" style="height:70px">
		</a>
		<button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarsExample07" aria-controls="navbarsExample07"
		 aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="navbar-collapse collapse" id="navbarsExample07" style="">
			<!-- Links -->
			<ul class="navbar-nav ml-auto">
				<li class="nav-item {{ Request::is('/')?'active':'' }}">
					<a class="nav-link" href="/">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link {{ Request::is('prodotti')?'active':'' }}" href="/prodotti">Prodotti</a>
				</li>
				<li class="nav-item">
					<a class="nav-link {{ Request::is('chi-siamo')?'active':'' }}" href="/chi-siamo">Chi siamo</a>
				</li>
				<li class="nav-item">
					<a class="nav-link {{ Request::is('territorio')?'active':'' }}" href="/territorio">Territorio</a>
				</li>
				<li class="nav-item">
					<a class="nav-link {{ Request::is('statuto')?'active':'' }}" href="/statuto">Statuto</a>
				</li>
				<li class="nav-item">
					<a class="nav-link {{ Request::is('contatti')?'active':'' }}" href="/contatti">Contatti</a>
				</li>
			</ul>
		</div>
	</div>
</nav>