<?php
    $pages = array(
        array(
            "name" => "Home",
            "icon" => "fa-tachometer",
            "url" => "home.php",
            "atual" => false
            
        ),
        array(
            "name" => "Dashboard",
            "atual" => true
        )
    );
    
    $lastPage = end(array_keys($pages));
?>
<ul class="breadcrumb flex-grid col-0 is-md mg-10--bottom">
    <?php 
        foreach($pages as $key => $page):
            $active = ($page['atual'] == true ? "active" : "");
            $href = $page['url'] ? "href='" . $page['url'] . "'" : "";
    ?>
        <li class="breadcrumb-item">
            <a <?=$href?> class="breadcrumb-link <?=$active?>">
                
                <?php if(array_key_exists("icon", $page)): ?>
                    <i class="breadcrumb-text fa <?=$page['icon']?>"></i>
                <?php endif ?>
                
                <p class="breadcrumb-text">
                    <span class="breadcrumb-name">
                        <?=$page['name']?>
                    </span>
                    <?php if($key < $lastPage): ?>
                        <i class="fa fa-angle-right"></i>
                    <?php endif ?>
                </p>
            </a>
        </li>
    <?php endforeach ?>
</ul>