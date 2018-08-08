<?php 
use backend\modules\kpgw\models\Pegawai;
?>
<aside class="main-sidebar">

    <section class="sidebar">

        <?php $allrequesting = backend\modules\kpgw\models\SuratTugas::requestingViewbyHRD();
              $user = Yii::$app->user->id; 
              $pegawai = Pegawai::find()->where(['user_id' => $user])->one();
              $notifwr =  backend\modules\kpgw\models\SuratTugas::statusApprovebywr();
              $notifwrcuti =  backend\modules\kpgw\models\SuratCuti::statusApprovebywr();
              $allnotif = $notifwr + $notifwrcuti;
        ?>

        <?php if($pegawai['role_id'] == 1) { ?>

        <?=dmstr\widgets\Menu::widget( 
            [
                'options' => ['class' => 'sidebar-menu'],
                'items' => [    
                    ['label' => 'Beranda', 'icon' => 'file-code-o', 'url' => ['/site/index']],
                    ['label' => 'Data Pegawai', 'icon' => 'file-code-o', 'url' => ['/kpgw/pegawai/index']],
                    
                    [
                        'label' => 'Surat Tugas',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [    
                            ['label' => 'Cek Surat Tugas', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-tugas/index'],],
                            ['label' => 'Daftar Request Surat Tugas', 'icon' => 'dashboard', 'url' => ['/kpgw/surat-tugas/surat-tugas-index'],],
                            ['label' => 'Request Surat Tugas', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-tugas/surat-tugas-add'],],
                        ],
                    ],
                    [
                        'label' => 'Surat Cuti',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [    
                            ['label' => 'Cek Surat Cuti', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-cuti/index'],],
                            ['label' => 'Daftar Request Surat Cuti', 'icon' => 'dashboard', 'url' => ['/kpgw/surat-cuti/index'],],
                            ['label' => 'Request Surat Cuti', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-cuti/surat-cuti-add'],],
                        ],
                    ],
                    [
                        'label' => 'Data Pelengkap',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [    
                            ['label' => 'Jabatan', 'icon' => 'file-code-o', 'url' => ['/kpgw/struktur-jabatan/index'],],
                            ['label' => 'Role', 'icon' => 'dashboard', 'url' => ['/kpgw/role/index'],],
                            ['label' => 'Transportasi', 'icon' => 'file-code-o', 'url' => ['/kpgw/transportasi/index'],],
                            ['label' => 'Supir', 'icon' => 'dashboard', 'url' => ['/kpgw/supir/index'],],
                            ['label' => 'Signer', 'icon' => 'file-code-o', 'url' => ['/kpgw/signer/index'],],
                            ['label' => 'Kategori Surat Tugas', 'icon' => 'dashboard', 'url' => ['/kpgw/kategori-surat-tugas/index'],],
                            ['label' => 'Kategori Surat Cuti', 'icon' => 'dashboard', 'url' => ['/kpgw/kategori-surat-cuti/index'],],
                        ],
                    ],
                    ['label' => 'Notifikasi (' .$allrequesting.'' . ')', 'icon' => 'glyphicon glyphicon-bell', 'url' => ['/kpgw/surat-tugas/surat-tugas-notifikasi']],
                    ['label' => 'Laporan Tugas', 'icon' => 'file-code-o', 'url' => ['/kpgw/laporan/index']],
                    ['label' => 'Cetak Surat Tugas', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-tugas/surat-tugas-print']],
                ],
            ]
        ) ?>

        <?php } else if ($pegawai['role_id'] == 2 || $pegawai['role_id'] == 3) { ?>

            <?=dmstr\widgets\Menu::widget( 
            [
                'options' => ['class' => 'sidebar-menu'],
                'items' => [    
                    ['label' => 'Beranda', 'icon' => 'file-code-o', 'url' => ['/site/index']],
                    
                    [
                        'label' => 'Surat Tugas',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [    
                            ['label' => 'Cek Surat Tugas', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-tugas/index'],],
                            ['label' => 'Daftar Request Surat Tugas', 'icon' => 'dashboard', 'url' => ['/kpgw/surat-tugas/surat-tugas-index-by-wr'],],
                            ['label' => 'Request Surat Tugas', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-tugas/surat-tugas-add'],],
                        ],
                    ],
                    [
                        'label' => 'Surat Cuti',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [    
                            ['label' => 'Cek Surat Cuti', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-cuti/index'],],
                            ['label' => 'Daftar Request Surat Cuti', 'icon' => 'dashboard', 'url' => ['/kpgw/surat-cuti/surat-cuti-index-by-wr'],],
                            ['label' => 'Request Surat Cuti', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-cuti/surat-cuti-add'],],
                        ],
                    ],
                    [
                        'label' => 'Notifikasi (' .$allnotif.'' . ')',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [    
                            ['label' => 'Notifikasi Surat Tugas (' .$notifwr.'' . ')', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-tugas/surat-tugas-notifikasi-by-wr'],],
                            ['label' => 'Notifikasi Surat Cuti (' .$notifwrcuti.'' . ') ', 'icon' => 'dashboard', 'url' => ['/kpgw/surat-cuti/surat-cuti-notifikasi-by-wr'],],
                        ],
                    ],
                    ['label' => 'Laporan Tugas', 'icon' => 'file-code-o', 'url' => ['/kpgw/laporan/index']],
                ],
            ]
        ) ?>

        <?php } else if ($pegawai['role_id'] == 5) { ?>

            <?=dmstr\widgets\Menu::widget( 
            [
                'options' => ['class' => 'sidebar-menu'],
                'items' => [    
                    ['label' => 'Beranda', 'icon' => 'file-code-o', 'url' => ['/site/index']],
                    
                    [
                        'label' => 'Surat Tugas',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [    
                            ['label' => 'Cek Surat Tugas', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-tugas/index'],],
                            ['label' => 'Daftar Request Surat Tugas', 'icon' => 'dashboard', 'url' => ['/kpgw/surat-tugas/surat-tugas-index-by-wr'],],
                            ['label' => 'Request Surat Tugas', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-tugas/surat-tugas-add'],],
                        ],
                    ],
                    [
                        'label' => 'Surat Cuti',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [    
                            ['label' => 'Cek Surat Cuti', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-cuti/index'],],
                            ['label' => 'Daftar Request Surat Cuti', 'icon' => 'dashboard', 'url' => ['/kpgw/surat-cuti/index'],],
                            ['label' => 'Request Surat Cuti', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-cuti/surat-cuti-add'],],
                        ],
                    ],

                    [
                        'label' => 'Notifikasi',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [    
                            ['label' => 'Notifikasi Surat Tugas (' .$notifwr.'' . ')', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-tugas/surat-tugas-notifikasi-by-wr'],],
                            ['label' => 'Notifikasi Surat Cuti', 'icon' => 'dashboard', 'url' => ['/kpgw/surat-cuti/index'],],
                        ],
                    ],
                    ['label' => 'Laporan Tugas', 'icon' => 'file-code-o', 'url' => ['/kpgw/laporan/index']],
                ],
            ]
        ) ?>

        <?php } else { ?>
            <?=dmstr\widgets\Menu::widget( 
            [
                'options' => ['class' => 'sidebar-menu'],
                'items' => [    
                    ['label' => 'Beranda', 'icon' => 'file-code-o', 'url' => ['/site/index']],
                    
                    [
                        'label' => 'Surat Tugas',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [    
                            ['label' => 'Cek Surat Tugas', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-tugas/index'],],
                            ['label' => 'Request Surat Tugas', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-tugas/surat-tugas-add'],],
                        ],
                    ],
                    [
                        'label' => 'Surat Cuti',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [    
                            ['label' => 'Cek Surat Cuti', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-cuti/index'],],
                            ['label' => 'Request Surat Cuti', 'icon' => 'file-code-o', 'url' => ['/kpgw/surat-cuti/surat-cuti-add'],],
                        ],
                    ],
                    ['label' => 'Laporan Tugas', 'icon' => 'file-code-o', 'url' => ['/kpgw/laporan/index']],
                ],
            ]
        ) ?>

        <?php }?>
    </section>

</aside>
