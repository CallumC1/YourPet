<div class="fixed z-20 flex w-full h-16 bg-white drop-shadow-md text-lg font-semibold">

    <div class="flex w-full mx-auto justify-between items-center max-w-screen-2xl px-6">

        <a href="/" class="tracking-wide">
            <p class="text-2xl font-bold text-emerald-600" >YourPet</p>
            <p class="text-xs">medical experts</p>
        </a>

        <!-- Desktop Links -->
    
        <ul class="hidden lg:flex lg:gap-6">
            <li><a class="p-5 hover:underline" href="/">Home</a></li>
            <li><a class="p-5 hover:underline" href="/products/all">Products</a></li>
            <li><a class="p-5 hover:underline" href="/about">About Us</a></li>
            <li><a class="p-5 hover:underline" href="/register">Register</a></li>
        </ul>    

        <!-- Mobile -->
        <div id="mobile-menu-btn" class="lg:hidden">
            <img src="/assets/icons/menu.svg" alt="" class="w-10 h-10">
        </div>

    </div>

</div> 

<!-- Spacer for content below -->
<div class="pb-16">

</div>

<!-- Mobile Links -->

<div id="mobile-nav" class="hidden fixed top-16 left-0 bg-slate-100 w-full h-full z-20">
    <ul class="flex flex-col gap-5 pt-5">
        <li>
            <a class="flex justify-between p-5" href="/">
                <span class="text-2xl font-semibold hover:underline">Home</span>
                <img src="/assets/icons/arrow-right.svg" alt="" class="w-8 h-8">
            </a>
        </li>
        <li>
            <a class="flex justify-between p-5" href="/products/all">
                <span class="text-2xl font-semibold hover:underline">Products</span>
                <img src="/assets/icons/arrow-right.svg" alt="" class="w-8 h-8">
            </a>
        </li>
        <li>
            <a class="flex justify-between p-5" href="/about">
                <span class="text-2xl font-semibold hover:underline">About Us</span>
                <img src="/assets/icons/arrow-right.svg" alt="" class="w-8 h-8">
            </a>
        </li>
        <li>
            <a class="flex justify-between p-5" href="/register">
                <span class="text-2xl font-semibold hover:underline">Register</span>
                <img src="/assets/icons/arrow-right.svg" alt="" class="w-8 h-8">
            </a>
        </li>
    </ul>
</div>

<script>

    const mobileMenu = document.getElementById("mobile-menu-btn");
    const nav = document.getElementById("mobile-nav");

    mobileMenu.addEventListener("click", () => {
        nav.classList.toggle("hidden");
    });

</script>